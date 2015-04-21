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

unit CrearCreditoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, OperacionDM,
  DBGrids, ValEdit, DateUtils, ComCtrls, RpCon, RpConDS, RpRave, RpDefine,
  RpBase, RpSystem, RpRender, RpRenderCanvas, RpRenderPrinter, Printers, RPDevice, DataModule, ImprimirDM,
  IBCustomDataSet, IBQuery, OleCtrls, SHDocVw;

type
  TCrearCreditoForm = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    ClienteLabel: TLabel;
    Label9: TLabel;
    ClienteEdit: TEdit;
    VendedorEdit: TEdit;
    Label16: TLabel;
    Label39: TLabel;
    InteresLabel: TLabel;
    PlanEdit: TEdit;
    Label17: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    CobradorEdit: TEdit;
    PlanLabel: TLabel;
    FechaDateTimePicker: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    CuotaCantidadEdit: TEdit;
    CuotaImporteEdit: TEdit;
    InteresEdit: TEdit;
    EntregaGroupBox: TGroupBox;
    Label28: TLabel;
    EntregaEdit: TEdit;
    SGFact: TStringGrid;
    QTemp: TIBQuery;
    Q: TIBQuery;
    Panel4: TPanel;
    ProcesarBitBtn: TBitBtn;
    ClienteBitBtn: TBitBtn;
    VendedorBitBtn: TBitBtn;
    AgregarBitBtn: TBitBtn;
    NuevoBitBtn: TBitBtn;
    QuitarBitBtn: TBitBtn;
    CantidadBitBtn: TBitBtn;
    SGTotal: TStringGrid;
    PlanBitBtn: TBitBtn;
    CobradorBitBtn: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    PagareCheckBox: TCheckBox;
    Presupuesto: TCheckBox;
    GroupBox5: TGroupBox;
    LbSaldo: TLabel;
    GroupBox4: TGroupBox;
    cbTipo: TComboBox;
    FLEPorcDesc: TEdit;
    Label24: TLabel;
    Label10: TLabel;
    procedure ClienteBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure AgregarBitBtnClick(Sender: TObject);
    procedure CalculaTotales;
    procedure QuitarBitBtnClick(Sender: TObject);
    procedure FLEPorcDescExit(Sender: TObject);
    procedure ProcesarBitBtnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EntregaEditExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CantidadBitBtnClick(Sender: TObject);
    procedure VendedorBitBtnClick(Sender: TObject);
    procedure PlanBitBtnClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure CobradorBitBtnClick(Sender: TObject);
    procedure EntregaEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CuotaCantidadEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InteresEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CuotaImporteEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTipoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NuevoBitBtnClick(Sender: TObject);
    procedure FLEPorcDescEnter(Sender: TObject);
 private
    { Private declarations }
  public
  OK, Proveedor, FPagoOK : Boolean;
  Cuenta, DiasCalculo, CuotasTotal, d, numfact, OrdTrans : Integer;
  CMV, UltCosto, pPagado, pSaldo, subtotal, Impuesto, NG21, IVA21, NG105, IVA105, NGO, IVAO, desc, costo, reparaciones, Total, IIBB, NGIIBB, Exento,  Comision :Double;
  CtaNombre, CtaComisionVendedor, CtaComisionVendedorAPagar :string; //revisar
  code, Dia, Mes, Ano, TDocumento, Tiempo, T2, Precio, ChequeCodCheque,ChequeNumero,ChequeDetalle,ChequeCodFactura,ChequeMntCheque,ChequeFecha,ChequeDias, Fecha, FechaVence, iv, DetalleFactura, MntContado, MntCheque, NroCheque, DetCheque, DiaCheque, MntTarjeta, NroTarjeta, DetTarjeta, MntOtros, Saldo :string;
  BalanceAnterior, Interes, BalanceTotal, Pagado : Double;
  FechaVencimiento: TDate;
  procedure Valores (SubT, Imp, Tot: Double);
  procedure Nuevo;
    { Public declarations }
  end;

var
  CrearCreditoForm: TCrearCreditoForm;

implementation

uses UFBuscaCliente, UFBuscaArticulos,
  AgregarCantidad, BuscarVendedor, BuscarPlan, BuscarCobrador, servicio;

{$R *.dfm}


procedure TCrearCreditoForm.Nuevo;
begin
SGFact.Cells[0,0] := 'Código';
SGFact.Cells[1,0] := 'Descripción';
SGFact.Cells[2,0] := '# Pieza';
SGFact.Cells[3,0] := 'Cantidad';
SGFact.Cells[4,0] := 'Precio';
SGFact.Cells[5,0] := 'Total';
SGFact.Cells[6,0] := 'IVA';
SGFact.Cells[3,1] := '0';
SGFact.Cells[4,1] := '0.00';
SGFact.Cells[5,1] := '0.00';
SGTotal.Cells[0,0] := 'Sub Total';
SGTotal.Cells[0,1] := 'Descuento';
SGTotal.Cells[0,2] := 'Impuesto';
SGTotal.Cells[0,3] := 'Interes';
SGTotal.Cells[0,4] := 'TOTAL';
SGTotal.Cells[0,5] := 'Saldo';
SGTotal.Cells[1,0] := '0.00';
SGTotal.Cells[1,1] := '0.00';
SGTotal.Cells[1,2] := '0.00';
SGTotal.Cells[1,3] := '0.00';
SGTotal.Cells[1,4] := '0.00';
SGTotal.Cells[1,5] := '0.00';
Cuenta := 1;
ShortDateFormat := 'dd/mm/yyyy';
FechaDateTimePicker.DateTime := Now;
SubTotal := 0;
Impuesto := 0;
Desc     := 0;
Total    := 0;
NG21 := 0;
IVA21 := 0;
NG105 := 0;
IVA105 := 0;
FLEPorcDesc.Text:='0.0';
costo:=0;
reparaciones:=0;
ClienteEdit.Text:= '0';
EntregaEdit.Text:='0';
while Cuenta > 1 do CantidadBitBtn.Click;
ClienteBitBtn.Click;
PlanBitBtn.Click;
VendedorBitBtn.Click;
CobradorBitBtn.Click;
AgregarBitBtn.Click;
end;

