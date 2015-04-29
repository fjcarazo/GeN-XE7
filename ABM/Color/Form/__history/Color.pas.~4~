unit Color;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  Mask, ADODB;

type
  TColorForm = class(TForm)
    ColorADOTable: TADOTable;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ColorDataSource: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label15: TLabel;
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
  ColorForm: TColorForm;

implementation

{$R *.dfm}

procedure TColorForm.FormCreate(Sender: TObject);
begin
  ColorADOTable.Active := true;
end;

procedure TColorForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ColorADOTable.Active := false;
end;

procedure TColorForm.BitBtn1Click(Sender: TObject);
begin
  desc := DBEdit1.Text;
  If (ColorADOTable.State = dsEdit) or (ColorADOTable.State = dsInsert) then
    If DBEdit1.Text <> '' then
    begin
      ColorADOTable.Post;
    end;
  Close;
end;

procedure TColorForm.FormShow(Sender: TObject);
begin
  ColorADOTable.Insert;
end;

end.
