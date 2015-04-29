unit RendicionCartonF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, Buttons, ImprimirDM,
  DataModule,
  ExtCtrls, IBCustomDataSet, IBQuery, OleCtrls, SHDocVw;

type
  TRendicionCartonForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    ClienteLabel: TLabel;
    Label8: TLabel;
    PlanLabel: TLabel;
    ClienteEdit: TEdit;
    PlanEdit: TEdit;
    Label1: TLabel;
    Tabla: TIBQuery;
    SeleccionarCartonBitBtn: TBitBtn;
    Q: TIBQuery;
    Label2: TLabel;
    CBEdit: TEdit;
    Label3: TLabel;
    TotalEdit: TEdit;
    Label6: TLabel;
    CuotaEdit: TEdit;
    Label4: TLabel;
    CobradorEdit: TEdit;
    CobradorLabel: TLabel;
    ComisionEdit: TEdit;
    Label7: TLabel;
    Label10: TLabel;
    PagarCheckBox: TCheckBox;
    Label9: TLabel;
    CuotasEdit: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SeleccionarCartonBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    CTACLIENTE, CTACOBRADOR, CTAANTCOBR, fecha, Oculto, CB, Plan: string;
    { Public declarations }
  end;

var
  RendicionCartonForm: TRendicionCartonForm;

implementation

{$R *.dfm}

procedure TRendicionCartonForm.SeleccionarCartonBitBtnClick(Sender: TObject);
begin
  CB := CBEdit.text;
  PlanEdit.text :=
    IntToStr(StrToInt(Format('%8.0f', [(StrToFloat(CB) / 10000000) - 100000])));
  ClienteEdit.text :=
    IntToStr(StrToInt(Format('%8.0f', [((StrToFloat(CB) / 10000) - 100000000) -
    (StrToFloat(PlanEdit.text) * 1000)])));
  CuotaEdit.text :=
    IntToStr(StrToInt(Format('%8.0f', [(StrToFloat(CB) - 1000000000000) -
    (StrToFloat(PlanEdit.text) * 10000000) - (StrToFloat(ClienteEdit.text) *
    10000)])));

  Q.SQL.text := 'SELECT' + '  "CtaCteItem".CODIGO,' + '  "CtaCteItem".CUOTA,' +
    '  "CtaCteItem".VENCE,' + '  "CtaCteItem".IMPORTE,' +
    '  "CtaCteItem".PAGADO,' + '  "CtaCteItem".DESCRIPCION,' +
    '  "Cliente".NOMBRE AS CLIENTE,' + '  "Cliente".CTANOMBRE AS CTACLIENTE,' +
    '  "CtaCte".OPERACION,' + '  "CtaCte".COBRADOR AS CODCOBRADOR,' +
    '  "Cobrador".COMISION,' + '  "Cobrador".NOMBRE AS COBRADOR,' +
    '  "Cobrador".CTANOMBRE AS CTACOBRADOR,' +
    '  "Cobrador".CTAANTICIPO AS CTAANTCOBR ' + ' FROM' + '  "CtaCte"' +
    '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
    + '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
    '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)' +
    ' WHERE' + '  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND' +
    '  ("CtaCteItem".OPERACION = ' + PlanEdit.text + ') AND' +
    '  ("CtaCteItem".CLIENTE = ' + ClienteEdit.text + ' ) AND' +
    '  ("CtaCteItem".CUOTA < ' + CuotaEdit.text + ')' + '  ORDER BY' +
    '  "CtaCteItem".OPERACION,' + '  "CtaCteItem".CLIENTE,' +
    '  "CtaCteItem".CUOTA' + '';
  Q.Open;
  ClienteLabel.Caption := Q.FieldByName('CLIENTE').AsString;
  PlanLabel.Caption := Q.FieldByName('OPERACION').AsString;
  CobradorEdit.text := Q.FieldByName('CODCOBRADOR').AsString;
  CobradorLabel.Caption := Q.FieldByName('COBRADOR').AsString;
  CTACLIENTE := Q.FieldByName('CTACLIENTE').AsString;
  CTACOBRADOR := Q.FieldByName('CTACOBRADOR').AsString;
  CTAANTCOBR := Q.FieldByName('CTAANTCOBR').AsString;
  while Q.Eof = False do
  begin
    TotalEdit.text := FloatToStr(StrToFloat(TotalEdit.text) +
      Q.FieldByName('IMPORTE').AsFloat);
    CuotasEdit.text := FloatToStr(StrToInt(CuotasEdit.text) +
      Q.FieldByName('CUOTA').AsInteger);
    Q.Next;
  end;
  ComisionEdit.text := FloatToStr(StrToFloat(TotalEdit.text) *
    (Q.FieldByName('COMISION').AsFloat / 100));
  CuotaEdit.text := Q.FieldByName('CUOTA').AsString;
end;

procedure TRendicionCartonForm.Button3Click(Sender: TObject);
var
  i: integer;
  procesado: string;
