unit CartonCobranzaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DataModule, Grids,
  DBGrids, IBCustomDataSet, IBQuery, ImprimirDM,
  OleCtrls, SHDocVw, jpeg;

type
  TCartonCobranzaForm = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    ImprimirBitBtn: TBitBtn;
    ConsultarBitBtn: TBitBtn;
    Tabla: TIBQuery;
    Q: TIBQuery;
    Label3: TLabel;
    ClienteEdit: TEdit;
    BuscarBitBtn: TBitBtn;
    ClienteLabel: TLabel;
    Label8: TLabel;
    PlanEdit: TEdit;
    PlanBitBtn: TBitBtn;
    PlanLabel: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure DTP1CloseUp(Sender: TObject);
    procedure DTP2CloseUp(Sender: TObject);
    procedure SalirBitBtnClick(Sender: TObject);
    procedure ConsultarBitBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlanBitBtnClick(Sender: TObject);
  private
    Procedure EnvioRamTerminado;
    { Private declarations }
  public
    Cancela: Boolean;
    Reporte, Cuenta, cuota: String;
    { Public declarations }
  end;

type
  TCompartido = record
    Numero: Integer;
    Cadena: String[20];
  end;

  PCompartido = ^TCompartido;

var
  CartonCobranzaForm: TCartonCobranzaForm;
  Compartido: PCompartido;
  FicheroM: THandle;

implementation

uses UFBuscaCliente, BuscarPlanFacturado;

{$R *.dfm}

Procedure TCartonCobranzaForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TCartonCobranzaForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
  ImprimirDataModule := TImprimirDataModule.Create(Self);
  DTP2.DateTime := Now;
end;

procedure TCartonCobranzaForm.DTP1CloseUp(Sender: TObject);
begin
  If DTP1.Date > DTP2.Date then
  begin
    MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.', mtError,
      [mbOK], 0);
    DTP1.DateTime := DTP2.DateTime;
  end;
end;

procedure TCartonCobranzaForm.DTP2CloseUp(Sender: TObject);
begin
  If DTP2.Date < DTP1.Date then
  begin
    MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.', mtError,
      [mbOK], 0);
    DTP2.DateTime := DTP1.DateTime;
  end;
end;

procedure TCartonCobranzaForm.SalirBitBtnClick(Sender: TObject);
begin
  Cancela := true;
  Close;
end;

procedure TCartonCobranzaForm.ConsultarBitBtnClick(Sender: TObject);
begin
  Q.SQL.Text := 'SELECT *' + ' FROM' + '  "RendidoCobrador"' + ' WHERE' +
    '  ("RendidoCobrador".VENTA = ' + PlanEdit.Text + ')' + '';
  Q.Open;
  cuota := Q.FieldByName('CUOTA').AsString;
  if cuota = '' then
    cuota := '0';
  Tabla.SQL.Text := 'SELECT' +
    '  (1000000000000 + ("CtaCte".OPERACION * 10000000) + ("Cliente".CODIGO * 10000) + ("CtaCteItem".CUOTA)) AS CB,'
    + '  "CtaCte".OPERACION,' + '  "Cliente".NOMBRE AS CLIENTE,' +
    '  "Cobrador".NOMBRE AS COBRADOR,' + '  "CtaCteItem".CUOTA,' +
    '  "CtaCteItem".DESCRIPCION,' + '  "CtaCteItem".IMPORTE,' +
    '  "CtaCteItem".VENCE,' + '  "Cliente".CODIGO AS CODCLIENTE,' +
    '  "Cobrador".CODIGO AS CODCOBRADOR' + ' FROM' + '  "CtaCte"' +
    '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
    '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)' +
    '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
    + ' WHERE' + '  ("CtaCteItem".CUOTA IS NOT NULL) AND' +
    '  ("CtaCteItem".CUOTA > ' + cuota + ') AND' + '  ("CtaCteItem".VENCE >= ' +
    QuotedStr(DateToStr(DTP1.Date)) + ') AND ' + '  ("CtaCteItem".VENCE <= ' +
    QuotedStr(DateToStr(DTP2.Date)) + ') AND ' + '  ("CtaCte".OPERACION = ' +
    PlanEdit.Text + ' ) AND ' + '  ("CtaCte".CLIENTE = ' + ClienteEdit.Text +
    ') ' + ' ORDER BY' + '  "CtaCteItem".OPERACION,' + '  "CtaCteItem".CLIENTE,'
    + '  "CtaCteItem".CUOTA' + '';
  Tabla.Open;
