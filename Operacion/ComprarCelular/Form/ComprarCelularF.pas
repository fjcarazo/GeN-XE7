unit ComprarCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Grids,
  DBGrids, ValEdit, DateUtils, DataModule;

type
  TComprarCelularForm = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ProveedorLabel: TLabel;
    QTemp: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cbTipo: TComboBox;
    Label22: TLabel;
    Label23: TLabel;
    q: TADOQuery;
    Label26: TLabel;
    Label27: TLabel;
    ADOQuery1: TADOQuery;
    GerenteLabel: TLabel;
    EmpresaQuery: TADOQuery;
    ConfigQuery: TADOQuery;
    Label10: TLabel;
    Label24: TLabel;
    SGTotal: TStringGrid;
    FLEPorcDesc: TEdit;
    SGFact: TStringGrid;
    PagareCheckBox: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure RJustifyEdit(var ThisEdit: TEdit);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Quicksort(Grid: TStringGrid; var List: array of integer;
      min, max, sortcol, datatype: integer);
    procedure Sortgrid(Grid: TStringGrid; sortcol, datatype: integer);
    procedure CalculaTotales;
    procedure BitBtn3Click(Sender: TObject);
    procedure FLEPorcDescExit(Sender: TObject);
    procedure SGFactDblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbTipoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComprarCelularForm: TComprarCelularForm;
  Cuenta: integer;
  // CESubTotal, CEDesc, CEImpuesto, CETotal : TControlCanvas;
  subtotal, Impuesto, Flete, NG21, IVA21, NG105, IVA105, NGO, IVAO, desc, costo,
    reparaciones, Total, IIBB, NGIIBB, Exento: Double;
  Tipo, SqL, code, Proveedor, CtaNombre, CtaTipo, CtaIIBB, CtaAnticipo: string;

implementation

uses UFFormaPago, UFBuscaProve, SeleccionarCelularF;

{$R *.dfm}

procedure TComprarCelularForm.RJustifyEdit(var ThisEdit: TEdit);
var
  Left, Width: integer;
  GString: String;
  Rgn: TRect;
  TheCanvas: TControlCanvas;
begin
  TheCanvas := TControlCanvas.Create;
  try
    TheCanvas.Control := ThisEdit;
    GString := ThisEdit.Text;
    Rgn := ThisEdit.ClientRect;
    TheCanvas.FillRect(Rgn);
    Width := TheCanvas.TextWidth(GString);
    Left := Rgn.Right - Width - 1;
    TheCanvas.TextRect(Rgn, Left, 0, GString);
  finally
    TheCanvas.Free;
  end;
end;

Procedure GridRemoveRow(StrGrid: TStringGrid; DelRow: integer);
Var
  Row: integer;
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

procedure TComprarCelularForm.CalculaTotales;
var
  i: integer;