procedure TCrearCreditoForm.NuevoBitBtnClick(Sender: TObject);
begin
 ServForm := TServForm.Create(self);
  try
   ServForm.ShowModal;
  finally
   If ServForm.DescripcionEdit.Text <> '' then
    begin
     if Cuenta > 1 then SGFact.RowCount := SGFact.RowCount + 1;
     SGFact.Cells[0, Cuenta] := ServForm.cod;
     SGFact.Cells[1, Cuenta] := ServForm.DescripcionEdit.Text;
     SGFact.Cells[2, Cuenta] := '0';
     SGFact.Cells[3, Cuenta] := '1'; // cantidad
     SGFact.Cells[4, Cuenta] := ServForm.PrecioEdit.Text;
     SGFact.Cells[5, Cuenta] := FloatToStr(StrToFloat(SGFact.Cells[4, Cuenta]) * StrToFloat(SGFact.Cells[3,Cuenta])); // total
     SGFact.Cells[6, Cuenta] := '0';
     SGFact.Cells[8, Cuenta] := '0'; // PRECIO DE COSTO
     SGFact.Cells[9, Cuenta] := '0';
     SGFact.Cells[10, Cuenta] := '0';
     SGFact.Cells[11, Cuenta] := '0'; // PRECIO DE COSTO
     Cuenta := Cuenta + 1;
    end;
   ServForm.Free;
  end;
 CalculaTotales;
 EntregaEdit.SetFocus;
end;

procedure TCrearCreditoForm.CalculaTotales;
var i:integer;
begin
 //Calcula los totales de la factura
   SubTotal := 0;
   Impuesto := 0;
   Desc     := 0;
   Total    := 0;
   Costo    := 0;
   Interes := 0;

   reparaciones :=0;
   IVA21:=0;
   IVA105:=0;
   IVAO:=0;
   NG105:=0;
   NG21:=0;
   NGO:=0;

   // Calcula el SubTotal
   For i:=1 to SGFact.RowCount-1 do begin
   IF (SGFact.Cells[5,i] = '') then SGFact.Cells[5,i] := '0';
   IF (SGFact.Cells[6,i] = '') then SGFact.Cells[6,i] := '0';
   IF (SGFact.Cells[8,i] = '') then SGFact.Cells[8,i] := '0';
   IF (SGFact.Cells[9,i] = '') then SGFact.Cells[9,i] := '0';
   IF (SGFact.Cells[11,i] = '') then SGFact.Cells[11,i] := '0';
   SubTotal := SubTotal + StrToFloat(SGFact.Cells[5,i]);//SUBTOTAL
   IF SGFact.Cells[8,i] <> '' then Costo := Costo + StrToFloat(SGFact.Cells[8,i]);// Calcula el Costo
   IF SGFact.Cells[9,i] <> '' then reparaciones := reparaciones + StrToFloat(SGFact.Cells[9,i]);// Calcula las reparaciones
   end;

   // Calcula el monto para cobrar el impuesto de ventas
For i:=1 to SGFact.RowCount-1 do begin
IF (SGFact.Cells[5,i] = '') then SGFact.Cells[5,i] := '0';
IF (SGFact.Cells[6,i] = '') then SGFact.Cells[6,i] := '0';
If (SGFact.Cells[6,i] = '21') then begin NG21 := NG21 + StrToFloat(SGFact.Cells[5,i]);//NETO GRABADO 21%
IVA21 :=  (IVA21 + Abs((StrToFloat(SGFact.Cells[5,i]) * 1.21) - StrToFloat(SGFact.Cells[5,i])));end;//IVA 21% 100 * 1.21 - 100 = 21
IF (SGFact.Cells[6,i] = '10.5') then begin NG105 := NG105 + StrToFloat(SGFact.Cells[5,i]);//NETO GRABADO 10.5%
IVA105 :=  (IVA105 + Abs((StrToFloat(SGFact.Cells[5,i]) * 1.105) - StrToFloat(SGFact.Cells[5,i])));end;//IVA 10.5% 100 * 1.105 - 100 = 10.5
IF (SGFact.Cells[6,i] <> '21') and (SGFact.Cells[6,i] <> '10.5') and (SGFact.Cells[6,i] <> '0') and (SGFact.Cells[6,i] <> '') then begin NGO := NGO + StrToFloat(SGFact.Cells[5,i]);//NETO GRABADO
IVAO :=  (IVAO + Abs((StrToFloat(SGFact.Cells[5,i])/(StrToFloat(SGFact.Cells[6,i])*100+1)) - StrToFloat(SGFact.Cells[5,i])));end;//IVA
end;

