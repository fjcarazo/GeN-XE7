unit CobranzaIncobrableF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ImprimirDM, Mask, DBCtrls, StdCtrls,
  Buttons, ComCtrls, DataModule, OleCtrls, SHDocVw, IBX.IBCustomDataSet,
  IBX.IBQuery;

type
  TCobranzaIncobrableForm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    ImprimirBitBtn: TBitBtn;
    CodigoDBText: TDBText;
    NombreDBText: TDBText;
    DiasEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ExtraJudicialBitBtn: TBitBtn;
    DBGrid1: TDBGrid;
    DS: TDataSource;
    GrillaQ: TIBQuery;
    Tabla: TIBQuery;
    procedure CancelarBitBtnClick(Sender: TObject);
    procedure SeleccionarBitBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure DiasEditKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExtraJudicialBitBtnClick(Sender: TObject);
    procedure JudicialBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    fecha: string;
    procedure Consulta;
    { Public declarations }
  end;

var
  CobranzaIncobrableForm: TCobranzaIncobrableForm;

implementation

{$R *.dfm}

procedure TCobranzaIncobrableForm.CancelarBitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TCobranzaIncobrableForm.DBGrid1DblClick(Sender: TObject);
begin
  SeleccionarBitBtnClick(DBGrid1);
end;

procedure TCobranzaIncobrableForm.DBGrid1Enter(Sender: TObject);
begin
  SeleccionarBitBtnClick(DBGrid1);
end;

procedure TCobranzaIncobrableForm.DiasEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DiasEdit.Text <> '' then
    Consulta;
end;

procedure TCobranzaIncobrableForm.ExtraJudicialBitBtnClick(Sender: TObject);
begin
  Tabla.SQL.Text := 'Update "CtaCte" Set Cobranza = 3 Where ' +
    '("CtaCte".CLIENTE = ' + GrillaQ.FieldByName('CLIENTE').AsString +
    ') and ("CtaCte".OPERACION = ' + GrillaQ.FieldByName('OPERACION')
    .AsString + ')';
  Tabla.ExecSQL;
  Tabla.Transaction.CommitRetaining;
  Consulta;
end;

procedure TCobranzaIncobrableForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(Self);
end;

procedure TCobranzaIncobrableForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TCobranzaIncobrableForm.FormShow(Sender: TObject);
begin
  DiasEdit.Text := DM.ConfigQuery.FieldByName('GesCobExtraJudicial').AsString;
  Consulta;
end;

procedure TCobranzaIncobrableForm.ImprimirBitBtnClick(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(Self);
  ImprimirDataModule.SImpr(GrillaQ.SQL.Text, 'DeudoresPorCredito');
  ImprimirDataModule.Free;
end;

procedure TCobranzaIncobrableForm.JudicialBitBtnClick(Sender: TObject);
begin
  Tabla.SQL.Text := 'Update "CtaCte" Set COBRANZA = 4 Where ' +
    '("CtaCte".CLIENTE = ' + GrillaQ.FieldByName('CLIENTE').AsString +
    ') and ("CtaCte".OPERACION = ' + GrillaQ.FieldByName('OPERACION')
    .AsString + ')';
  Tabla.ExecSQL;
  Tabla.Transaction.CommitRetaining;
  Consulta;
end;

procedure TCobranzaIncobrableForm.SeleccionarBitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TCobranzaIncobrableForm.Consulta;
begin
  fecha := FormatDateTime('mm/dd/yyyy', (now - StrToInt(DiasEdit.Text)));
  GrillaQ.SQL.Text := 'SELECT' + '  "CtaCteItem".VENCE,' + '  "Cliente".NOMBRE,'
    + '  "CtaCteItem".CUOTA,' + '  "CtaCteItem".PAGADO,' +
    '  "CtaCteItem".IMPORTE,' + '  "CtaCteItem".DESCRIPCION,' +
    '  "CtaCte".CLIENTE,' + '  "CtaCte".OPERACION' + ' FROM' + '  "CtaCte"' +
    '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
    '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
    + ' WHERE' + '  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND' +
    '  ("CtaCteItem".VENCE < ' + QuotedStr(fecha) + ') AND' +
    '  ("CtaCte".COBRANZA = 4)' + ' ORDER BY' + '  "CtaCteItem".VENCE' + '';
  GrillaQ.Open;
end;

end.
