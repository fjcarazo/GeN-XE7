unit VerCobranza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, ImprimirDM, Mask, DBCtrls, StdCtrls,
  Buttons, ComCtrls, DataModule, jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TVerCobranzaForm = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Label16: TLabel;
    ImprimirBitBtn: TBitBtn;
    CodigoDBText: TDBText;
    NombreDBText: TDBText;
    SeleccionarBitBtn: TBitBtn;
    DiasEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DS: TDataSource;
    GrillaQ: TIBQuery;
    Image1: TImage;
    procedure CancelarBitBtnClick(Sender: TObject);
    procedure SeleccionarBitBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure DiasEditKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    fecha: string;
    { Public declarations }
  end;

var
  VerCobranzaForm: TVerCobranzaForm;

implementation

{$R *.dfm}

procedure TVerCobranzaForm.CancelarBitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TVerCobranzaForm.DBGrid1DblClick(Sender: TObject);
begin
  SeleccionarBitBtnClick(DBGrid1);
end;

procedure TVerCobranzaForm.DBGrid1Enter(Sender: TObject);
begin
  SeleccionarBitBtnClick(DBGrid1);
end;

procedure TVerCobranzaForm.DiasEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DiasEdit.Text <> '' then
  begin
    fecha := FormatDateTime('mm/dd/yyyy', (now - StrToInt(DiasEdit.Text)));
    GrillaQ.SQL.Text := 'SELECT' + '  "CtaCteItem".VENCE,' +
      '  "Cliente".NOMBRE,' + '  "CtaCteItem".CUOTA,' + '  "CtaCteItem".PAGADO,'
      + '  "CtaCteItem".IMPORTE,' + '  "CtaCteItem".DESCRIPCION,' +
      '  "CtaCte".CLIENTE,' + '  "CtaCte".COBRANZA,' + '  "CtaCte".OPERACION' +
      ' FROM' + '  "CtaCte"' +
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
      '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
      + ' WHERE' + '  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND' +
      '  ("CtaCteItem".VENCE < ' + QuotedStr(fecha) + ') AND' +
      '  (("CtaCte".COBRANZA is null) OR ("CtaCte".COBRANZA=1))' + ' ORDER BY' +
      '  "CtaCteItem".VENCE' + '';
    GrillaQ.Open;
  end;
end;

procedure TVerCobranzaForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TVerCobranzaForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(GrillaQ.SQL.Text, 'ARTICULOS');
  ImprimirDataModule.Free;
end;

procedure TVerCobranzaForm.ImprimirBitBtnClick(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.SImpr(GrillaQ.SQL.Text, 'DeudoresPorCredito');
  ImprimirDataModule.Free;
end;

procedure TVerCobranzaForm.SeleccionarBitBtnClick(Sender: TObject);
begin
  if GrillaQ.Active = True then
    close;
end;

end.