Desc := (SubTotal * StrToFloat(FLEPorcDesc.Text) / 100);

//  Cuotas
if InteresEdit.Text = '0' then InteresEdit.Text:= FloatToStr( round( (((StrToFloat(CuotaImporteEdit.Text)*StrToFloat(CuotaCantidadEdit.Text))-(SubTotal - Desc - StrToFloat(EntregaEdit.Text)))*100) / (SubTotal - Desc - StrToFloat(EntregaEdit.Text)) + Impuesto))
else
begin
 if CuotaImporteEdit.Text = '0' then
 CuotaImporteEdit.Text:= FloatToStr( round( ((SubTotal - Desc - StrToFloat(EntregaEdit.Text)) * (StrToFloat(InteresEdit.Text)/100+1)) / StrToFloat(CuotaCantidadEdit.Text) ) + Impuesto)
 else
 if CuotaCantidadEdit.Text = '0' then CuotaCantidadEdit.Text:= FloatToStr( round( ((SubTotal - Desc - StrToFloat(EntregaEdit.Text)) * (StrToFloat(InteresEdit.Text)/100+1)) / StrToFloat(CuotaImporteEdit.Text) ) + Impuesto);
 Total := ( StrToFloat(CuotaImporteEdit.Text) * StrToFloat(CuotaCantidadEdit.Text) );

 while Total < ((SubTotal - Desc - StrToFloat(EntregaEdit.Text) ) * (StrToFloat(InteresEdit.Text)/100+1)+ Impuesto)  do
  begin
   CuotaImporteEdit.Text:= FloatToStr( StrToFloat(CuotaImporteEdit.Text) + 0.5);
   Total := ( StrToFloat(CuotaImporteEdit.Text) * StrToFloat(CuotaCantidadEdit.Text) );
  end;
end;

Impuesto:=IVA21+IVA105+IVAO;
SubTotal :=(SubTotal - Impuesto);

Interes:=Total-SubTotal-Desc-Impuesto-StrToFloat(EntregaEdit.Text);


Pagado := StrToFloat(EntregaEdit.Text);
Total := (SubTotal + Impuesto - desc + Interes);

// escribe los valores en las celdas
   SGTotal.Cells[1,0] := Format('%8.2n',[SubTotal]);
   SGTotal.Cells[1,1] := Format('%8.2n',[desc]);
   SGTotal.Cells[1,2] := Format('%8.2n',[Impuesto]);
   SGTotal.Cells[1,3] := Format('%8.2n',[Interes]);
   SGTotal.Cells[1,4] := Format('%8.2n',[Total]);
end;

procedure TCrearCreditoForm.cbTipoChange(Sender: TObject);
begin
CalculaTotales;
end;

Procedure GridRemoveRow(StrGrid: TStringGrid; DelRow: Integer);
Var Row: Integer;
begin
  If DelRow <= StrGrid.RowCount then
  Begin
    If (DelRow = StrGrid.RowCount-1) AND (DelRow = 1) then
    begin
       StrGrid.Rows[DelRow].Clear;
       StrGrid.Cells[3,1] := '0';
       StrGrid.Cells[4,1] := '0.00';
       StrGrid.Cells[5,1] := '0.00';
    end
    else if DelRow = StrGrid.RowCount - 1 then StrGrid.RowCount := StrGrid.RowCount-1
         else
         begin
            For Row := DelRow To StrGrid.RowCount-2 do
               StrGrid.Rows[Row].Assign(StrGrid.Rows[Row+1]);
            StrGrid.RowCount := StrGrid.RowCount-1;
         end;
  end;
end;

procedure TCrearCreditoForm.ClienteBitBtnClick(Sender: TObject);
begin
FBuscaCliente:=TFBuscaCliente.Create(self);
 try
 FBuscaCliente.ShowModal;
 finally
 ClienteEdit.Text := FBuscaCliente.Tabla.FieldByName('CODIGO').AsString;
 with FBuscaCliente do
 begin
        ClienteLabel.Caption := Tabla.FieldByName('NOMBRE').AsString;
        VendedorEdit.Text      := Tabla.FieldByName('Vendedor').AsString;
        //CUENTA CLIENTE
        CtaNombre := Tabla.FieldByName('CtaNombre').AsString;
        PagareCheckBox.Checked := Tabla.FieldByName('Pagare').AsBoolean;
        //IVA
        if (dm.ConfigQuery.FieldByName('IVA').AsString = 'RI') and (Tabla.FieldByName('IVA').AsString = 'RI') then cbTipo.ItemIndex := 0
        else if (dm.ConfigQuery.FieldByName('IVA').AsString = 'RI') and  (Tabla.FieldByName('IVA').AsString <> 'RI') then cbTipo.ItemIndex := 1
        else if (dm.ConfigQuery.FieldByName('IVA').AsString = 'NR') then cbTipo.ItemIndex := 4
        else cbTipo.ItemIndex := 2;
 end;
 FBuscaCliente.Free;
 end;
end;

