unit CobranzaJudicialF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ImprimirDM, Mask, DBCtrls, StdCtrls, Buttons,
  ComCtrls, DataModule, IBCustomDataSet, IBQuery, OleCtrls,
  SHDocVw;

type
  TCobranzaJudicialForm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    ImprimirBitBtn: TBitBtn;
    DataSource: TDataSource;
    CodigoDBText: TDBText;
    NombreDBText: TDBText;
    DiasEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    JudicialBitBtn: TBitBtn;
    ExtraJudicialBitBtn: TBitBtn;
    Tabla: TIBQuery;
    GrillaQ: TIBQuery;
    DBGrid1: TDBGrid;
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
  fecha:string;
  procedure Consulta;
    { Public declarations }
  end;

var
  CobranzaJudicialForm: TCobranzaJudicialForm;

implementation

{$R *.dfm}

procedure TCobranzaJudicialForm.CancelarBitBtnClick(Sender: TObject);
begin
close;
end;

procedure TCobranzaJudicialForm.DBGrid1DblClick(Sender: TObject);
begin
   SeleccionarBitBtnClick(DBGrid1);
end;

procedure TCobranzaJudicialForm.DBGrid1Enter(Sender: TObject);
begin
   SeleccionarBitBtnClick(DBGrid1);
end;

procedure TCobranzaJudicialForm.DiasEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if DiasEdit.Text <> '' then Consulta;
end;

procedure TCobranzaJudicialForm.ExtraJudicialBitBtnClick(Sender: TObject);
begin
Tabla.SQL.Text := 'Update "CtaCte" Set Cobranza = 2 Where '+
                  '("CtaCte".CLIENTE = '+GrillaQ.FieldByName('CLIENTE').AsString+') and ("CtaCte".OPERACION = '+GrillaQ.FieldByName('OPERACION').AsString+')';
Tabla.ExecSQL;
Tabla.Transaction.CommitRetaining;
consulta;
end;

procedure TCobranzaJudicialForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
end;

procedure TCobranzaJudicialForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_DOWN then
   DbGrid1.SetFocus;
end;

procedure TCobranzaJudicialForm.FormShow(Sender: TObject);
begin
DiasEdit.Text:=dm.ConfigQuery.FieldByName('GesCobExtraJudicial').AsString;
Consulta;
end;

procedure TCobranzaJudicialForm.ImprimirBitBtnClick(Sender: TObject);
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 ImprimirDataModule.SImpr(GrillaQ.SQL.Text, 'DeudoresPorCredito');
 ImprimirDataModule.Free;
end;

procedure TCobranzaJudicialForm.JudicialBitBtnClick(Sender: TObject);
begin
Tabla.SQL.Text := 'Update "CtaCte" Set Cobranza = 4 Where '+
                  '("CtaCte".CLIENTE = '+GrillaQ.FieldByName('CLIENTE').AsString+') and ("CtaCte".OPERACION = '+GrillaQ.FieldByName('OPERACION').AsString+')';
Tabla.ExecSQL;
Tabla.Transaction.CommitRetaining;
consulta;
end;

procedure TCobranzaJudicialForm.SeleccionarBitBtnClick(Sender: TObject);
begin
close;
end;

procedure TCobranzaJudicialForm.Consulta;
 begin
Fecha := FormatDateTime('mm/dd/yyyy', (now-StrToInt(DiasEdit.Text)));
GrillaQ.SQL.Text:='SELECT'+
'  "CtaCteItem".VENCE,'+
'  "Cliente".NOMBRE,'+
'  "CtaCteItem".CUOTA,'+
'  "CtaCteItem".PAGADO,'+
'  "CtaCteItem".IMPORTE,'+
'  "CtaCteItem".DESCRIPCION,'+
'  "CtaCte".CLIENTE,'+
'  "CtaCte".OPERACION'+
' FROM'+
'  "CtaCte"'+
'  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'+
'  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'+
' WHERE'+
'  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND'+
'  ("CtaCteItem".VENCE < '+QuotedStr(fecha)+') AND'+
'  ("CtaCte".COBRANZA = 3)'+
' ORDER BY'+
'  "CtaCteItem".VENCE'+
'';
GrillaQ.Open;
 end;

end.
