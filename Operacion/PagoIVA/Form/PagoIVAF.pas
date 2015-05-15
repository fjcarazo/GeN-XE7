unit PagoIVAF;

interface

uses Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Controls, System.Classes, Vcl.ExtCtrls,
  Windows, Messages, SysUtils, Variants, Graphics, Forms,
  Dialogs, DataModule, OleCtrls, SHDocVw;

type
  TPagoIVAForm = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    AceptarBitBtn: TBitBtn;
    SalirBitBtn: TBitBtn;
    CalcularBitBtn: TBitBtn;
    DesdeDateTimePicker: TDateTimePicker;
    HastaDateTimePicker: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CreditoEdit: TEdit;
    DebitoEdit: TEdit;
    SaldoEdit: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    QTemp: TIBQuery;
    Q: TIBQuery;
    procedure AceptarBitBtnClick(Sender: TObject);
    procedure CalcularBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    fecha: string;
    { Public declarations }
  end;

var
  PagoIVAForm: TPagoIVAForm;

implementation

{$R *.dfm}

procedure TPagoIVAForm.AceptarBitBtnClick(Sender: TObject);
var
  i, c: integer;
begin
  fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss', now));

  // Iniciar la Transaccion

  // CONTABILIDAD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  // Insertar en la tabla LibroDiario
  // obtener el numero de asiento
  Q.SQL.Text := 'Select Max(ASIENTO) From "LibroDiario"';
  Q.Open;
  i := Q.Fields[0].AsInteger + 1;
  Q.Close;

  // LIQUIDACION DE IVA

  // renglon  - IVA DEBITO FISCAL
  Q.SQL.Text := 'select * from "Cuenta" where CODIGO=' +
    dm.ConfigQuery.FieldByName('CtaIVADebitoFiscal').AsString;
  Q.Open;
  c := c + 1;
  QTemp.SQL.Text :=
    'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
    + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
    ', ''LIQUIDACION DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia')
    .AsString) + ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', '
    + DebitoEdit.Text + ', 0, ' + QuotedStr(Oculto) + ' )';
  QTemp.ExecSQL;

  if StrToFloat(SaldoEdit.Text) < 0 then
  begin // renglon  - IVA REMANENTE
    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaIVARemanente').AsString;
    Q.Open;
    c := c + 1;
    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
      ', ''LIQUIDACION DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia')
      .AsString) + ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) +
      ', ' + FloatToStr(abs(StrToFloat(SaldoEdit.Text))) + ', 0, ' +
      QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;
  end;

  // renglon  - IVA CREDITO FISCAL
  Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
    dm.ConfigQuery.FieldByName('CtaIVACreditoFiscal').AsString;
  Q.Open;
  c := c + 1;
  QTemp.SQL.Text :=
    'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
    + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
    ', ''LIQUIDACION DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia')
    .AsString) + ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) +
    ', 0, ' + CreditoEdit.Text + ', ' + QuotedStr(Oculto) + ' )';
  QTemp.ExecSQL;

  if StrToFloat(SaldoEdit.Text) > 0 then
  begin // renglon  - IVA A PAGAR
    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaIVAAPagar').AsString;
    Q.Open;
    c := c + 1;
    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
      ', ''LIQUIDACION DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia')
      .AsString) + ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) +
      ', 0, ' + SaldoEdit.Text + ', ' + QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;

    // PAGO DE IVA
    // renglon  - IVA A PAGAR
    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaIVAAPagar').AsString;
    Q.Open;
    c := c + 1;
    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
      ', ''PAGO DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia').AsString) +
      ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', ' +
      SaldoEdit.Text + ', 0, ' + QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;

    // renglon  - CAJA
    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaCaja').AsString;
    Q.Open;
    c := c + 1;
    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) +
      ', ''PAGO DE IVA'', ' + QuotedStr(Q.FieldByName('Jerarquia').AsString) +
      ', ' + QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', 0, ' +
      SaldoEdit.Text + ', ' + QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;
  end;

  // CONTABILIDAD------------------------------------------------------------------------------

  // Completa la Transaccion
  QTemp.Transaction.CommitRetaining;
  Close;
end;

procedure TPagoIVAForm.CalcularBitBtnClick(Sender: TObject);
begin
  // DEBITO
  QTemp.SQL.Text := 'SELECT ' + '  "LibroIVAventa".IVA1,' +
    '  "LibroIVAventa".IVA2, ' + '  "LibroIVAventa".FECHA ' + ' FROM ' +
    '  "LibroIVAventa"  ' + ' WHERE ' + '  ("LibroIVAventa".FECHA >= ' +
    QuotedStr(DateToStr(DesdeDateTimePicker.Date)) + ' ) AND' +
    '  ("LibroIVAventa".FECHA <= ' +
    QuotedStr(DateToStr(HastaDateTimePicker.Date)) + ' )' + '';
  QTemp.Open;
  while QTemp.Eof = False do
  begin
    DebitoEdit.Text := FloatToStr(StrToFloat(DebitoEdit.Text) +
      QTemp.FieldByName('IVA1').AsFloat + QTemp.FieldByName('IVA2').AsFloat);
    QTemp.Next;
  end;

  // CREDITO
  QTemp.SQL.Text := 'SELECT ' + '  "LibroIVAcompra".IVA1,' +
    '  "LibroIVAcompra".IVA2, ' + '  "LibroIVAcompra".FECHA ' + ' FROM ' +
    '  "LibroIVAcompra"  ' + ' WHERE ' + '  ("LibroIVAcompra".FECHA >= ' +
    QuotedStr(DateToStr(DesdeDateTimePicker.Date)) + ' ) AND' +
    '  ("LibroIVAcompra".FECHA <= ' +
    QuotedStr(DateToStr(HastaDateTimePicker.Date)) + ' )' + '';
  QTemp.Open;
  while QTemp.Eof = False do
  begin
    CreditoEdit.Text := FloatToStr(StrToFloat(DebitoEdit.Text) +
      QTemp.FieldByName('IVA1').AsFloat + QTemp.FieldByName('IVA2').AsFloat);
    QTemp.Next;
  end;

  SaldoEdit.Text := FloatToStr(StrToFloat(DebitoEdit.Text) -
    StrToFloat(CreditoEdit.Text));
end;

procedure TPagoIVAForm.FormCreate(Sender: TObject);
begin
  // dm := TDM.Create(Self);
  dm.ConfigQuery.Open;
end;

end.
