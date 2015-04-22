unit UFFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DataModule, OperacionDM, Grids,
  IBCustomDataSet, IBQuery, DBCtrls, IBTable;

type
  TFFormaPago = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LbSubTotal: TLabel;
    LbImpuesto: TLabel;
    LbTotal: TLabel;
    LbPagado: TLabel;
    LbSaldo: TLabel;
    PagoStringGrid: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    chequenroEdit: TEdit;
    tarnroEdit: TEdit;
    chequedetalleEdit: TEdit;
    chequediaEdit: TEdit;
    FECheque: TEdit;
    FETarjeta: TEdit;
    FEOtro: TEdit;
    FEContado: TEdit;
    ChequeTerceroEdit: TEdit;
    Aceptar: TBitBtn;
    Cancela: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Query: TIBQuery;
    tarjetaDBLookupComboBox: TDBLookupComboBox;
    DS: TDataSource;
    tarjetaIBQuery: TIBQuery;
    procedure AceptarClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
    procedure CalculaSaldo;
    procedure FEContadoChange(Sender: TObject);
    procedure FEChequeChange(Sender: TObject);
    procedure FETarjetaChange(Sender: TObject);
    procedure FEOtroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    ChequeCodCheque, ChequeNumero, ChequeDetalle, ChequeCodFactura,
      ChequeMntCheque, ChequeFecha, ChequeDias: string;
    { Public declarations }
    OK, Proveedor: Boolean;
    Pagado, Saldo: Double;
    procedure Valores(SubT, Imp, Tot: Double);
    procedure BuscarCheques;
    procedure TraerCheque;
    procedure QuitarCheque;
    procedure CalculaCheque;
  end;

var
  FFormaPago: TFFormaPago;
  SubTotal, Impuesto, Total: Double;
  Cuenta: Integer;

implementation

uses BuscarCheques;

{$R *.dfm}

Procedure GridRemoveRow(StrGrid: TStringGrid; DelRow: Integer);
Var
  Row: Integer;
begin
  If DelRow <= StrGrid.RowCount then
  Begin
    If (DelRow = StrGrid.RowCount - 1) AND (DelRow = 1) then
    begin
      StrGrid.Rows[DelRow].Clear;
      StrGrid.Cells[3, 1] := '0';
      StrGrid.Cells[4, 1] := '0.00';
      StrGrid.Cells[5, 1] := '0.00';
    end
    else if DelRow = StrGrid.RowCount - 1 then
      StrGrid.RowCount := StrGrid.RowCount - 1
    else
    begin
      For Row := DelRow To StrGrid.RowCount - 2 do
        StrGrid.Rows[Row].Assign(StrGrid.Rows[Row + 1]);
      StrGrid.RowCount := StrGrid.RowCount - 1;
    end;
  end;
end;

procedure TFFormaPago.Valores(SubT, Imp, Tot: Double);
begin
  SubTotal := SubT;
  Impuesto := Imp;
  Total := Tot;
  LbSubTotal.Caption := Format('%8.2n', [SubTotal]);
  LbImpuesto.Caption := Format('%8.2n', [Impuesto]);
  LbTotal.Caption := Format('%8.2n', [Total]);
  CalculaSaldo;
end;

procedure TFFormaPago.CalculaSaldo;
begin
  Saldo := 0;
  Pagado := 0;
  Pagado := Pagado + StrToFloat(FEContado.Text) + StrToFloat(FECheque.Text) +
    StrToFloat(FETarjeta.Text) + StrToFloat(FEOtro.Text) +
    StrToFloat(ChequeTerceroEdit.Text);
  Saldo := Total - Pagado;
  LbPagado.Caption := Format('%8.2n', [Pagado]);
  LbSaldo.Caption := Format('%8.2n', [Saldo]);
end;

procedure TFFormaPago.AceptarClick(Sender: TObject);
var
  i: Integer;
begin
  OK := True;
  // FormaPago(desc,vta,comp,ctac,pago,cont,cheq,chei,chen,ched,chedi,tarj,tarn,tarimp,otri,mone,meim,metc,sald,paga,fech,ch3,ch3i,ch3n,ch3d,ch3di :string);
  OperacionDataModule.FormaPago('CtaCte', '0', '0', '0',
    FloatToStr(FFormaPago.Pagado), FFormaPago.FEContado.Text, '0',
    FFormaPago.FECheque.Text, FFormaPago.chequenroEdit.Text,
    FFormaPago.chequedetalleEdit.Text, FFormaPago.chequediaEdit.Text, '0',
    FFormaPago.tarnroEdit.Text, FFormaPago.FETarjeta.Text,
    FFormaPago.FEOtro.Text, '0', '0', '0', FloatToStr(FFormaPago.Saldo),
    FloatToStr(FFormaPago.Pagado), '0', '0', FFormaPago.ChequeTerceroEdit.Text,
    '0', '0', '0');

  if Label13.Visible = True Then
    if PagoStringGrid.Cells[1, 1] <> '' then
    begin
      // Iniciar la Transaccion

      // PASAR LOS DATOS A CHEQUES ENTREGADOS
      For i := 1 to PagoStringGrid.RowCount - 1 do
      begin
        Query.SQL.Text :=
          'INSERT INTO "ChequeEntregado" (NUMERO, CHEQUE, DESCRIPCION, FACTURA, IMPORTE, FECHA, DIAS) VALUES '
          + '(' + PagoStringGrid.Cells[6, i] + ',' + PagoStringGrid.Cells[0, i]
          + ',' + QuotedStr(PagoStringGrid.Cells[1, i]) + ',' +
          PagoStringGrid.Cells[4, i] + ',' + PagoStringGrid.Cells[2, i] + ',' +
          QuotedStr(PagoStringGrid.Cells[5, i]) + ',' + PagoStringGrid.Cells
          [3, i] + ')';
        Query.ExecSQL;
      end;
      // ELIMINAR CHEQUE DE CARTERA
      For i := 1 to PagoStringGrid.RowCount - 1 do
      begin
        Query.SQL.Text := 'DELETE * FROM "Cheque" WHERE "Cheque".CODIGO=' +
          PagoStringGrid.Cells[6, i];
        Query.ExecSQL;
      end;
      // Completa la Transaccion
      Query.Transaction.CommitRetaining;
    end;
  Close;
