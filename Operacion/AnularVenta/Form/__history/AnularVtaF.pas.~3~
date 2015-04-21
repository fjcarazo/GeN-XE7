//******************************************************************************
//* DeGsoft GeN                                                                *
//* ===========                                                                *
//* GeN(tm) : ERP Software (http://www.degsoft.com.ar/sistemas/GeN)            *
//* Copyright (c) 2002-2011 by the Degsoft                                     *
//* For more information visit: http://www.degsoft.com.ar                      *
//* This program is free software. You can redistribute it and/or modify       *
//* it under the terms of the GNU General Public License as published by       *
//* the Free Software Foundation; either version 3 of the License.             *
//******************************************************************************

unit AnularVtaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ExtCtrls, DataModule, IBCustomDataSet, IBQuery, OperacionDM;

type
  TFAnulaReimp = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    buscarBitBtn: TBitBtn;
    BitBtn2: TBitBtn;
    nroEdit: TEdit;
    Tabla: TIBQuery;
    Q: TIBQuery;
    LetraLabel: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure buscarBitBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
begin
OperacionDataModule:=TOperacionDataModule.Create(self);
OperacionDataModule.AnularVTA(nroEdit.Text);
OperacionDataModule.Free;
Close;
end;

procedure TFAnulaReimp.buscarBitBtnClick(Sender: TObject);
begin
 BuscaFacturaForm:=TBuscaFacturaForm.Create(Self);
 try
 BuscaFacturaForm.ShowModal;
 finally
 nroEdit.Text:=BuscaFacturaForm.Tabla.FieldByName('CODIGO').AsString;
 BuscaFacturaForm.Free;
 end;
end;

procedure TFAnulaReimp.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_Escape then Close;
end;

procedure TFAnulaReimp.FormShow(Sender: TObject);
begin
buscarBitBtn.Click;
end;

