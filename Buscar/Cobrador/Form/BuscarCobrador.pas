unit BuscarCobrador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, DBCtrls, StdCtrls, DB, ImprimirDM, Grids, DBGrids,
  ExtCtrls, Buttons, jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscarCobradorForm = class(TForm)
    DataSource: TDataSource;
    DBGrid1: TDBGrid;
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
    Tabla: TIBQuery;
    Panel1: TPanel;
    Label1: TLabel;
    DescripcionEdit: TEdit;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SiBitBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure Buscar;
    procedure DescripcionEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarCobradorForm: TBuscarCobradorForm;

implementation

{$R *.dfm}

procedure TBuscarCobradorForm.Buscar;
begin
  Tabla.SQL.Text := ' select * from "Cobrador" where   ("Cobrador".NOMBRE LIKE '
    + QuotedStr(DescripcionEdit.Text + '%') + ')';
  Tabla.Open;
end;

procedure TBuscarCobradorForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarCobradorForm.SiBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBuscarCobradorForm.DBGrid1DblClick(Sender: TObject);
begin
  SiBitBtnClick(DBGrid1);
end;

procedure TBuscarCobradorForm.DescripcionEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Buscar;
end;

procedure TBuscarCobradorForm.FormShow(Sender: TObject);
begin
  Tabla.Active := True;
end;

procedure TBuscarCobradorForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'COBRADORES');
  ImprimirDataModule.Free;
end;

procedure TBuscarCobradorForm.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

end.
