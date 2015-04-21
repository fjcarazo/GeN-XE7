unit UFAnulaReimp;

// *******************************************************************
//  Proceso de Anulación y Reimpresión de facturas
//
//  Modificaciones
//
//  21/9/2003  Se le elimina la generación de la nota de credito
//             cuando se anula una factura y se agregan las siguietes
//             verificaciones:
//              a) no anular si ya hay pagos realizados
//              b) no anular si la factura es de un periodo anterior
//             Se agrega además que cuando anula, tambien ponga los
//             montos de la factura en cero para que no afecte los
//             reportes.
//             Además se modificó para que al anular se elimine el
//             de la tabla "VentaItem" el detalle de la factura, para
//             que no afecte los reportes.
//             Henry Sanchez
//
// *******************************************************************

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, ExtCtrls, DataModule, IBCustomDataSet,
  IBQuery;

type
  TFAnulaReimp = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label2: TLabel;
    cbTipo: TComboBox;
    BitBtn2: TBitBtn;
    IntEdit1: TEdit;
    Tabla: TIBQuery;
    Q: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnulaReimp: TFAnulaReimp;
  Tipo : Char;
  TipoNom : String;

implementation

uses BuscaFactura;

{$R *.dfm}

procedure TFAnulaReimp.BitBtn1Click(Sender: TObject);
var Balance, PagosRec, BalanceTotal, BalanceAnterior, MontoSinAplicar, MontoAplicado, Total: double;
    NombCliente, fecha, Cliente, SinAplicar : string;
    Numtrans, OrdTrans : Integer;

begin
   If cbTipo.ItemIndex = 0 then
   begin
      Tipo:= 'F';
      TipoNom := 'Factura';
   end
   else begin
           Tipo := 'C';
           TipoNom := 'Consignación';
   end;