begin

  fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss', now));

  // Insertar en la tabla de CtaCte
  Tabla.SQL.text := 'Update "CtaCte" Set RENDIDAS = RENDIDAS + ' +
    CuotasEdit.text + '  WHERE' + '  ("CtaCte".OPERACION = ' + PlanEdit.text +
    ') AND' + '  ("CtaCte".CLIENTE = ' + ClienteEdit.text + ' )' + '';
  Tabla.ExecSQL;

  // Actualizar en la tabla de CtaCte Item
  Tabla.SQL.text := 'Update "CtaCteItem" Set PAGADO = IMPORTE' + '  WHERE' +
    '  ("CtaCteItem".OPERACION = ' + PlanEdit.text + ') AND' +
    '  ("CtaCteItem".CLIENTE = ' + ClienteEdit.text + ' ) AND' +
    '  ("CtaCteItem".CUOTA = ' + CuotaEdit.text + ')' + '';
  Tabla.ExecSQL;

  if PagarCheckBox.Checked = TRUE then
    procesado := 'SI'
  else
    procesado := 'NO';
  // Insertar en Rendido Cobrador
  Tabla.SQL.text :=
    'Insert Into "RendidoCobrador" (VENTA, CUOTA, COBRADOR, FECHA , RENDIDO, PAGADO, PROCESADO)'
    + ' Values (' + PlanEdit.text + ', ' + CuotaEdit.text + ', ' +
    CobradorEdit.text + ', ' + QuotedStr(fecha) + ',' + TotalEdit.text + ', ' +
    ComisionEdit.text + ', ' + QuotedStr(procesado) + ')';
  Tabla.ExecSQL;

  // CONTABILIDAD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  // Insertar en la tabla LibroDiario

  // obtener el numero de asiento
  Q.SQL.text := 'Select Max(ASIENTO) From "LibroDiario"';
  Q.Open;
  i := Q.Fields[0].AsInteger + 1;
  Q.Close;

  if StrToFloat(TotalEdit.text) > 0.04 then // PAGO DE CUENTA CORRIENTE
  begin
    // renglon  - CAJA
    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaCaja').AsString;
    Q.Open;
    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cliente ' + ClienteLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', ' + TotalEdit.text +
      ', 0, ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;

    // renglon  - DEUDORES POR VENTA
    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' + CTACLIENTE;
    Q.Open;
    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cliente ' + ClienteLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', 0, ' +
      TotalEdit.text + ', ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;
  end;

  //
  i := i + 1;
  if PagarCheckBox.Checked = TRUE then // COMISION COBRADOR
  begin
    // renglon  - COMISION COBRADOR
    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' + CTACOBRADOR;
    Q.Open;

    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cobrador ' + CobradorLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', ' +
      ComisionEdit.text + ', 0, ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;

    // renglon  - COMISION COBRADOR A PAGAR

    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' + CTAANTCOBR;
    Q.Open;
    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cobrador ' + CobradorLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', 0, ' +
      ComisionEdit.text + ', ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;


    // PAGO DE COMISION

    // renglon  - COMISION COBRADOR A PAGAR
    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' + CTAANTCOBR;
    Q.Open;

    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cobrador ' + CobradorLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', ' +
      ComisionEdit.text + ', 0, ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;

    // renglon  - CAJA

    Q.SQL.text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      dm.ConfigQuery.FieldByName('CtaCaja').AsString;
    Q.Open;
    Tabla.SQL.text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(fecha) + ', ' +
      QuotedStr('Rendicion Cobrador ' + CobradorLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', 0, ' +
      ComisionEdit.text + ', ' + QuotedStr(Oculto) + ' )';
    Tabla.ExecSQL;
  end;


  // CONTABILIDAD------------------------------------------------------------------------------

  // Completa la Transaccion
  Tabla.Transaction.CommitRetaining;
  if PagarCheckBox.Checked = TRUE then // COMISION COBRADOR
  begin
    Q.SQL.text := 'SELECT * FROM "RendidoCobrador"';
    Q.Open;
    Q.Last;
    ImprimirDataModule := TImprimirDataModule.Create(self);
    ImprimirDataModule.SImpr('SELECT' + '  "Cobrador".NOMBRE,' +
      '  "RendidoCobrador".VENTA,' + '  "RendidoCobrador".CODIGO,' +
      '  "RendidoCobrador".COBRADOR,' + '  "RendidoCobrador".CUOTA,' +
      '  "RendidoCobrador".FECHA,' + '  "RendidoCobrador".RENDIDO,' +
      '  "RendidoCobrador".PAGADO,' + '  "RendidoCobrador".PROCESADO' + ' FROM'
      + '  "RendidoCobrador"' +
      '  INNER JOIN "Cobrador" ON ("RendidoCobrador".COBRADOR = "Cobrador".CODIGO)'
      + ' WHERE "RendidoCobrador".Codigo=' + Q.FieldByName('Codigo').AsString,
      'PagoCobrador');
    ImprimirDataModule.Free;
  end
  else
    ShowMessage('PROCESO TERMINADO CON EXITO!!!');

  // CBEdit.Text:='';
  Close;
end;

procedure TRendicionCartonForm.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure TRendicionCartonForm.FormCreate(Sender: TObject);
begin
  dm := TDM.Create(self);
end;

procedure TRendicionCartonForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    SeleccionarCartonBitBtn.Click;
  end;
end;

end.
