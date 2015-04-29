unit BuscarTipoGastoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImprimirDM, StdCtrls, Buttons, Grids, DBGrids, DataModule,
  ExtCtrls, jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscarTipoGastoForm = class(TForm)
    DBGrid1: TDBGrid;
    DS: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    descEdit: TEdit;
    BitBtn1: TBitBtn;
    Tabla: TIBQuery;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarTipoGastoForm: TBuscarTipoGastoForm;

implementation

{$R *.dfm}

procedure TBuscarTipoGastoForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TBuscarTipoGastoForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TBuscarTipoGastoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not DBGrid1.Focused = True then
  begin
    Tabla.SQL.Text := 'SELECT * FROM "TipoGasto" WHERE' +
      ' "TipoGasto".DESCRIPCION like ' + QuotedStr(descEdit.Text + '%') + '';
    Tabla.Open;
  end;
end;

procedure TBuscarTipoGastoForm.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(DBGrid1);
end;

procedure TBuscarTipoGastoForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarTipoGastoForm.FormShow(Sender: TObject);
begin
  Tabla.Open;
end;

procedure TBuscarTipoGastoForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'TIPO DE GASTO');
  ImprimirDataModule.Free;
end;

end.