procedure TCrearCreditoForm.NoBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TCrearCreditoForm.AgregarBitBtnClick(Sender: TObject);
begin
FBuscaArticulo:=TFBuscaArticulo.Create(self);
FBuscaArticulo.Precio :=Precio;
try
 FBuscaArticulo.ShowModal;
 finally
 If FBuscaArticulo.Tabla.Active = True then
 begin
 If Cuenta > 1 then SGFact.RowCount := SGFact.RowCount + 1;
 QTemp.Close;
 QTemp.SQL.Text := 'SELECT * FROM "Articulo" WHERE "Articulo".CODIGO = '+QuotedStr(FBuscaArticulo.Tabla.FieldByName('CODIGO').Asstring);
 QTemp.Open;
         SGFact.Cells[0,cuenta] := FBuscaArticulo.Tabla.FieldByName('CODIGO').Asstring;
         SGFact.Cells[1,cuenta] := QTemp.FieldByName('DESCRIPCION').AsString; //nombre
         SGFact.Cells[2,cuenta] := '0';
         SGFact.Cells[3,cuenta] := '1';//cantidad
         SGFact.Cells[4,cuenta] := QTemp.FieldByName('COSTO').AsString;//precio
         SGFact.Cells[5,cuenta] := FloatToStr(StrToFloat(SGFact.Cells[4,cuenta]) * StrToFloat(SGFact.Cells[3,cuenta]));//total
         if QTemp.FieldByName('TASA').AsFloat <> 0 then SGFact.Cells[6,cuenta] := FloatToStr(QTemp.FieldByName('TASA').AsFloat) else SGFact.Cells[6,cuenta] := '21';//IVA
         SGFact.Cells[8,cuenta] := FloatToStr(QTemp.FieldByName('COSTO').AsFloat * StrToFloat(SGFact.Cells[3,SGFact.Row]));//PRECIO DE COSTO
         SGFact.Cells[9,cuenta] := QTemp.FieldByName('IIBB').AsString;//ACTIVIDAD DE MONOTRIBUTO
         q.SQL.Text:='SELECT * FROM "IIBB" WHERE CODIGO='+QuotedStr(SGFact.Cells[9,cuenta]);
         q.Open;
         SGFact.Cells[10,cuenta] := Format('%8.2f',[q.FieldByName('PORCENTAJE').AsFloat]);//PORCENTAJE DE INGRESOS BRUTOS
         Cuenta := Cuenta +1;
         QTemp.Close;
         CalculaTotales;
       end;
         FBuscaArticulo.Free;
   end;
   EntregaEdit.SetFocus;
end;

procedure TCrearCreditoForm.QuitarBitBtnClick(Sender: TObject);
begin
   GridRemoveRow(SGFact,SGFact.Row);
   If Cuenta > 1 then Cuenta := Cuenta - 1;
   CalculaTotales;
end;

procedure TCrearCreditoForm.FLEPorcDescEnter(Sender: TObject);
begin
  CalculaTotales;
end;

procedure TCrearCreditoForm.FLEPorcDescExit(Sender: TObject);
begin
   CalculaTotales;
end;

procedure TCrearCreditoForm.ProcesarBitBtnClick(Sender: TObject);
var
r,c :integer;
begin
 c:= 0;//columna i
 r:= 0;//row j
 OperacionDataModule := TOperacionDataModule.Create(self);
 with OperacionDataModule do
  begin
   SetLength(mat, SgFact.ColCount, SgFact.RowCount);
   for r:= 0 to SgFact.RowCount-1 do
    for c:= 0 to SgFact.ColCount-1 do
     begin
     mat[c,r]:= SgFact.Cells[c,r];
    end;
   //ProcPlan(let,cli,fech,ven,cui,ctan,                                                                                                                      cuot,cuoimp,cuocant:string; pre,pgr:Boolean;cost,comv,impu,cheq,cont,tot,sbt,des,tarj,otr,sal,pag,int,n10,n21,i10,i21,deud,ulc:Double);
   ProcPlan(cbTipo.Text, ClienteEdit.Text, VendedorEdit.Text,'',CtaNombre,CuotaImporteEdit.Text,CuotaCantidadEdit.Text,CobradorEdit.Text,FechaDateTimePicker.DateTime,false,PagareCheckBox.Checked, costo, Comision,Impuesto,0,0,StrToFloat(EntregaEdit.Text),Total,subtotal,desc,0,0,Total-Pagado,Pagado,Interes,NG105,NG21,IVA105,IVA21,0,UltCosto);
  end;
 OperacionDataModule.Free;

