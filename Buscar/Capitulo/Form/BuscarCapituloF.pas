unit BuscarCapituloF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, DataModule, ExtCtrls,
  IBCustomDataSet, IBQuery, jpeg, ImprimirDM;

type
  TBuscarCapituloForm = class(TForm)
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
  BuscarCapituloForm: TBuscarCapituloForm;

implementation

{$R *.dfm}

procedure TBuscarCapituloForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TBuscarCapituloForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not DBGrid1.Focused = True then
  begin
    Tabla.SQL.Text := 'SELECT * FROM "Capitulo" WHERE' +
      ' "Capitulo".DESCRIPCION like ' + QuotedStr(descEdit.Text + '%') + '';
    Tabla.Open;
  end;
end;

procedure TBuscarCapituloForm.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(DBGrid1);
end;

procedure TBuscarCapituloForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarCapituloForm.FormShow(Sender: TObject);
begin
  Tabla.Open;
end;

procedure TBuscarCapituloForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'BUSCAR CAPITULO');
  ImprimirDataModule.Free;
end;

end.