begin
  // Calcula los totales de la factura
  subtotal := 0;
  Impuesto := 0;
  desc := 0;
  Total := 0;
  costo := 0;
  reparaciones := 0;
  IVA21 := 0;
  IVA105 := 0;
  IVAO := 0;

  // Calcula el SubTotal
  For i := 1 to SGFact.RowCount - 1 do
  begin
    IF (SGFact.Cells[5, i] = '') then
      SGFact.Cells[5, i] := '0';
    IF (SGFact.Cells[6, i] = '') then
      SGFact.Cells[6, i] := '0';
    IF (SGFact.Cells[8, i] = '') then
      SGFact.Cells[8, i] := '0';
    IF (SGFact.Cells[9, i] = '') then
      SGFact.Cells[9, i] := '0';
    IF (SGFact.Cells[11, i] = '') then
      SGFact.Cells[11, i] := '0';
    subtotal := subtotal + StrToFloat(SGFact.Cells[5, i]); // SUBTOTAL
    IF SGFact.Cells[8, i] <> '' then
      costo := costo + StrToFloat(SGFact.Cells[8, i]); // Calcula el Costo
    IF SGFact.Cells[9, i] <> '' then
      reparaciones := reparaciones + StrToFloat(SGFact.Cells[9, i]);
    // Calcula las reparaciones
  end;

  // Calcula el monto para cobrar el impuesto de ventas

  For i := 1 to SGFact.RowCount - 1 do
  begin
    IF (SGFact.Cells[5, i] = '') then
      SGFact.Cells[5, i] := '0';
    IF (SGFact.Cells[6, i] = '') then
      SGFact.Cells[6, i] := '0';
    If (SGFact.Cells[6, i] = '21') then
    begin
      NG21 := NG21 + StrToFloat(SGFact.Cells[5, i]); // NETO GRABADO 21%
      IVA21 := (IVA21 + Abs((StrToFloat(SGFact.Cells[5, i]) * 1.21) -
        StrToFloat(SGFact.Cells[5, i])));
    end; // IVA 21% 100 * 1.21 - 100 = 21
    IF (SGFact.Cells[6, i] = '10.5') then
    begin
      NG105 := NG105 + StrToFloat(SGFact.Cells[5, i]); // NETO GRABADO 10.5%
      IVA105 := (IVA105 + Abs((StrToFloat(SGFact.Cells[5, i]) * 1.105) -
        StrToFloat(SGFact.Cells[5, i])));
    end; // IVA 10.5% 100 * 1.105 - 100 = 10.5
    IF (SGFact.Cells[6, i] <> '21') and (SGFact.Cells[6, i] <> '10.5') and
      (SGFact.Cells[6, i] <> '0') and (SGFact.Cells[6, i] <> '') then
    begin
      NGO := NGO + StrToFloat(SGFact.Cells[5, i]); // NETO GRABADO
      IVAO := (IVAO + Abs((StrToFloat(SGFact.Cells[5, i]) /
        (StrToFloat(SGFact.Cells[6, i]) * 100 + 1)) -
        StrToFloat(SGFact.Cells[5, i])));
    end; // IVA
  end;
  if cbTipo.ItemIndex = 0 then
    Impuesto := IVA21 + IVA105 + IVAO;

  desc := (subtotal * StrToFloat(FLEPorcDesc.Text) / 100);
  subtotal := (subtotal - desc - Impuesto);
  Total := (subtotal);
  Total := (Total + Impuesto);
  // escribe los valores en las celdas
  SGTotal.Cells[1, 0] := Format('%8.2n', [subtotal]);
  SGTotal.Cells[1, 1] := Format('%8.2n', [desc]);
  SGTotal.Cells[1, 2] := Format('%8.2n', [Impuesto]);
  SGTotal.Cells[1, 3] := '0.00';
  SGTotal.Cells[1, 4] := Format('%8.2n', [Total]);
end;

procedure TComprarCelularForm.cbTipoChange(Sender: TObject);
begin
  CalculaTotales;
end;

procedure TComprarCelularForm.Quicksort(Grid: TStringGrid;
  var List: array of integer; min, max, sortcol, datatype: integer);
{ List is a list of rownumbers in the grid being sorted }
var
  med_value: integer;
  hi, lo, i: integer;

  function compare(val1, val2: string): integer;
  var
    int1, int2: integer;
    float1, float2: extended;
    errcode: integer;
  begin
    case datatype of
      0:
        result := ANSIComparetext(val1, val2);
      1:
        begin
          int1 := strtointdef(val1, 0);
          int2 := strtointdef(val2, 0);
          if int1 > int2 then
            result := 1
          else if int1 < int2 then
            result := -1
          else
            result := 0;
        end;

      2:
        begin
          val(val1, float1, errcode);
          if errcode <> 0 then
            float1 := 0;
          val(val2, float2, errcode);
          if errcode <> 0 then
            float2 := 0;
          if float1 > float2 then
            result := 1
          else if float1 < float2 then
            result := -1
          else
            result := 0;
        end;
    else
      result := 0;
    end;
  end;