procedure TFAnulaReimp.BitBtn2Click(Sender: TObject);
{
var Balance, PagosRec, BalanceTotal, BalanceAnterior, MontoSinAplicar, MontoAplicado, Total: double;
    NombCliente, fecha, Cliente, SinAplicar :string;
    Numtrans, OrdTrans : Integer;
}
begin
{
 If cbTipo.ItemIndex = 0 then
  begin
   Tipo:= 'F';
   TipoNom := 'Factura';
   end
   else
    begin
     Tipo := 'C';
     TipoNom := 'Consignación';
    end;
   // Verificar que la factura Exista y que no esté anulada
   Q.SQL.Text := 'Select CODIGO, ANULADA, FECHA From FACTURA Where CODIGO = '+IntEdit1.Text+' and LETRA = '+QuotedStr(LetraLabel.Caption);
   Q.Open;
   IF Q.RecordCount = 0 then
    begin
     MessageDlg(TipoNom+' no existe.',mtError,[mbOK],0);
     Q.Close;
     Exit;
   end;
   if Q.Fields[1].AsString ='S' then
    begin
     MessageDlg(TipoNom+' ya está anulada.',mtError,[mbOK],0);
     Q.Close;
     Exit;
    end;
   ShortDateFormat := 'mm';
   If (DateToStr(Now) <> DateToStr(Q.Fields[2].AsDateTime)) AND (Tipo = 'F') then
    begin
     MessageDlg(TipoNom+' no se puede anular por ser de un periodo anterior',mtError,[mbOK],0);
     ShortDateFormat := 'dd/mm/yyyy';
     Q.Close;
     Exit;
    end;
   ShortDateFormat := 'dd/mm/yyyy';
   Q.Close;
   If Tipo = 'F' then
    begin
     Q.SQL.Text := 'SELECT CxCobrar.PagosRec '+
                       'FROM CxCobrar '+
                       'WHERE (((CxCobrar.CodTransac)= '+IntEdit1.Text+') AND ((CxCobrar.Secuencia)=0) AND ((CxCobrar.TipoTransac)="FA")) ';
     Q.Open;
     If Q.Fields[0].AsInteger <> 0 then
      begin
       MessageDlg(TipoNom+' no se puede anular debido a que ya hay pagos realizados.',mtError,[mbOK],0);
       Q.Close;
       Exit;
      end;
     end;
   if MessageDlg('¿Está seguro que desea eliminar la '+TipoNom+' '+IntEdit1.Text+'?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
     Q.Close;
     // Marcar la Factura como anulada y poner los saldos en cero
     Q.SQL.Text := 'Update VENTA set ANULADA = S, MntEnvio = 0, MntSubTotal = 0, MntImpuesto = 0, MntTotal = 0, MntDescuento = 0, '+
                       'MntContado = 0, MntCheque = 0, MntTarjeta = 0, MntOtros = 0, Saldo = 0, Pagado = 0 where CodFactura = '+IntEdit1.Text;
     Q.ExecSQL;

     // Poner las series en estado "bodega"
     If Tipo = 'F' then
      begin
      Q.SQL.Text := 'Update Series Set Estado = ''Bodega'' Where '+
                        'NumFactura = '+IntEdit1.Text+' and estado = ''Facturado'''
      end
      else
       begin
        Q.SQL.Text := 'Update Series Set Estado = ''Bodega'' Where '+
                      'NumFactura = '+IntEdit1.Text+' and estado = ''Consignac'''
       end;
        Q.ExecSQL;

        // Actualizar la cantidad disponible en la tabla de Articulos
        Q.SQL.Text := 'SELECT ARTICULO, CANTIDAD FROM "VentaItem" WHERE OPERACION = '+IntEdit1.Text;
        Q.Open;
        While not Q.Eof do
         begin
          Q.SQL.Text := 'Update Articulo Set Disponible = Disponible + '+Q.Fields[1].AsString+' Where '+
                        'ARTICULO = '+Q.Fields[0].AsString;
          Q.ExecSQL;
          Q.Next;
         end;
        Q.Close;

        // Borrar los Items de la factura de la tabla "VentaItem"
        Q.SQL.Text := 'DELETE FROM "VentaItem" WHERE "VentaItem".OPERACION='+IntEdit1.Text;
        Q.ExecSQL;

        // Borrar la factura
        Q.SQL.Text := 'DELETE FROM Factura '+
        'WHERE CodFactura='+IntEdit1.Text;
        Q.ExecSQL;

        //Calcula el siguiente numero de transacción
            Q.SQL.Text := 'SELECT Max(CxCobrar.CodTransac) AS MaxOfCodTransac '+
                          'FROM CxCobrar '+
                          'GROUP BY CxCobrar.Secuencia, CxCobrar.TipoTransac '+
                          'HAVING ((CxCobrar.Secuencia=0) AND (CxCobrar.TipoTransac="NC"))';
            Q.Active := True;
            If Q.RecordCount = 0 then NumTrans:=1
             else NumTrans := Q.Fields[0].AsInteger+1;
            Q.Close;

            //Calcula el siguiente numero de OrdTrans
            Q.SQL.Text := 'SELECT Max([OrdTrans]) AS Expr1 '+
                          'FROM CxCobrar;';
            Q.Active := True;
            If Q.RecordCount = 0 then OrdTrans:=1
             else OrdTrans := Q.Fields[0].AsInteger+1;
            Q.Close;

            //Calcula la fecha de Transaccion
            ShortDateFormat := 'yyyy-mm-dd';
            Fecha := DateToStr(Now);
            ShortDateFormat := 'dd/mm/yyyy';

            //Calcula el saldo anterior
            Q.SQL.Text := 'Select BalanceTotal From CxCobrar where CodCliente = '+Cliente+
                          ' Order By OrdTrans;';
            Q.Open;
            IF Q.RecordCount = 0 then BalanceAnterior := 0
             else
              begin
               Q.Last;
               BalanceAnterior := Q.Fields[0].AsFloat;
              end;
              Q.Close;
              BalanceTotal := BalanceAnterior - Total;
              MontoSinAplicar := Total + PagosRec - Balance;
              MontoAplicado := Total - MontoSinAplicar;
              If MontoSinAplicar = 0 then SinAplicar := 'False'
               else SinAplicar := 'True';

              //Insertar la nota de credito
              Q.SQL.Text := 'INSERT INTO CxCobrar ( CodTransac, Secuencia, TipoTransac, OrdTrans, FechaTransac, CodCliente, Balance, BalanceTotal, BalanceAnterior, SinAplicar, MontoSinAplicar, Motivo ) '+
                            'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntToStr(OrdTrans)+', '+QuotedStr(Fecha)+', '+Cliente+', '+QuotedStr(FloatToStr(-Total))+', '+QuotedStr(FloatToStr(BalanceTotal))+', '+QuotedStr(FloatToStr(BalanceAnterior))+', '+SinAplicar+', '+QuotedStr(FloatToStr(MontoSinAplicar))+', '+QuotedStr('Anulación de factura '+IntEdit1.Text)+' )';
              Q.ExecSQL;
              //Inserta el detalle de la nota de crédito
              Q.SQL.Text := 'INSERT INTO CxCDetalle ( CodTransac, Secuencia, TipoTransac, Documento, Monto ) '+
                            'VALUES ( '+IntToStr(NumTrans)+', 0, ''NC'', '+IntEdit1.Text+', '+QuotedStr(FloatToStr(MontoAplicado))+' )';
              Q.ExecSQL;
              //Genera e imprime Nota de Credito
              Q.SQL.Text := 'Select NombreCliente from Clientes Where CodCliente = '+cliente;
              Q.Open;
              NombCliente:= Q.Fields[0].AsString;
            Q.Close;
          end;

          //Completa la Transaccion
          Q.Transaction.CommitRetaining;
          MessageDlg('La '+TipoNom+' '+IntEdit1.Text+' ha sido eliminada.'#13'Las partes retornaron al inventario',mtConfirmation,[mbOK],0)
        end;
   Close; }
end;

procedure TFAnulaReimp.BitBtn3Click(Sender: TObject);
begin
Close;
end;

end.