{var i, c, n: integer;
Oculto :string;
begin
if cbTipo.Text = 'X' then Oculto:='S';

if EntregaEdit.Text<>'' then MntContado:=EntregaEdit.Text else MntContado:='0';
      MntCheque  := '0';
      NroCheque  := '';
      DetCheque  := '';
      DiaCheque  := '';
      MntTarjeta := '0';
      NroTarjeta := '';
      DetTarjeta := '';
      MntOtros   := '0';
     if Pagado = 0 then Pagado:=0;
     ShortDateFormat := 'yyyy-mm-dd';
     //+ formula día mes año
     ShortDateFormat := 'dd';
     Dia := DateToStr(FechaDateTimePicker.Date);
     ShortDateFormat := 'mm';
     Mes := DateToStr(FechaDateTimePicker.Date);
      //+ fomula mes
     if Mes = '01' then Mes:='Enero'
     else     if Mes = '02'  then Mes:='Febrero'
     else     if Mes = '03'  then Mes:='Marzo'
     else     if Mes = '04'  then Mes:='Abril'
     else     if Mes = '05'  then Mes:='Mayo'
     else     if Mes = '06'  then Mes:='Junio'
     else     if Mes = '07'  then Mes:='Julio'
     else     if Mes = '08'  then Mes:='Agosto'
     else     if Mes = '09'  then Mes:='Septiembre'
     else     if Mes = '10' then Mes:='Octubre'
     else     if Mes = '11' then Mes:='Noviembre'
     else     if Mes = '12' then Mes:='Diciembre';
      //-
     ShortDateFormat := 'yyyy';
     Ano := DateToStr(FechaDateTimePicker.Date);
     //-
     ShortDateFormat := 'mm/dd/yyyy';
     Fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss', FechaDateTimePicker.DateTime));
  // Obtener el numero de Compra
     QTemp.SQL.Text := 'Select Max(CODIGO) From "Venta"';
     QTemp.Open;
     If QTemp.RecordCount = 0 then NumFact:=1
     else NumFact := QTemp.Fields[0].AsInteger+1;
     QTemp.Close;

        QTemp.SQL.Text := 'Insert Into "Venta" (CODIGO, LETRA, CLIENTE, '+
       ' SUBTOTAL, DESCUENTO, FECHA, '+
       ' IMPUESTO, TOTAL, CONTADO, CHEQUE,'+
       ' TARJETA, OTROS, SALDO, PAGADO '+
       ') Values '+
          '( '+IntToStr(numfact)+', '+QuotedStr(cbTipo.Text)+', '+ClienteEdit.Text+', '+
          ' '+FloatToStr(SubTotal)+', '+QuotedStr(SGTotal.Cells[1,1])+', '+QuotedStr(Fecha)+', '+
           FloatToStr(Impuesto)+', '+FloatToStr(Total)+', '+QuotedStr(MntContado)+', '+QuotedStr(MntCheque)+', '+
           QuotedStr(MntTarjeta)+', '+QuotedStr(MntOtros)+', '+FloatToStr(Total)+', '+EntregaEdit.Text+
           ')';
       QTemp.ExecSQL;

  // Insertar en la tabla de VENTAITEM
        For i := 1 to SgFact.RowCount-1 do
         begin
//         if SGFact.Cells[0,i] <> '1' then detalle:= SGFact.Cells[1,i] else detalle := memo;
           if SGFact.Cells[6,i] = 'Si' then iv:='True)' else iv:='False)';
           QTemp.SQL.Text := 'Insert Into "VentaItem" (OPERACION, ARTICULO, CANTIDAD, PRECIO, IMPUESTO, SERVICIO, DESCRIPCION) Values'+
           ' ( '+IntToStr(numfact)+', '+(SGFact.Cells[0,i])+', '+(SGFact.Cells[3,i])+', '+(SGFact.Cells[4,i])+', '+SGFact.Cells[6,i]+', '+IntToStr(numfact)+', '+QuotedStr( SGFact.Cells[1,i])+');';
           QTemp.ExecSQL;
         end;

  // Insertar en la tabla de CtaCte
          QTemp.SQL.Text := 'Insert Into "CtaCte" (CLIENTE, SALDO, OPERACION, CUOTAS, DESCUENTO, INTERES, COBRADOR, FECHA, RENDIDAS) Values ('+
          ClienteEdit.Text+', '+floattostr(Total)+', '+IntToStr(NumFact)+', '+
          (CuotaCantidadEdit.Text)+', '+FLEPorcDesc.Text+', '+InteresEdit.Text+', '+
          CobradorEdit.Text+', '+QuotedStr(Fecha)+', 0'+
          ')';
          QTemp.ExecSQL;

  // Insertar en la tabla de CtaCte Item
          d:=0;
          FechaVencimiento:=(FechaDateTimePicker.Date);
          For i := 1 to SgFact.RowCount-1 do
           begin
            if SGFact.Cells[0,i] <> '1' then detalle:= SGFact.Cells[1,i] else detalle := memo;
            if SGFact.Cells[6,i] = 'Si' then iv:='True)' else iv:='False)';
             For n := 1 to StrToInt(CuotaCantidadEdit.Text) do //ingreso de cuota
             begin
             //*****
              FechaVencimiento := (FechaDateTimePicker.Date +(n*DiasCalculo))+d;
                 if DayOfTheWeek(FechaVencimiento)=7 then
                  begin
                  FechaVencimiento := FechaVencimiento+1;
                  d:=d+1;
                  end;
              //***

             QTemp.SQL.Text := 'Insert Into "CtaCteItem" (CUOTA, OPERACION, CLIENTE,'+
             ' DESCRIPCION, IMPORTE, '+
             ' VENCE, PAGADO) Values '+
             '( '+IntToStr(n)+', '+IntToStr(NumFact)+','+ClienteEdit.Text+', '+
             QuotedStr(SGFact.Cells[1,i])+','+(CuotaImporteEdit.Text)+', '+
             QuotedStr(DateToStr(FechaVencimiento))+', 0)';
             QTemp.ExecSQL;
             end;
          end;

  // Insertar en RendidoVendedor
        Comision:=  round(Total * (Comision/100));
           QTemp.SQL.Text := 'Insert Into "RendidoVendedor" (VENDEDOR, VENTA, IMPORTE, FECHA) Values'+
           ' ('+QuotedStr(VendedorEdit.Text)+', '+IntToStr(numfact)+', '+Format('%8.2f', [Comision])+', '+QuotedStr(Fecha)+')';
           QTemp.ExecSQL;

  // Insertar en la tabla de Contrato
          if DiasCalculo = 7 then
          begin
          Tiempo:='semanas';
          T2:='semanales';
          end
          else if DiasCalculo = 1 then
          begin
          Tiempo:='días';
          T2:='diarios';
          end;
           QTemp.SQL.Text := 'Insert Into "Contrato" (NUMERO, DIA, MESCRITO, CANONES,'+
           ' DNOMBRE, DDTIPO, DDOCUMENTO, DDOMICILIO,'+
           ' TOMADOR, TNOMBRE, TDOCUMENTO, '+
           ' TDOMICILIO, TDTRABAJO, BIEN,'+
           ' TIEMPO, T2, CIMPORTE, IMPORTETOTAL, FECHA) Values'+
           ' ('+IntToStr(NumFact)+', '+QuotedStr(Dia)+', '+QuotedStr(Mes)+', '+CuotaCantidadEdit.Text+','+
           ' '+QuotedStr(dm.ConfigQuery.FieldByName('Titular').AsString)+', ''DNI'', '+QuotedStr(dm.ConfigQuery.FieldByName('Documento').AsString)+', '+QuotedStr(dm.ConfigQuery.FieldByName('DireccionComercial').AsString)+','+
           ' '+QuotedStr(ClienteEdit.Text)+', '+QuotedStr(ClienteLabel.Caption)+', '+QuotedStr(DocumentoLabel.Caption)+','+
           ' '+QuotedStr(DireccionParticularLabel.Caption)+', '+QuotedStr(DireccionTrabajoLabel.Caption)+', '+QuotedStr(SGFact.Cells[1,1])+','+
           ' '+QuotedStr(Tiempo)+', '+QuotedStr(T2)+', '+CuotaImporteEdit.Text+', '+FloatToStr(Total)+', '+QuotedStr(Fecha)+''+
           ')';
           QTemp.ExecSQL;

  // Actualizar la tabla de Articulos
        For i := 1 to SgFact.RowCount-1 do
         begin
           QTemp.SQL.Text := 'Update "Articulo" Set DISPONIBLE = DISPONIBLE - '+SGFact.Cells[3,i]+' Where '+
                             ' CODIGO = '+(SGFact.Cells[0,i]);
           QTemp.ExecSQL;
         end;

//CONTABILIDAD+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  // Insertar en el Libro IVA Ventas
          if cbTipo.ItemIndex <> 4 then //en blanco
          begin
           QTemp.SQL.Text := 'Insert Into "LibroIVAventa" (FECHA, FACTURA, CLIENTE, CUIT, NG1, NG2, IVA1, IVA2, ITF) Values ( '+
           QuotedStr(Fecha)+', '+QuotedStr(IntToStr(NumFact))+', '+QuotedStr(ClienteLabel.Caption)+', '+QuotedStr(DocumentoLabel.Caption)+', '+FloatToStr(NG105)+', '+FloatToStr(NG21)+', '+FloatToStr(IVA105)+', '+FloatToStr(IVA21)+', '+(FloatToStr(Total))+')' ;
           QTemp.ExecSQL;
          end;

 //Insertar en la tabla LibroDiario
        //obtener el numero de asiento
        q.SQL.Text := 'Select Max(ASIENTO) From "LibroDiario"';
        q.Open;
        i := q.Fields[0].AsInteger+1;
        q.Close;

        if strtofloat(EntregaEdit.Text) > 0.04 then //PAGO CON EFECTIVO
        begin
        // renglon  - CAJA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+FloatToStr(Pagado)+', 0, '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;
        end;

        if ((Pagado) < Total) AND (PagareCheckBox.Checked<>TRUE)then //CUENTA CORRIENTE
        begin
        // renglon  - DEUDORES POR VENTA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CtaNombre;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+FloatToStr(Total-Pagado)+', 0 , '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;
        end;

        if (Pagado < Total) AND (PagareCheckBox.Checked=TRUE) then //CON DOCUMENTOS (PAGARE)
        begin
        // renglon  - DOCUMENTOS A COBRAR
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaDocumentoACobrar').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+FloatToStr(Total-(Pagado))+', 0 ,'+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;
        end;


        if cbTipo.ItemIndex = 0 then //si es factura A
        begin
        // renglon  - IVA DEBITO FISCAL
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaIVADebitoFiscal').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+FloatToStr(Impuesto)+', '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;
        end;

        // renglon  - VENTAS
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaVenta').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+FloatToStr(Total)+', '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;


//COSTO DE MERCADERIAS VENDIDAS
        if dm.ConfigQuery.FieldByName('CMV').AsString = 'PPP' then CMV := ((UltCosto + Costo) / 2)
        else if dm.ConfigQuery.FieldByName('CMV').AsString = 'FIFO' then CMV := UltCosto
        else {if CostoMercaderiaVendida = 'LIFO' then// CMV := Costo;

        // renglon  - CMV
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaCMV').AsString;
        q.Open;
        c:=c+1;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+FloatToStr(CMV)+', 0, '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;

        // renglon  - MERCADERIAS DE REVENTA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaMercaderia').AsString;
        q.Open;
        c:=c+1;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+FloatToStr(CMV)+', '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;

//CALCULO DE COMISION VENDEDOR

        // renglon  - COMISION VENDEDOR
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaComisionVendedor').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+FloatToStr(Comision)+', 0, '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;

        // renglon  - COMISION VENDEDOR A PAGAR
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaComisionVendedorAPagar').AsString;
        q.Open;
        QTemp.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Venta Nº'+IntToStr(NumFact)+' - '+(cbTipo.Text)+' - '+(ClienteLabel.Caption)+' - '+(DocumentoLabel.Caption)+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+FloatToStr(Comision)+', '+QuotedStr(Oculto)+
        ' )';
        QTemp.ExecSQL;

//CONTABILIDAD---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  // Completa la Transaccion
        QTemp.Transaction.CommitRetaining;

  // Imprime la factura si el usuario quiere
if ((dm.ConfigQuery.FieldByName('Imprimir').AsString) <> 'NO') then
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 with ImprimirDataModule do
  begin

 //if dm.ConfigQuery.FieldByName('ImprimirMostrar').AsString <> 'SI' then RvSystem.DefaultDest:=rdPrinter;

ImprimirDataModule.Query.SQL.Text:='SELECT '+QuotedStr(dm.ConfigQuery.FieldByName('NOMBRE').AsString)+' As Empresa,'+
'  "Cliente".NOMBRE,'+
'  "Cliente".TITULAR,'+
'  "Cliente".DIRECCION,'+
'  "Cliente".DIRECCIONCOMERCIAL,'+
'  "Articulo".DESCRIPCION,'+
'  "VentaItem".VENTA,'+
'  "VentaItem".ARTICULO,'+
'  "VentaItem".CANTIDAD,'+
'  "VentaItem".PRECIO,'+
'  ("VentaItem".PRECIO * "VentaItem".CANTIDAD ) as PREXCANT,'+
'  "VentaItem".SERVICIO,'+
'  "VentaItem".DESCRIPCION AS DESCR,'+
'  "Venta".CODIGO,'+
'  "Venta".LETRA,'+
'  "Venta".FECHA,'+
'  "Venta".COMPROBANTE,'+
'  "Venta".IVA3,'+
'  "Venta".TOTAL,'+
'  "Venta".CONTADO,'+
'  "Venta".CLIENTE,'+
'  "Venta".SUBTOTAL,'+
'  "Venta".DESCUENTO,'+
'  "Venta".IMPUESTO,'+
'  "Venta".IVA2,'+
'  "Venta".IVA1,'+
'  "Venta".EXCENTO,'+
'  "Venta".SALDO,'+
'  "Venta".PAGADO'+
' FROM'+
'  "Venta"'+
'  INNER JOIN "VentaItem" ON ("Venta".CODIGO = "VentaItem".VENTA)'+
'  INNER JOIN "Articulo" ON ("VentaItem".ARTICULO = "Articulo".CODIGO)'+
'  INNER JOIN "Cliente" ON ("Venta".CLIENTE = "Cliente".CODIGO)'+
' WHERE'+
'  ("Venta".CODIGO = '+IntToStr(numfact)+' ) AND'+
'  ("Venta".LETRA = '+QuotedStr(cbTipo.Text)+' )'+
'';
ImprimirDataModule.Query.Open;
   RvProject.ProjectFile:=Path+dm.ConfigQuery.FieldByName('Reporte').AsString;
   RvProject.Execute;
   RvProject.Close;


  if (dm.ConfigQuery.FieldByName('Imprimir').AsString) <> 'NO' then
   begin
    ImprimirDataModule := TImprimirDataModule.Create(self);
 //  with ImprimirDataModule do
    begin
    //VTA
     ImprimirDataModule.Impr( ImprimirDataModule.VTA( IntToStr(numfact) , cbTipo.Text ) , '' );

    //Planes
     Impr( Contrato(IntToStr(numfact),cbTipo.Text),'Report\ContratoLeasing.rav' );


   if Query.Active=True then Query.Close;
   Query.SQL.Text:='SELECT * FROM "Contrato" WHERE "Contrato".NUMERO='+IntToStr(numfact);
   Query.Open;
   RvProject.ProjectFile:=Path+'Report\ContratoLeasing.rav';
   RvProject.Execute;
   RvProject.Close;
   Query.Close;


    //Planilla de Cobrador
     Impr( PlanillaCobrador(IntToStr(numfact),''),'Report\CartonCobranza.rav' );

   Query.SQL.Text:='SELECT'+
'  "Cobrador".NOMBRE AS COBRADOR,'+
'  "Cliente".ZONA,'+
'  "CtaCte".FECHA,'+
'  "CtaCte".SALDO,'+
'  "Cliente".NOMBRE AS CLIENTE,'+
'  "CtaCteItem".CUOTA,'+
'  "CtaCte".OPERACION'+
' FROM'+
'  "CtaCte"'+
'  INNER JOIN "CtaCteItem" ON ("CtaCte".CLIENTE = "CtaCteItem".CLIENTE) AND ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'+
'  INNER JOIN "Cliente" ON ("CtaCteItem".CLIENTE = "Cliente".CODIGO)'+
'  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)'+
' WHERE'+
'  ("CtaCte".OPERACION = '+IntToStr(numfact)+')'+
' ORDER BY'+
'  "CtaCteItem".CUOTA'+
'';
   Query.Open;
   RvProject.ProjectFile:=Path+'Report\CartonCobranza.rav';
   RvProject.Execute;
   RvProject.Close;
   Query.Close;

    end;
  ImprimirDataModule.Free;
 end;
 end;
end; }

Nuevo;
end;

procedure TCrearCreditoForm.CheckBox1Click(Sender: TObject);
begin
 CalculaTotales;
end;

procedure TCrearCreditoForm.FormShow(Sender: TObject);
begin
 nuevo;
end;

procedure TCrearCreditoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F1 then ClienteBitBtn.Click
  else
   IF Key = VK_F2 then PlanBitBtn.Click
    else
     if Key = VK_F3 then VendedorBitBtn.Click
      else
       IF Key = VK_F4 then CobradorBitBtn.Click
        else
         if Key = VK_F5 then AgregarBitBtn.Click
          else
           if Key = VK_F6 then QuitarBitBtn.Click
            else
             if Key = VK_F7 then CantidadBitBtn.Click
              else
               if Key = VK_F8 then NuevoBitBtn.Click
                else
                 if Key = VK_F12 then ProcesarBitBtn.Click
                  else
                   if Key = VK_Escape then Close;
end;

procedure TCrearCreditoForm.Valores (SubT, Imp, Tot: Double);
begin

end;

procedure TCrearCreditoForm.EntregaEditExit(Sender: TObject);
begin
 ProcesarBitBtn.SetFocus;
end;


procedure TCrearCreditoForm.FormCreate(Sender: TObject);
begin
 DM:=TDM.Create(self);
end;

procedure TCrearCreditoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          // if it's an enter key
  begin
   Key := #0;                                 // eat enter key
   Perform(WM_NEXTDLGCTL, 0, 0);            // move to next control
  end;
end;

procedure TCrearCreditoForm.CantidadBitBtnClick(Sender: TObject);
begin
 AgregarCantidadForm:=TAgregarCantidadForm.Create(self);
 try
  AgregarCantidadForm.ShowModal;
 finally
  if AgregarCantidadForm.CantidadEdit.Text <> '' then
   begin
    SGFact.Cells[3,SGFact.Row] := AgregarCantidadForm.CantidadEdit.Text;//cantidad
    SGFact.Cells[5,SGFact.Row] := Format('%8.2f',[StrToFloat(SGFact.Cells[4,SGFact.Row]) * StrToFloat(SGFact.Cells[3,SGFact.Row])]);//total
    SGFact.Cells[8,SGFact.Row] := FloatToStr(StrToFloat(SGFact.Cells[8,SGFact.Row]) * StrToFloat(SGFact.Cells[3,SGFact.Row]));//PRECIO DE COSTO
    CalculaTotales;
   end;
  AgregarCantidadForm.Free;
 end;
end;

procedure TCrearCreditoForm.VendedorBitBtnClick(Sender: TObject);
begin
 BuscarVendedorForm:=TBuscarVendedorForm.Create(self);
  try
   BuscarVendedorForm.ShowModal;
  finally
   with BuscarVendedorForm do
    begin
     VendedorEdit.Text:= Tabla.FieldByName('Codigo').AsString;
     Label39.Caption:= Tabla.FieldByName('Nombre').AsString;
     CtaComisionVendedor := Tabla.FieldByName('CtaNombre').AsString;
     CtaComisionVendedorAPagar := Tabla.FieldByName('CtaAnticipo').AsString;
     Comision := Tabla.FieldByName('Comision').Asfloat;
    end;
   BuscarVendedorForm.Free;
  end;
end;

procedure TCrearCreditoForm.PlanBitBtnClick(Sender: TObject);
begin
 BuscarPlanForm:=TBuscarPlanForm.Create(self);
  try
   BuscarPlanForm.ShowModal;
  finally
   PlanEdit.Text:= BuscarPlanForm.Tabla.FieldByName('CODIGO').AsString;
   PlanLabel.Caption:= '% '+BuscarPlanForm.Tabla.FieldByName('Nombre').AsString;
   InteresLabel.Caption:= BuscarPlanForm.Tabla.FieldByName('Interes').AsString;
   InteresEdit.Text := BuscarPlanForm.Tabla.FieldByName('Interes').AsString;
   CuotaCantidadEdit.Text := BuscarPlanForm.Tabla.FieldByName('Total').AsString;
   DiasCalculo:= BuscarPlanForm.Tabla.FieldByName('DiasCalculo').AsInteger;
   BuscarPlanForm.Free;
  end;
end;

procedure TCrearCreditoForm.BitBtn10Click(Sender: TObject);
begin
 CalculaTotales;
end;

procedure TCrearCreditoForm.CobradorBitBtnClick(Sender: TObject);
begin
 BuscarCobradorForm:=TBuscarCobradorForm.Create(self);
   try
      BuscarCobradorForm.ShowModal;
   finally
      CobradorEdit.Text:= BuscarCobradorForm.Tabla.FieldByName('Codigo').AsString;
      Label25.Caption:= BuscarCobradorForm.Tabla.FieldByName('Nombre').AsString;
      BuscarCobradorForm.Free;
   end;
end;

procedure TCrearCreditoForm.EntregaEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
CuotaImporteEdit.Text := '0';
if EntregaEdit.Text <> '' then CalculaTotales;
end;

procedure TCrearCreditoForm.CuotaCantidadEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if EntregaEdit.Text = '' then EntregaEdit.Text :='0';
CuotaImporteEdit.Text := '0';
if CuotaCantidadEdit.Text <>'' then CalculaTotales;
end;

procedure TCrearCreditoForm.InteresEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
CuotaImporteEdit.Text := '0';
if InteresEdit.Text <>'' then CalculaTotales;
end;

procedure TCrearCreditoForm.CuotaImporteEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//CuotaImporteEdit.Text := '0';
InteresEdit.Text := '0';//CuotaCantidadEdit.Text := '0';
if CuotaImporteEdit.Text <>'' then CalculaTotales;
end;

end.
