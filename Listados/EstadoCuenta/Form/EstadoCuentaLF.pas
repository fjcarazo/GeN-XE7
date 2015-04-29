unit EstadoCuentaLF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DataModule, Grids,
  DBGrids, OleCtrls, SHDocVw, jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TEstadoCuentaLForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    Label3: TLabel;
    ClienteLabel: TLabel;
    ClienteEdit: TEdit;
    BuscarBitBtn: TBitBtn;
    ImprimirBitBtn: TBitBtn;
    ConsultarBitBtn: TBitBtn;
    Label8: TLabel;
    PlanLabel: TLabel;
    PlanEdit: TEdit;
    PlanBitBtn: TBitBtn;
    Tabla: TIBQuery;
    Label11: TLabel;
    Label12: TLabel;
    CuotasLabel: TLabel;
    TotalLabel: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    Label7: TLabel;
    RendidasLabel: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Image1: TImage;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    Procedure EnvioRamTerminado;
    { Private declarations }
  public
    Cancela: Boolean;
    Reporte, Cuenta, SqL, Ordenar, Selec: String;
    { Public declarations }
  end;

type
  TCompartido = record
    Numero: Integer;
    Cadena: String[20];
  end;

  PCompartido = ^TCompartido;

var
  EstadoCuentaLForm: TEstadoCuentaLForm;
  Compartido: PCompartido;
  FicheroM: THandle;

implementation

uses ImprimirDM, UFBuscaCliente, BuscarPlanFacturado;

{$R *.dfm}

Procedure TEstadoCuentaLForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TEstadoCuentaLForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(Self);
  DTP2.DateTime := Now;
end;

procedure TEstadoCuentaLForm.DTP1CloseUp(Sender: TObject);
begin
  If DTP1.Date > DTP2.Date then
  begin
    MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.', mtError,
      [mbOK], 0);
    DTP1.DateTime := DTP2.DateTime;
  end;
end;

procedure TEstadoCuentaLForm.DTP2CloseUp(Sender: TObject);
begin
  If DTP2.Date < DTP1.Date then
  begin
    MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.', mtError,
      [mbOK], 0);
    DTP2.DateTime := DTP1.DateTime;
  end;
end;

procedure TEstadoCuentaLForm.SalirBitBtnClick(Sender: TObject);
begin
  Cancela := true;
  Close;
end;

procedure TEstadoCuentaLForm.ConsultarBitBtnClick(Sender: TObject);
begin
  SqL := 'SELECT' + '  "CtaCteItem".CODIGO,' + '  "CtaCteItem".CUOTA,' +
    '  "CtaCteItem".VENCE,' + '  "CtaCteItem".IMPORTE,' +
    '  "CtaCteItem".PAGADO,' +
    '  ("CtaCteItem".IMPORTE - "CtaCteItem".PAGADO) AS APAGAR,' +
    '  "Cliente".NOMBRE AS CLIENTE,' + '  "CtaCte".OPERACION,' +
    '  "Cobrador".NOMBRE AS COBRADOR,' + '  "CtaCte".CUOTAS,' +
    '  "CtaCte".SALDO,' + '  "CtaCte".RENDIDAS,' + '  "Venta".TOTAL' + ' FROM' +
    '  "CtaCte"' +
    '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
    + '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
    '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)' +
    '  INNER JOIN "Venta" ON ("CtaCte".OPERACION = "Venta".CODIGO)' + ' WHERE' +
    '  ("CtaCteItem".CUOTA IS NOT NULL) AND ' + '  ("CtaCte".OPERACION = ' +
    PlanEdit.Text + '  ) AND ' + '  ("CtaCte".CLIENTE = ' + ClienteEdit.Text +
    ') ' + '';

  Tabla.SqL.Text := SqL + Selec + Ordenar;
  Tabla.Open;
  RendidasLabel.Caption := Tabla.FieldByName('RENDIDAS').AsString;
  CuotasLabel.Caption := Tabla.FieldByName('CUOTAS').AsString;
  TotalLabel.Caption := Tabla.FieldByName('TOTAL').AsString;
end;

procedure TEstadoCuentaLForm.FormDestroy(Sender: TObject);
begin
  EnvioRamTerminado;
end;

procedure TEstadoCuentaLForm.FormShow(Sender: TObject);
begin
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  BuscarBitBtn.Click;
  PlanBitBtn.Click;
end;

procedure TEstadoCuentaLForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(Self);
  ImprimirDataModule.CSV(Tabla.SqL.Text, 'ESTADO DE CUENTA');
  ImprimirDataModule.Free;
end;

procedure TEstadoCuentaLForm.ImprimirBitBtnClick(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(Self);
  ImprimirDataModule.SImpr(Tabla.SqL.Text, 'EstadoCuenta');
  ImprimirDataModule.Free;
end;

procedure TEstadoCuentaLForm.PlanBitBtnClick(Sender: TObject);
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

procedure TEstadoCuentaLForm.BitBtn1Click(Sender: TObject);
begin
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BitBtn2Click(Sender: TObject);
begin
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA DESC';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BitBtn3Click(Sender: TObject);
begin
  Selec := 'AND ("CtaCteItem".IMPORTE > "CtaCteItem".PAGADO) ';
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BitBtn4Click(Sender: TObject);
begin
  Selec := '';
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BitBtn5Click(Sender: TObject);
begin
  Selec := 'AND ("CtaCteItem".IMPORTE <= "CtaCteItem".PAGADO) ';
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BitBtn6Click(Sender: TObject);
begin
  Selec := ' AND ("CtaCteItem".VENCE >= ' + QuotedStr(DateToStr(DTP1.Date)) +
    ') AND ' + '  ("CtaCteItem".VENCE <= ' +
    QuotedStr(DateToStr(DTP2.Date)) + ')';
  Ordenar := ' ORDER BY "CtaCteItem".CUOTA';
  ConsultarBitBtn.Click;
end;

procedure TEstadoCuentaLForm.BuscarBitBtnClick(Sender: TObject);
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
  ConsultarBitBtn.Click;
end;

end.
