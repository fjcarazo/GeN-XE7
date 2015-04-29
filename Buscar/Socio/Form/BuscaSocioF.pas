unit BuscaSocioF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  Buttons, DataModule, jpeg, ImprimirDM, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscaSocioForm = class(TForm)
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    SiBitBtn: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DescripcionEdit: TEdit;
    Tabla: TIBQuery;
    DataSource: TDataSource;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SiBitBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DescripcionEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure Buscar;
    procedure Image1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod_Prove: string;
  end;

var
  BuscaSocioForm: TBuscaSocioForm;

implementation

{$R *.dfm}

Procedure TBuscaSocioForm.Buscar;
begin
  Tabla.SQL.Text := ' select * from "Socio" where ("Socio".NOMBRE LIKE ' +
    QuotedStr(DescripcionEdit.Text + '%') + ')';
  Tabla.Open;
end;

procedure TBuscaSocioForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscaSocioForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Escape then
    Close;
end;

procedure TBuscaSocioForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'ARTICULOS');
  ImprimirDataModule.Free;
end;

procedure TBuscaSocioForm.SiBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBuscaSocioForm.DBGrid1DblClick(Sender: TObject);
begin
  SiBitBtnClick(DBGrid1);
end;

procedure TBuscaSocioForm.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBuscaSocioForm.DescripcionEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Buscar;
end;

procedure TBuscaSocioForm.FormCreate(Sender: TObject);
begin
  Tabla.Open;
end;

end.