// Verificar que la factura Exista y que no esté anulada
   Tabla.SQL.Text := 'Select CODIGO, ANULADA, FECHA From "Venta" Where CODIGO = '+IntEdit1.Text+' and LETRA = '+QuotedStr(Tipo);
   Tabla.Open;
   IF Tabla.RecordCount = 0 then
   begin
      MessageDlg(TipoNom+' no existe.',mtError,[mbOK],0);
      Tabla.Close;
      Exit;
   end;
   if Tabla.Fields[1].AsBoolean then
   begin
      MessageDlg(TipoNom+' ya está anulada.',mtError,[mbOK],0);
      Tabla.Close;
      Exit;
   end;
   ShortDateFormat := 'mm';
   If (DateToStr(Now) <> DateToStr(Tabla.Fields[2].AsDateTime)) AND (Tipo = 'F') then
   begin
      MessageDlg(TipoNom+' no se puede anular por ser de un periodo anterior',mtError,[mbOK],0);

      Tabla.Close;
      Exit;
   end;
   Tabla.Close;
   if MessageDlg('¿Está seguro que desea anular la '+TipoNom+' '+IntEdit1.Text+'?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
           Tabla.Close;

         // Marcar la Factura como anulada y poner los saldos en cero
              Tabla.SQL.Text := 'Update "Venta" set ANULADA = ''SI'' where CODIGO = '+IntEdit1.Text;
              Tabla.ExecSQL;

         // Actualizar la cantidad disponible en la tabla de Articulos
              Q.SQL.Text := 'SELECT ARICULO, CANTIAD FROM "VentaItem" WHERE VENTA = '+IntEdit1.Text+' and Tipo = '+QuotedStr(Tipo);
              Q.Open;
              While not Q.Eof do
              begin
                 Tabla.SQL.Text := 'Update "Articulo" Set DISPONIBLE = DISPONIBLE + '+Q.Fields[1].AsString+' Where '+
                                   'CODIGO = '+Q.Fields[0].AsString;
                 Tabla.ExecSQL;
                 Q.Next;
              end;
              Q.Close;

          // Borrar los Items de la factura de la tabla "VentaItem"
             Tabla.SQL.Text := 'DELETE FROM "VentaItem" '+
                               'WHERE ((("VentaItem".CODIGO)='+IntEdit1.Text+') AND (("VentaItem".Secuencia)=0) AND (("VentaItem".Tipo)='+QuotedStr(Tipo)+'));';
             Tabla.ExecSQL;


          // Anular la factura en CxC y generar la nota de crédito si es factura
              If Tipo = 'F' then
              begin
                // Obtiene el balance y el monto pagado de la factura
                Tabla.SQL.Text := 'Select Balance, PagosRec, CodCliente, Total from CXCobrar WHERE CodTransac = '+IntEdit1.Text;
                Tabla.Open;
                // Verificar que la factura entro a cuentas por cobrar, si no entro, no procesar las actualizaciones en cxc
                If Tabla.RecordCount > 0 then
                Begin
                   Balance  := Tabla.Fields[0].AsFloat;
                   PagosRec := Tabla.Fields[1].AsFloat;
                   Cliente  := Tabla.Fields[2].AsString;
                   Total    := Tabla.Fields[3].AsFloat;
                   Tabla.Close;

                   //Marcar la factura como pagada y anulada
                   Tabla.SQL.Text := 'Update CxCobrar set PagosRec = Balance, Motivo = ''Anulada'' where CodTransac = '+IntEdit1.Text;
                   Tabla.ExecSQL;

                   //Calcula el siguiente numero de transacción
                   Tabla.SQL.Text := 'SELECT Max(CxCobrar.CodTransac) AS MaxOfCodTransac '+
                                     'FROM CxCobrar '+
                                     'GROUP BY CxCobrar.Secuencia, CxCobrar.TipoTransac '+
                                     'HAVING ((CxCobrar.Secuencia=0) AND (CxCobrar.TipoTransac="NC"))';
                   Tabla.Active := True;
                   If Tabla.RecordCount = 0 then NumTrans:=1
                   else NumTrans := Tabla.Fields[0].AsInteger+1;
                   Tabla.Close;

                   //Calcula el siguiente numero de OrdTrans
                   Tabla.SQL.Text := 'SELECT Max([OrdTrans]) AS Expr1 '+
                                     'FROM CxCobrar;';
                   Tabla.Active := True;
                   If Tabla.RecordCount = 0 then OrdTrans:=1
                   else OrdTrans := Tabla.Fields[0].AsInteger+1;
                   Tabla.Close;

                   //Calcula la fecha de Transaccion
                   ShortDateFormat := 'yyyy-mm-dd';
                   Fecha := DateToStr(Now);
                   ShortDateFormat := 'dd/mm/yyyy';

                   //Calcula el saldo anterior
                   Tabla.SQL.Text := 'Select BalanceTotal From CxCobrar where CodCliente = '+Cliente+
                                     ' Order By OrdTrans;';
                   Tabla.Open;
                   IF Tabla.RecordCount = 0 then BalanceAnterior := 0
                   else
                   begin
                      Tabla.Last;
                      BalanceAnterior := Tabla.Fields[0].AsFloat;
                   end;
                   Tabla.Close;
                   BalanceTotal := BalanceAnterior - Total;
                   MontoSinAplicar := Total + PagosRec - Balance;
                   MontoAplicado := Total - MontoSinAplicar;
                   If MontoSinAplicar = 0 then SinAplicar := 'False'
                   else SinAplicar := 'True';

                   //Insertar la nota de credito
                   Tabla.SQL.Text := 'INSERT INTO CxCobrar ( CodTransac, Secuencia, TipoTransac, OrdTrans, FechaTransac, CodCliente, Balance, BalanceTotal, BalanceAnterior, SinAplicar, MontoSinAplicar, Motivo ) '+
                                     'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntToStr(OrdTrans)+', '+QuotedStr(Fecha)+', '+Cliente+', '+QuotedStr(FloatToStr(-Total))+', '+QuotedStr(FloatToStr(BalanceTotal))+', '+QuotedStr(FloatToStr(BalanceAnterior))+', '+SinAplicar+', '+QuotedStr(FloatToStr(MontoSinAplicar))+', '+QuotedStr('Anulación de factura '+IntEdit1.Text)+' )';
                   Tabla.ExecSQL;
                   //Inserta el detalle de la nota de crédito
                   Tabla.SQL.Text := 'INSERT INTO CxCDetalle ( CodTransac, Secuencia, TipoTransac, Documento, Monto ) '+
                                     'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntEdit1.Text+', '+QuotedStr(FloatToStr(MontoAplicado))+' )';
                   Tabla.ExecSQL;
                   // Genera e imprime Nota de Credito
                   Tabla.SQL.Text := 'Select NombreCliente from Clientes Where CodCliente = '+cliente;
                   Tabla.Open;
                   NombCliente:= Tabla.Fields[0].AsString;
                   
                   // Insertar en la Cuenta Caja
                   Tabla.SQL.Text := 'Insert Into CuentaCaja (Detalle, Haber, Fecha, Hora) Values'+
                   ' ('+QuotedStr('Efectivo')+', '+(FloatToStr(Total))+', '+QuotedStr(DateToStr(Date))+', '+QuotedStr(TimeToStr(Time))+')';
                   Tabla.ExecSQL;
                end;
                Tabla.Close;
              end;
          // Completa la Transaccion
              DM.AC1.CommitTrans;
              MessageDlg('La '+TipoNom+' '+IntEdit1.Text+' ha sido anulada.'#13'Las partes retornaron al inventario',mtConfirmation,[mbOK],0)

           except
             on E:Exception do
             begin
                DM.AC1.RollbackTrans;
                MessageDlg('No fue posible completar la transacción, por favor contacte al administrador',mtError,[mbOK],0);
             end;
           end;//try
        end;
   Close;
end;

procedure TFAnulaReimp.BitBtn4Click(Sender: TObject);
begin
   BuscaFacturaForm:=TBuscaFacturaForm.Create(self);
   try
      BuscaFacturaForm.ShowModal;
   finally
      //If Not Cancela then
      IntEdit1.Text := BuscaFacturaForm.Codigo;
      BuscaFacturaForm.Free;
   end;
end;

procedure TFAnulaReimp.BitBtn2Click(Sender: TObject);
var Balance, PagosRec, BalanceTotal, BalanceAnterior, MontoSinAplicar, MontoAplicado, Total: double;
    NombCliente, fecha, Cliente, SinAplicar : string;
    Numtrans, OrdTrans : Integer;

begin
   If cbTipo.ItemIndex = 0 then
   begin
      Tipo:= 'F';
      TipoNom := 'Factura';
   end
   else begin
           Tipo := 'C';
           TipoNom := 'Consignación';
   end;

// Verificar que la factura Exista y que no esté anulada
   Tabla.SQL.Text := 'Select CodFactura, Anulada, Fecha From Factura Where CodFactura = '+IntEdit1.Text+' and Tipo = '+QuotedStr(Tipo);
   Tabla.Open;
   IF Tabla.RecordCount = 0 then
   begin
      MessageDlg(TipoNom+' no existe.',mtError,[mbOK],0);
      Tabla.Close;
      Exit;
   end;
   if Tabla.Fields[1].AsBoolean then
   begin
{      MessageDlg(TipoNom+' ya está anulada.',mtError,[mbOK],0);
      Tabla.Close;
      Exit;}
   end;
   ShortDateFormat := 'mm';
   If (DateToStr(Now) <> DateToStr(Tabla.Fields[2].AsDateTime)) AND (Tipo = 'F') then
   begin
      MessageDlg(TipoNom+' no se puede anular por ser de un periodo anterior',mtError,[mbOK],0);
      ShortDateFormat := 'dd/mm/yyyy';
      Tabla.Close;
      Exit;
   end;
   ShortDateFormat := 'dd/mm/yyyy';
   Tabla.Close;
   If Tipo = 'F' then
   begin
      Tabla.SQL.Text := 'SELECT CxCobrar.PagosRec '+
                        'FROM CxCobrar '+
                        'WHERE (((CxCobrar.CodTransac)= '+IntEdit1.Text+') AND ((CxCobrar.Secuencia)=0) AND ((CxCobrar.TipoTransac)="FA")) ';
      Tabla.Open;
      If Tabla.Fields[0].AsInteger <> 0 then
      begin
         MessageDlg(TipoNom+' no se puede anular debido a que ya hay pagos realizados.',mtError,[mbOK],0);
         Tabla.Close;
         Exit;
      end;
   end;
   if MessageDlg('¿Está seguro que desea eliminar la '+TipoNom+' '+IntEdit1.Text+'?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
           Tabla.Close;
         //Iniciar la Transaccion
           DM.AC1.BeginTrans;
           try

         // Marcar la Factura como anulada y poner los saldos en cero
              Tabla.SQL.Text := 'Update Factura set Anulada = True, MntEnvio = 0, MntSubTotal = 0, MntImpuesto = 0, MntTotal = 0, MntDescuento = 0, '+
                                'MntContado = 0, MntCheque = 0, MntTarjeta = 0, MntOtros = 0, Saldo = 0, Pagado = 0 where CodFactura = '+IntEdit1.Text;
              Tabla.ExecSQL;

         // Poner las series en estado "bodega"
              If Tipo = 'F' then
              begin
                 Tabla.SQL.Text := 'Update Series Set Estado = ''Bodega'' Where '+
                                   'NumFactura = '+IntEdit1.Text+' and estado = ''Facturado'''
              end
              else begin
                 Tabla.SQL.Text := 'Update Series Set Estado = ''Bodega'' Where '+
                                   'NumFactura = '+IntEdit1.Text+' and estado = ''Consignac'''
               end;
              Tabla.ExecSQL;

         // Actualizar la estación en la tabla de OrdenProdItem

              Tabla.SQL.Text := 'Update OrdenProdItem Set Estacion = ''Est04'' Where '+
                                'NumSerie in (Select Serie From "VentaItem" where CodFactura = '+IntEdit1.Text+' and Tipo = '+QuotedStr(Tipo)+')';
              Tabla.ExecSQL;

         // Actualizar la cantidad disponible en la tabla de Articulos
              Q.SQL.Text := 'SELECT CodParte, Cantidad FROM "VentaItem" WHERE CodFactura = '+IntEdit1.Text+' and Tipo = '+QuotedStr(Tipo);
              Q.Open;
              While not Q.Eof do
              begin
                 Tabla.SQL.Text := 'Update Articulos Set Disponible = Disponible + '+Q.Fields[1].AsString+' Where '+
                                   'CodParte = '+Q.Fields[0].AsString;
                 Tabla.ExecSQL;
                 Q.Next;
              end;
              Q.Close;

          // Borrar los Items de la factura de la tabla "VentaItem"
             Tabla.SQL.Text := 'DELETE FROM "VentaItem" '+
                               'WHERE ((("VentaItem".CodFactura)='+IntEdit1.Text+') AND (("VentaItem".Secuencia)=0) AND (("VentaItem".Tipo)='+QuotedStr(Tipo)+'));';
             Tabla.ExecSQL;


          // Anular la factura en CxC y generar la nota de crédito si es factura
              If Tipo = 'F' then
              begin
                // Obtiene el balance y el monto pagado de la factura
                Tabla.SQL.Text := 'Select Balance, PagosRec, CodCliente, Total from CXCobrar WHERE CodTransac = '+IntEdit1.Text;
                Tabla.Open;
                // Verificar que la factura entro a cuentas por cobrar, si no entro, no procesar las actualizaciones en cxc
                If Tabla.RecordCount > 0 then
                Begin
                   Balance  := Tabla.Fields[0].AsFloat;
                   PagosRec := Tabla.Fields[1].AsFloat;
                   Cliente  := Tabla.Fields[2].AsString;
                   Total    := Tabla.Fields[3].AsFloat;
                   Tabla.Close;

          // Borrar la factura 
             Tabla.SQL.Text := 'DELETE FROM Factura '+
            'WHERE CodFactura='+IntEdit1.Text;
             Tabla.ExecSQL;

                   //Calcula el siguiente numero de transacción
                   Tabla.SQL.Text := 'SELECT Max(CxCobrar.CodTransac) AS MaxOfCodTransac '+
                                     'FROM CxCobrar '+
                                     'GROUP BY CxCobrar.Secuencia, CxCobrar.TipoTransac '+
                                     'HAVING ((CxCobrar.Secuencia=0) AND (CxCobrar.TipoTransac="NC"))';
                   Tabla.Active := True;
                   If Tabla.RecordCount = 0 then NumTrans:=1
                   else NumTrans := Tabla.Fields[0].AsInteger+1;
                   Tabla.Close;

                   //Calcula el siguiente numero de OrdTrans
                   Tabla.SQL.Text := 'SELECT Max([OrdTrans]) AS Expr1 '+
                                     'FROM CxCobrar;';
                   Tabla.Active := True;
                   If Tabla.RecordCount = 0 then OrdTrans:=1
                   else OrdTrans := Tabla.Fields[0].AsInteger+1;
                   Tabla.Close;

                   //Calcula la fecha de Transaccion
                   ShortDateFormat := 'yyyy-mm-dd';
                   Fecha := DateToStr(Now);
                   ShortDateFormat := 'dd/mm/yyyy';

                   //Calcula el saldo anterior
                   Tabla.SQL.Text := 'Select BalanceTotal From CxCobrar where CodCliente = '+Cliente+
                                     ' Order By OrdTrans;';
                   Tabla.Open;
                   IF Tabla.RecordCount = 0 then BalanceAnterior := 0
                   else
                   begin
                      Tabla.Last;
                      BalanceAnterior := Tabla.Fields[0].AsFloat;
                   end;
                   Tabla.Close;
                   BalanceTotal := BalanceAnterior - Total;
                   MontoSinAplicar := Total + PagosRec - Balance;
                   MontoAplicado := Total - MontoSinAplicar;
                   If MontoSinAplicar = 0 then SinAplicar := 'False'
                   else SinAplicar := 'True';

                   //Insertar la nota de credito
                   Tabla.SQL.Text := 'INSERT INTO CxCobrar ( CodTransac, Secuencia, TipoTransac, OrdTrans, FechaTransac, CodCliente, Balance, BalanceTotal, BalanceAnterior, SinAplicar, MontoSinAplicar, Motivo ) '+
                                     'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntToStr(OrdTrans)+', '+QuotedStr(Fecha)+', '+Cliente+', '+QuotedStr(FloatToStr(-Total))+', '+QuotedStr(FloatToStr(BalanceTotal))+', '+QuotedStr(FloatToStr(BalanceAnterior))+', '+SinAplicar+', '+QuotedStr(FloatToStr(MontoSinAplicar))+', '+QuotedStr('Anulación de factura '+IntEdit1.Text)+' )';
                   Tabla.ExecSQL;
                   //Inserta el detalle de la nota de crédito
                   Tabla.SQL.Text := 'INSERT INTO CxCDetalle ( CodTransac, Secuencia, TipoTransac, Documento, Monto ) '+
                                     'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntEdit1.Text+', '+QuotedStr(FloatToStr(MontoAplicado))+' )';
                   Tabla.ExecSQL;
                   // Genera e imprime Nota de Credito
                   Tabla.SQL.Text := 'Select NombreCliente from Clientes Where CodCliente = '+cliente;
                   Tabla.Open;
                   NombCliente:= Tabla.Fields[0].AsString;
                end;
                Tabla.Close;
              end;
          // Completa la Transaccion
              DM.AC1.CommitTrans;
              MessageDlg('La '+TipoNom+' '+IntEdit1.Text+' ha sido eliminada.'#13'Las partes retornaron al inventario',mtConfirmation,[mbOK],0)

           except
             on E:Exception do
             begin
                DM.AC1.RollbackTrans;
                MessageDlg('No fue posible completar la transacción, por favor contacte al administrador',mtError,[mbOK],0);
             end;
           end;//try
        end;
   Close;
end;

procedure TFAnulaReimp.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

end.