end;

procedure TFFormaPago.CancelaClick(Sender: TObject);
begin
  OK := False;
  Close;
end;

procedure TFFormaPago.FEContadoChange(Sender: TObject);
begin
  if FEContado.Text <> '' then
    CalculaSaldo;
end;

procedure TFFormaPago.FEChequeChange(Sender: TObject);
begin
  if FECheque.Text <> '' then
    CalculaSaldo;
end;

procedure TFFormaPago.FETarjetaChange(Sender: TObject);
begin
  if FETarjeta.Text <> '' then
    CalculaSaldo;
end;

procedure TFFormaPago.FEOtroChange(Sender: TObject);
begin
  if FEOtro.Text <> '' then
    CalculaSaldo;
end;

procedure TFFormaPago.FormShow(Sender: TObject);
begin
  TDM.Create(self);
  tarjetaIBQuery.Open;
  FEContado.Text := '0.00';
  FECheque.Text := '0.00';
  FETarjeta.Text := '0.00';
  FEOtro.Text := '0.00';
  if Proveedor = True then
  begin
    Label13.Visible := True;
    Label14.Visible := True;
    PagoStringGrid.Visible := True;
    PagoStringGrid.Cells[0, 0] := 'Numero';
    PagoStringGrid.Cells[1, 0] := 'Detalle';
    PagoStringGrid.Cells[2, 0] := 'Importe';
    PagoStringGrid.Cells[3, 0] := 'Días';
    PagoStringGrid.Cells[4, 0] := 'Factura';
    PagoStringGrid.Cells[5, 0] := 'Fecha';
    PagoStringGrid.Cells[6, 0] := 'Cheque';
    Cuenta := 1;
  end;
end;

procedure TFFormaPago.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F4 then
    BuscarCheques;
  IF Key = VK_F6 then
    QuitarCheque;
end;

procedure TFFormaPago.BuscarCheques;
begin
  BuscarChequesForm := TBuscarChequesForm.Create(self);
  try
    BuscarChequesForm.ShowModal;
  finally
    ChequeCodCheque := BuscarChequesForm.Codigo;
    BuscarChequesForm.Free;
  end;
  TraerCheque;
end;

procedure TFFormaPago.TraerCheque;
begin
  If Cuenta > 1 then
    PagoStringGrid.RowCount := PagoStringGrid.RowCount + 1;
  Query.SQL.Text := 'SELECT * FROM "Cheque" WHERE "Cheque".CODIGO=' +
    ChequeCodCheque;
  Query.Open;
  PagoStringGrid.Cells[0, Cuenta] := Query.FieldByName('NUMERO').AsString;
  // NUMERO DEL CHEQUE;
  PagoStringGrid.Cells[1, Cuenta] := Query.FieldByName('DESCRIPCION').AsString;
  // DETALLE DEL CHEQUE;
  PagoStringGrid.Cells[2, Cuenta] := Query.FieldByName('IMPORTE').AsString;
  // IMPORTE DEL CHEQUE
  PagoStringGrid.Cells[3, Cuenta] := Query.FieldByName('DIAS').AsString;
  // A CUANTOS DIAS ESTA EL CHEQUE

  PagoStringGrid.Cells[4, Cuenta] := Query.FieldByName('FACTURA').AsString;
  // CODIGO DE FACTURA DEL CHEQUE;
  PagoStringGrid.Cells[5, Cuenta] := Query.FieldByName('FECHA').AsString;
  // FECHA DE EMISION DEL CHEQUE
  PagoStringGrid.Cells[6, Cuenta] := Query.FieldByName('CODIGO').AsString;
  // FECHA DE EMISION DEL CHEQUE

  Cuenta := Cuenta + 1;
  Query.Close;

  CalculaCheque;
end;

procedure TFFormaPago.CalculaCheque;
var
  i: Integer;
begin
  ChequeTerceroEdit.Text := '0';
  // Calcula el Total
  For i := 1 to PagoStringGrid.RowCount - 1 do
  begin
    IF (PagoStringGrid.Cells[2, i] = '') then
      PagoStringGrid.Cells[2, i] := '0';
    ChequeTerceroEdit.Text := FloatToStr(StrToFloat(ChequeTerceroEdit.Text) +
      StrToFloat(PagoStringGrid.Cells[2, i])); // TOTAL
    CalculaSaldo;
  end;
end;

procedure TFFormaPago.QuitarCheque;
begin
  GridRemoveRow(PagoStringGrid, PagoStringGrid.Row);
  If Cuenta > 1 then
    Cuenta := Cuenta - 1;
  CalculaCheque;
end;

end.
