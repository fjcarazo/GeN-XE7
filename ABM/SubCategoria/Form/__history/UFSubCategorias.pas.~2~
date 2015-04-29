unit UFSubCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  Mask, ADODB, DataModule;

type
  TFSubCategorias = class(TForm)
    TSubCategorias: TADOTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSSubCategorias: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    TSubCategoriasSubCategoria: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    desc: string;
    { Public declarations }
  end;

var
  FSubCategorias: TFSubCategorias;

implementation

{$R *.dfm}

procedure TFSubCategorias.FormCreate(Sender: TObject);
begin
  TSubCategorias.Active := true;
end;

procedure TFSubCategorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSubCategorias.Active := false;
end;

procedure TFSubCategorias.BitBtn1Click(Sender: TObject);
begin
  desc := DBEdit1.Text;
  If (TSubCategorias.State = dsEdit) or (TSubCategorias.State = dsInsert) then
    If DBEdit1.Text <> '' then
    begin
      TSubCategorias.Post;
    end;
  Close;
end;

procedure TFSubCategorias.FormShow(Sender: TObject);
begin
  TSubCategorias.Insert;
end;

end.