begin
  { If the list has <= 1 element, it's sorted }
  if (min >= max) then
    Exit;
  { Pick a dividing item randomly }
  i := min + Trunc(Random(max - min + 1));
  med_value := List[i];
  List[i] := List[min]; { Swap it to the front so we can find it easily }
  { Move the items smaller than this into the left
    half of the list. Move the others into the right }
  lo := min;
  hi := max;
  while (True) do
  begin
    // Look down from hi for a value < med_value.
    while compare(Grid.Cells[sortcol, List[hi]],
      Grid.Cells[sortcol, med_value]) >= 0 do
    (* ANSIComparetext(Grid.cells[sortcol,List[hi]]
      ,grid.cells[sortcol,med_value])>=0 do *)
    begin
      hi := hi - 1;
      if (hi <= lo) then
        Break;
    end;
    if (hi <= lo) then
    begin { We're done separating the items }
      List[lo] := med_value;
      Break;
    end;

    // Swap the lo and hi values.
    List[lo] := List[hi];
    inc(lo); { Look up from lo for a value >= med_value }
    while compare(Grid.Cells[sortcol, List[lo]],
      Grid.Cells[sortcol, med_value]) < 0 do
    begin
      inc(lo);
      if (lo >= hi) then
        Break;
    end;
    if (lo >= hi) then
    begin { We're done separating the items }
      lo := hi;
      List[hi] := med_value;
      Break;
    end;
    List[hi] := List[lo];
  end;
  { Sort the two sublists }
  Quicksort(Grid, List, min, lo - 1, sortcol, datatype);
  Quicksort(Grid, List, lo + 1, max, sortcol, datatype);
end;

procedure TComprarCelularForm.Sortgrid(Grid: TStringGrid;
  sortcol, datatype: integer);
var
  i: integer;
  tempgrid: TStringGrid;
  List: array of integer;
begin
  screen.cursor := crhourglass;
  tempgrid := TStringGrid.Create(self);
  with tempgrid do
  begin
    RowCount := Grid.RowCount;
    colcount := Grid.colcount;
    fixedrows := Grid.fixedrows;
  end;
  with Grid do
  begin
    setlength(List, RowCount - fixedrows);
    for i := fixedrows to RowCount - 1 do
    begin
      List[i - fixedrows] := i;
      tempgrid.Rows[i].Assign(Grid.Rows[i]);
    end;
    Quicksort(Grid, List, 0, RowCount - fixedrows - 1, sortcol, datatype);
    for i := 0 to RowCount - fixedrows - 1 do
    begin
      Rows[i + fixedrows].Assign(tempgrid.Rows[List[i]])
    end;
    Row := fixedrows;
  end;
  tempgrid.Free;
  setlength(List, 0);
  screen.cursor := crdefault;
end;

procedure TComprarCelularForm.BitBtn1Click(Sender: TObject);
begin
  { FBuscaProve := TFBuscaProve.Create(self);
    try
    FBuscaProve.ShowModal;
    finally
    Edit1.Text := FBuscaProve.ATProve.FieldByName('CodProve').AsString;
    with FBuscaProve do
    begin
    ProveedorLabel.Caption := ATProve.FieldByName('Nombre').AsString;
    Label3.Caption := ATProve.FieldByName('Direccion1').AsString;
    Label4.Caption := ATProve.FieldByName('Direccion2').AsString;
    Label13.Caption := ATProve.FieldByName('Telefono').AsString;
    Label14.Caption := ATProve.FieldByName('Celular').AsString;
    Label15.Caption := ATProve.FieldByName('Rubro').AsString;
    Label19.Caption := ATProve.FieldByName('Terminos').AsString;
    Label23.Caption :=
    DateToStr(IncDay(now, ATProve.FieldByName('DiasCredito').AsInteger));
    Label21.Caption := ATProve.FieldByName('DiasCredito').AsString;
    GerenteLabel.Caption := ATProve.FieldByName('Gerente').AsString;
    Label27.Caption := ATProve.FieldByName('CUIT').AsString;
    // CUENTA
    CtaNombre := ATProve.FieldByName('CtaNombre').AsString;
    CtaTipo := ATProve.FieldByName('CtaTipo').AsString;
    CtaAnticipo := ATProve.FieldByName('CtaAnticipo').AsString;
    CtaIIBB := ATProve.FieldByName('CtaIIBB').AsString;

    PagareCheckBox.Checked := ATProve.FieldByName('PAGARE').AsBoolean;

    if (EmpresaQuery.FieldByName('CondicionIVA').AsString = 'RI') and
    (ATProve.FieldByName('IVA').AsString = 'RI') then
    cbTipo.ItemIndex := 0
    else if (ATProve.FieldByName('IVA').AsString = 'RI') then
    cbTipo.ItemIndex := 1
    else
    cbTipo.ItemIndex := 2;
    end;
    FBuscaProve.Free;
    end;
    CalculaTotales; }
end;

procedure TComprarCelularForm.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TComprarCelularForm.BitBtn2Click(Sender: TObject);
var
  i: integer;
begin
  // ************ Boton de Agregar **************
  SeleccionarCelularForm := TSeleccionarCelularForm.Create(self);
  SeleccionarCelularForm.Precio := 'Costo';
  SeleccionarCelularForm.Proveedor := ProveedorLabel.Caption;
  // Filtra las series que ya estan en la factura
  If (SGFact.RowCount = 2) AND (SGFact.Cells[2, 1] = '') then
    SeleccionarCelularForm.Filtro := ''
  else
  begin
    SeleccionarCelularForm.Filtro := 'NumSerie <> ' + SGFact.Cells[2, 1];
    i := 2;
    While i < SGFact.RowCount do
    begin
      SeleccionarCelularForm.Filtro := SeleccionarCelularForm.Filtro +
        ' AND NumSerie <> ' + SGFact.Cells[2, i];
      i := i + 1;
    end;
  end;
  try
    SeleccionarCelularForm.ShowModal;
  finally
    If SeleccionarCelularForm.Cancela = False then
    Begin
      If Cuenta > 1 then
        SGFact.RowCount := SGFact.RowCount + 1;
      QTemp.Close;
      QTemp.SqL.Text :=
        'SELECT Descripcion+" "+Categoria+" "+SubCategoria AS Descr, * FROM Articulos '
        + 'WHERE CodParte = ' + (SeleccionarCelularForm.CodigoEdit.Text);
      QTemp.Open;
      SGFact.Cells[0, Cuenta] := SeleccionarCelularForm.CodigoEdit.Text;
      SGFact.Cells[1, Cuenta] := QTemp.Fields[0].AsString;
      SGFact.Cells[2, Cuenta] := QTemp.Fields.FieldByName('ImpOtros').AsString;
      SGFact.Cells[3, Cuenta] := SeleccionarCelularForm.CantidadEdit.Text;
      SGFact.Cells[6, Cuenta] := FloatToStr(QTemp.FieldByName('Tasa').AsFloat);
      // IVA
      SGFact.Cells[4, Cuenta] :=
        Format('%8.2f', [StrToFloat(SeleccionarCelularForm.FloatEdit1.Text) /
        (StrToFloat(SGFact.Cells[6, Cuenta]) / 100 + 1) -
        StrToFloat(SGFact.Cells[2, Cuenta])]);
      SGFact.Cells[5, Cuenta] :=
        Format('%8.2f', [StrToFloat(SGFact.Cells[4, Cuenta]) *
        StrToFloat(SGFact.Cells[3, Cuenta])]);
      SGFact.Cells[8, Cuenta] :=
        Format('%8.2f', [QTemp.FieldByName('Costo').AsFloat]);
      // PRECIO DE COSTO
      SGFact.Cells[9, Cuenta] := QTemp.FieldByName('CodIngresosBrutos')
        .AsString; // ACTIVIDAD DE MONOTRIBUTO
      q.SqL.Text := 'SELECT * FROM IngresosBrutos WHERE CodIngresosBrutos=' +
        QuotedStr(SGFact.Cells[9, Cuenta]);
      q.Open;
      SGFact.Cells[10, Cuenta] :=
        Format('%8.2f', [q.FieldByName('Porcentaje').AsFloat]);
      // PORCENTAJE DE INGRESOS BRUTOS
      Cuenta := Cuenta + 1;
      QTemp.Close;
      SGFact.Cells[11, Cuenta] := SeleccionarCelularForm.CodigoBarraEdit.Text;
      Sortgrid(SGFact, 0, 0);
      CalculaTotales;
    end;
    SeleccionarCelularForm.Free;
  end;
  BitBtn4.SetFocus;
end;

procedure TComprarCelularForm.BitBtn3Click(Sender: TObject);
begin
  GridRemoveRow(SGFact, SGFact.Row);
  If Cuenta > 1 then
    Cuenta := Cuenta - 1;
  CalculaTotales;
end;

procedure TComprarCelularForm.FLEPorcDescExit(Sender: TObject);
begin
  CalculaTotales;
end;

procedure TComprarCelularForm.SGFactDblClick(Sender: TObject);
var
  i: integer;
begin
  SeleccionarCelularForm := TSeleccionarCelularForm.Create(self);
  // Filtra las series que ya estan en la factura
  If (SGFact.RowCount = 2) AND (SGFact.Cells[2, 1] = '') then
    SeleccionarCelularForm.Filtro := ''
  else
  begin
    SeleccionarCelularForm.Filtro := 'NumSerie <> ' + SGFact.Cells[2, 1];
    i := 2;
    While i < SGFact.RowCount do
    begin
      If i <> SGFact.Row then
        SeleccionarCelularForm.Filtro := SeleccionarCelularForm.Filtro +
          ' AND NumSerie <> ' + SGFact.Cells[2, i];
      i := i + 1;
    end;
  end;
  // Carga los datos de la linea en el form
  SeleccionarCelularForm.CodigoEdit.Text := SGFact.Cells[0, SGFact.Row];
  SeleccionarCelularForm.FloatEdit1.Text := SGFact.Cells[4, SGFact.Row];
  try
    SeleccionarCelularForm.ShowModal;
  finally
    If SeleccionarCelularForm.Cancela = False then
    Begin
      QTemp.Close;
      QTemp.SqL.Text :=
        'SELECT Descripcion+" "+Categoria+" "+SubCategoria AS Descr, Precio1 FROM Articulos '
        + 'WHERE CodParte = ' + (SeleccionarCelularForm.CodigoEdit.Text);
      QTemp.Open;
      SGFact.Cells[0, SGFact.Row] := SeleccionarCelularForm.CodigoEdit.Text;
      SGFact.Cells[1, SGFact.Row] := QTemp.Fields[0].AsString;
      SGFact.Cells[3, SGFact.Row] := '1';
      SGFact.Cells[4, SGFact.Row] :=
        Format('%8.2f', [StrToFloat(SeleccionarCelularForm.FloatEdit1.Text)]);
      SGFact.Cells[5, SGFact.Row] :=
        Format('%8.2f', [StrToFloat(SGFact.Cells[4, SGFact.Row]) *
        StrToFloat(SGFact.Cells[3, SGFact.Row])]);
      Sortgrid(SGFact, 0, 0);
      CalculaTotales;
    end;
    SeleccionarCelularForm.Free;
  end;
end;

procedure TComprarCelularForm.BitBtn4Click(Sender: TObject);
var
  numfact, i, c, OrdTrans: integer;
  Fecha, FechaVence, iv: String;
  FPagoOK: Boolean;
  MntContado, MntCheque, MntCheque3ro, NroCheque, DetCheque, DiaCheque,
    MntTarjeta, NroTarjeta, DetTarjeta, MntOtros, Saldo, Pagado: String;
  BalanceAnterior, BalanceTotal: Double;
begin
  FFormaPago := TFFormaPago.Create(self);
  FFormaPago.Proveedor := True;
  FFormaPago.Valores(subtotal, Impuesto, Total);
  try
    FFormaPago.ShowModal;
  finally
    FPagoOK := FFormaPago.OK;
    MntContado := FFormaPago.FEContado.Text;
    MntCheque := FFormaPago.FECheque.Text;
    MntCheque3ro := FFormaPago.ChequeTerceroEdit.Text;
    { NroCheque := FFormaPago.Edit1.Text;
      DetCheque := FFormaPago.Edit3.Text;
      DiaCheque := FFormaPago.Edit5.Text;
      MntTarjeta := FFormaPago.FETarjeta.Text;
      NroTarjeta := FFormaPago.Edit2.Text;
      DetTarjeta := FFormaPago.Edit4.Text; }
    MntOtros := FFormaPago.FEOtro.Text;
    Saldo := Format('%8.2f', [FFormaPago.Saldo]);
    Pagado := FloatToStr(FFormaPago.Pagado);
    FFormaPago.Free;
  end;
  if StrToFloat(Saldo) > 0.04 then
    Tipo := 'C'
  else
    Tipo := 'F';
  If FPagoOK then
  begin
    with FormatSettings do
    begin
      // MntContado:=FloatToStr( StrToFloat(Saldo)+StrToFloat(Saldo)+StrToFloat(Saldo));
      ShortDateFormat := 'yyyy-mm-dd';
      Fecha := DateToStr(now);
      if Label21.Caption <> '' then
        FechaVence := DateToStr(IncDay(now, (StrToInt(Label21.Caption))));
      ShortDateFormat := 'dd/mm/yyyy';
    end;
    // Obtener el numero de Compra
    QTemp.SqL.Text := 'Select Max(CodCompra) From Compra where Tipo = ' +
      QuotedStr(Tipo);
    QTemp.Open;
    If QTemp.RecordCount = 0 then
      numfact := 1
    else
      numfact := QTemp.Fields[0].AsInteger + 1;
    QTemp.Close;
    // Iniciar la Transaccion
    { DM.AC1.BeginTrans; }
    try
      // Insertar en la tabla de Compra si NO tiene ORDEN
      QTemp.SqL.Text :=
        'Insert Into Compra ( CodCompra, Secuencia, Tipo, Fecha, CodProve, Terminos, OrdenCompra, CodVendedor, Excento, TasaImpuesto, Anulada, MntEnvio, MntSubTotal, MntDescuento, MntImpuesto, MntTotal, '
        + 'MntContado, MntCheque, MntTarjeta, MntOtros, Saldo, Pagado, TC, DetPago, Hora, Letra) Values '
        + '( ' + IntToStr(numfact) + ', 0, ' + QuotedStr(Tipo) + ', ' +
        QuotedStr(Fecha) + ', ' + Edit1.Text + ', ' + QuotedStr(Label19.Caption)
        + ', ' + QuotedStr(Edit4.Text) + ', ' + QuotedStr(Edit3.Text) +
        ', False, ''0.21'', False, ''0.00'', ' + QuotedStr(SGTotal.Cells[1, 0])
        + ', ' + QuotedStr(SGTotal.Cells[1, 1]) + ', ' +
        QuotedStr(SGTotal.Cells[1, 2]) + ', ' + QuotedStr(SGTotal.Cells[1, 4]) +
        ', ' + QuotedStr(MntContado) + ', ' + QuotedStr(MntCheque) + ', ' +
        QuotedStr(MntTarjeta) + ', ' + QuotedStr(MntOtros) + ', ' +
        QuotedStr(Saldo) + ', ' + Pagado + ', ' + QuotedStr(FloatToStr(0)) +
        ', ' + QuotedStr('Cheque: ' + DetCheque + ' $' + MntCheque + ' a días '
        + DiaCheque + ', Tarjeta: ' + DetTarjeta + ' $' + MntTarjeta) + ', ' +
        QuotedStr(TimeToStr(Time)) + ', ' + QuotedStr(cbTipo.Text) + ')';
      QTemp.ExecSQL;

      // Insertar en la tabla de CompraItem
      For i := 1 to SGFact.RowCount - 1 do
      begin
        if SGFact.Cells[0, i] <> '1' then
          detalle := SGFact.Cells[1, i]
        else
          detalle := memo;
        if SGFact.Cells[6, i] = 'Si' then
          iv := 'True)'
        else
          iv := 'False)';
        SqL := 'Insert Into CompraItem Values ( ' + IntToStr(numfact) + ', 0, '
          + QuotedStr(Tipo) + ', ' + IntToStr(i) + ', ' + (SGFact.Cells[0, i]) +
          ', ' + (SGFact.Cells[2, i]) + ', ' + (SGFact.Cells[3, i]) + ', ' +
          (SGFact.Cells[4, i]) + ', ' + SGFact.Cells[6, i] + ', ' +
          IntToStr(numfact) + ', ' + QuotedStr(detalle) + ');';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de Cheque
      if NroCheque <> '' then
      begin
        SqL := 'Insert Into Cheque (Numero, Detalle, CodFactura, MntCheque, Fecha, Dias) Values'
          + ' (' + NroCheque + ', ' + QuotedStr(DetCheque) + ', ' +
          IntToStr(numfact) + ', ' + MntCheque + ', ' + DateToStr(Date) + ', ' +
          DiaCheque + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;
      // Insertar en la Tabla Caja
      if StrToFloat(MntCheque) > 0 then
      begin
        SqL := 'Insert Into Caja (Detalle, Haber, Fecha, Hora) Values' + ' (' +
          QuotedStr('Cheque') + ', ' + MntCheque + ', ' +
          QuotedStr(DateToStr(Date)) + ', ' + QuotedStr(TimeToStr(Time)) + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Insertar en la Tabla Caja
      if StrToFloat(MntContado) > 0 then
      begin
        SqL := 'Insert Into Caja (Detalle, Haber, Fecha, Hora) Values' + ' (' +
          QuotedStr('Efectivo') + ', ' + MntContado + ', ' +
          QuotedStr(DateToStr(Date)) + ', ' + QuotedStr(TimeToStr(Time)) + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de Tarjeta
      if NroTarjeta <> '' then
      begin
        SqL := 'Insert Into Tarjeta (Numero, Detalle, CodFactura, MntTarjeta, Fecha) Values'
          + ' (' + NroTarjeta + ', ' + QuotedStr(DetTarjeta) + ', ' +
          IntToStr(numfact) + ', ' + MntTarjeta + ', ' + DateToStr(Date) + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de CtaCte
      if Tipo = 'C' then
      begin
        QTemp.SqL.Text := 'SELECT * FROM CtaCte WHERE CodProve = ' + Edit1.Text;
        QTemp.Active := True;
        if QTemp.RecordCount > 0 then
          SqL := 'Update CtaCte Set Saldo = Saldo + ' +
            FloatToStr(-StrToFloat(Saldo)) + ', Fecha = ' + DateToStr(Date) +
            ' Where CodProve = ' + Edit1.Text
        else
          SqL := 'Insert Into CtaCte (CodProve, Fecha, Hora, Saldo) Values (' +
            Edit1.Text + ',' + DateToStr(Date) + ',' + QuotedStr(TimeToStr(Time)
            ) + ',' + FloatToStr(-StrToFloat(Saldo)) + ')';
        QTemp.Close;
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de CtaCte Item
      if Tipo = 'C' then
      begin
        i := 0;
        For i := 1 to SGFact.RowCount - 1 do
        begin
          if SGFact.Cells[0, i] <> '1' then
            detalle := SGFact.Cells[1, i]
          else
            detalle := memo;
          if SGFact.Cells[6, i] = 'Si' then
            iv := 'True)'
          else
            iv := 'False)';
          QTemp.SqL.Text :=
            'Insert Into CtaCteItem (CodProve, CodFactura, Linea, Fecha, Hora, CodParte, Detalle, Precio, Cantidad, Importe) Values'
            + '( ' + Edit1.Text + ',' + IntToStr(numfact) + ',' + IntToStr(i) +
            ',' + DateToStr(Date) + ',' + QuotedStr(TimeToStr(Time)) + ',' +
            (SGFact.Cells[0, i]) + ',' + QuotedStr(SGFact.Cells[1, i]) + ',' +
            (SGFact.Cells[4, i]) + ',' + (SGFact.Cells[3, i]) + ',' +
            (SGFact.Cells[5, i]) + ')';
          QTemp.ExecSQL;
        end;
      end;

      // Insertar en la tabla de Servicios
      if memo <> '' then
      begin
        SqL := 'Insert Into Servicios Values (' + IntToStr(numfact) + ',' +
          QuotedStr(memo) + ',' + DateToStr(Date) + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;

      // Actualizar la tabla de Articulos
      For i := 1 to SGFact.RowCount - 1 do
      begin
        q.SqL.Text := 'Select * From Articulos where  CodParte = ' +
          (SGFact.Cells[0, i]);
        q.Open;
        if q.FieldByName('UltCosto').AsFloat < 0.00001 then // ultimo costo
        begin
          QTemp.SqL.Text := 'Update Articulos Set UltCosto = ' +
            (SGFact.Cells[4, i]) + ' Where ' + 'CodParte = ' +
            (SGFact.Cells[0, i]);
          QTemp.ExecSQL;
        end;

        { if SGFact.Cells[11,i] <> '' then
          begin
          QTemp.SQL.Text := 'Insert Into Articulos Values ('+
          '  1,"ARTICULO",0,'+
          ' 2000,2000,5440,5840,6240,3320,3520,3720,6040,0,2720,'+
          ' 2920,3120, 3020,"Otros","Varios","Otros","Varios","","c/u",2180,0,'+
          ' "",0,21,5,"0",0,0,0,"01/01/2010", "",'+
          ' "Nacional","11075776","Otros",0,90,"01/01/2010",0,"",0,0,'+
          ' 0,0,0,"","",9,13,9,66)';
          QTemp.ExecSQL;
          end
          else }

        begin
          QTemp.SqL.Text := 'Update Articulos Set Disponible = Disponible + ' +
            SGFact.Cells[3, i] + ', Costo = ' + (SGFact.Cells[4, i]) + ' Where '
            + 'CodParte = ' + (SGFact.Cells[0, i]);
          QTemp.ExecSQL;
        end;
        q.Close;

      end;

      // ++CONTABILIDAD ******************************************************************************************************************************************************************************************************

      // Insertar en el Libro IVA Compras
      if cbTipo.ItemIndex <> 4 then // en blanco
      begin
        SqL := 'Insert Into LibroIVACompras (Fecha, Hora, CT, CN, Proveedor, CUIT, NG105, NG21, IVA105, IVA21, ITF) Values'
          + ' (' + QuotedStr(DateToStr(Date)) + ', ' + QuotedStr(TimeToStr(Time)
          ) + ', ' + QuotedStr(Tipo) + ', ' + IntToStr(numfact) + ', ' +
          Edit1.Text + ', ' + QuotedStr(Label27.Caption) + ', ' +
          FloatToStr(NG105) + ', ' + FloatToStr(NG21) + ', ' +
          FloatToStr(IVA105) + ', ' + FloatToStr(IVA21) + ', ' + Pagado + ')';
        QTemp.SqL.Text := SqL;
        QTemp.ExecSQL;
      end;
      // Insertar en la tabla LibroDiario
      // obtener el numero de asiento
      q.SqL.Text := 'Select Max(Asiento) From LibroDiario';
      q.Open;
      i := q.Fields[0].AsInteger + 1;
      q.Close;
      // obtener el numero de codigo
      q.SqL.Text := 'Select Max(Codigo) From LibroDiario';
      q.Open;
      c := q.Fields[0].AsInteger;
      q.Close;

      // 1er renglon  - MERCADERIAS DE REVENTA
      q.SqL.Text := 'select * from Cuenta where codigo=' + CtaTipo;
      q.Open;
      c := c + 1;
      QTemp.SqL.Text :=
        'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
        + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
        QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
        ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
        (GerenteLabel.Caption) + '') + ', ' +
        QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
        QuotedStr(q.FieldByName('Cuenta').AsString) + ', ' +
        FloatToStr(subtotal + Flete - desc) + ', 0 ' + ' )';
      QTemp.ExecSQL;

      if cbTipo.ItemIndex = 0 then // si es factura A
      begin
        // renglon  - IVA CREDITO FSICAL
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaIVACreditoFiscal').AsString;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', ' +
          FloatToStr(Impuesto) + ', 0 ' + ' )';
        QTemp.ExecSQL;
      end;

      if (StrToFloat(Pagado) < Total) AND (PagareCheckBox.Checked <> True) then
      // CUENTA CORRIENTE
      begin
        // renglon  - PROVEEDOR
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' + CtaNombre;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' +
          FloatToStr(Total - StrToFloat(Pagado)) + ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if (StrToFloat(Pagado) < Total) AND (PagareCheckBox.Checked = True) then
      // CON DOCUMENTOS (PAGARE)
      begin
        // renglon  - OBLIGACIONES A PAGAR
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaObligacionAPagar').AsString;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' +
          FloatToStr(Total - StrToFloat(Pagado)) + ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(Saldo) < 0 then // PAGO POR ADELANTADO
      begin
        // renglon  - ANTICIPO A PROVEEDORES
        q.SqL.Text := 'select * from Cuenta where codigo=' + CtaAnticipo;
        q.Open;
        c := c + 1;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' +
          QuotedStr('SALDO A FAVOR CON ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', ' + Saldo +
          ', 0 ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntCheque3ro) > 0.04 then // PAGO CON CHEQUE DE TERCEROS
      begin
        // renglon  - VALORES AL COBRO
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaValorAlCobro').AsString;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + MntCheque3ro +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntCheque) > 0.04 then // PAGO CON CHEQUE PROPIO
      begin
        // renglon  - BANCO XX CUENTA CORRIENTE
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaBanco').AsString;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + (MntCheque) +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntContado) > 0.04 then // PAGO CON EFECTIVO
      begin
        // renglon  - CAJA
        c := c + 1;
        q.SqL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        QTemp.SqL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' + QuotedStr('Compra Nº' + IntToStr(numfact) +
          ' - ' + (Tipo) + ' - ' + (ProveedorLabel.Caption) + ' - ' +
          (GerenteLabel.Caption) + '') + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + (MntContado) +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      q.Close;
      // ***************************************************************************************************************************

      // Completa la Transaccion
      { DM.AC1.CommitTrans; }

    except
      on E: Exception do
      begin
        { DM.AC1.RollbackTrans; }
        MessageDlg
          ('No fue posible completar la transacción, por favor contacte al administrador',
          mtError, [mbOK], 0);
      end;
    end;
  end;
  Close;
end;

procedure TComprarCelularForm.CheckBox1Click(Sender: TObject);
begin
  CalculaTotales;
end;

procedure TComprarCelularForm.FormShow(Sender: TObject);
begin
  DM.ConfigQuery.Open;
  SGFact.Cells[0, 0] := 'Código';
  SGFact.Cells[1, 0] := 'Descripción';
  SGFact.Cells[2, 0] := 'Flete';
  SGFact.Cells[3, 0] := 'Cantidad';
  SGFact.Cells[4, 0] := 'Precio';
  SGFact.Cells[5, 0] := 'Total';
  SGFact.Cells[6, 0] := 'IVA';
  SGFact.Cells[3, 1] := '0';
  SGFact.Cells[4, 1] := '0.00';
  SGFact.Cells[5, 1] := '0.00';
  SGTotal.Cells[0, 0] := 'Sub Total';
  SGTotal.Cells[0, 1] := 'Descuento';
  SGTotal.Cells[0, 2] := 'Impuesto';
  SGTotal.Cells[0, 3] := 'Flete';
  SGTotal.Cells[0, 4] := 'Total';
  SGTotal.Cells[1, 0] := '0.00';
  SGTotal.Cells[1, 1] := '0.00';
  SGTotal.Cells[1, 2] := '0.00';
  SGTotal.Cells[1, 2] := '0.00';
  SGTotal.Cells[1, 4] := '0.00';
  Cuenta := 1;
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  Label12.Caption := DateToStr(now);
  subtotal := 0;
  Impuesto := 0;
  desc := 0;
  Total := 0;
  NG21 := 0;
  IVA21 := 0;
  NG105 := 0;
  IVA105 := 0;
  Label27.Caption := 'C.F.';
  Label21.Caption := '0';
  FLEPorcDesc.Text := '0.0';
  BitBtn2.SetFocus;
  costo := 0;
  reparaciones := 0;
  BitBtn1.Click;
  BitBtn2.Click;
end;

procedure TComprarCelularForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(self);
  EmpresaQuery.Open;
  ConfigQuery.Open;
end;

procedure TComprarCelularForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F1 then
    BitBtn1.Click;
  IF Key = VK_F4 then
    BitBtn2.Click;
  IF Key = VK_F6 then
    BitBtn3.Click;
  IF Key = VK_F8 then
    BitBtn4.Click;
  IF Key = VK_Escape then
    BitBtn5.Click;
end;

end.