end;

procedure TCartonCobranzaForm.FormDestroy(Sender: TObject);
begin
  EnvioRamTerminado;
end;

procedure TCartonCobranzaForm.FormShow(Sender: TObject);
begin
  BuscarBitBtn.Click;
  PlanBitBtn.Click;
  ConsultarBitBtn.Click;
end;

procedure TCartonCobranzaForm.ImprimirBitBtnClick(Sender: TObject);
begin
  Q.SQL.Text := 'SELECT' + '  count("CartonCobranza".IMPRESION)' + ' FROM' +
    '  "CartonCobranza"' + ' WHERE' + '  ("CartonCobranza".OPERACION = ' +
    PlanEdit.Text + ' ) AND' + '  ("CartonCobranza".FECHA <= ' +
    QuotedStr(DateToStr(DTP1.Date)) + ' )' + '';
  Q.Open;
  if Q.Fields[0].AsInteger > 0 then
  begin
    Q.SQL.Text := 'select * from "Usuario" where "Usuario".CODIGO=' + Usuario;
    Q.Open;
    if Q.FieldByName('PERMISO').AsInteger < 3 then
      showmessage('El usuario no tiene permiso para realizar la impresión')
    else
    begin
      Q.SQL.Text :=
        'Insert into "CartonCobranza" (OPERACION, FECHA, IMPRESION, USUARIO) values'
        + '( ' + PlanEdit.Text + ', ' + QuotedStr(DateToStr(DTP2.Date)) +
        ', 1, ' + Usuario + ')';
      Q.ExecSQL;
    end;
  end
  else
  begin
    Q.SQL.Text :=
      'Insert into "CartonCobranza" (OPERACION, FECHA, IMPRESION, USUARIO) values'
      + '( ' + PlanEdit.Text + ', ' + QuotedStr(DateToStr(DTP2.Date)) + ', 1, '
      + Usuario + ')';
    Q.ExecSQL;
  end;
  Q.Transaction.CommitRetaining;
  ImprimirDataModule := TImprimirDataModule.Create(Self);
  ImprimirDataModule.SImpr(Tabla.SQL.Text, 'Carton');
  ImprimirDataModule.Free;
end;

procedure TCartonCobranzaForm.PlanBitBtnClick(Sender: TObject);
begin
  BuscarPlanFacturadoForm := TBuscarPlanFacturadoForm.Create(Self);
  BuscarPlanFacturadoForm.Edit4.Text := ClienteEdit.Text;
  try
    BuscarPlanFacturadoForm.ShowModal;
  finally
    PlanEdit.Text := BuscarPlanFacturadoForm.Tabla.FieldByName
      ('OPERACION').AsString;
    PlanLabel.Caption := BuscarPlanFacturadoForm.Tabla.FieldByName
      ('DESCRIPCION').AsString;
    BuscarPlanFacturadoForm.Free;
  end;
end;

procedure TCartonCobranzaForm.BuscarBitBtnClick(Sender: TObject);
begin
  FBuscaCliente := TFBuscaCliente.Create(Self);
  try
    FBuscaCliente.ShowModal;
  finally
    with FBuscaCliente do
    begin
      ClienteEdit.Text := FBuscaCliente.Tabla.FieldByName('CODIGO').AsString;
      ClienteLabel.Caption := FBuscaCliente.Tabla.FieldByName('NOMBRE')
        .AsString;
    end;
    FBuscaCliente.Free;
  end;
end;

end.
