unit BuscarCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, DataModule, ExtCtrls,
  jpeg, ImprimirDM, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscarChequesForm = class(TForm)
    DBGrid1: TDBGrid;
    QueryDataSource: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    Tabla: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo: String;
  end;

var
  BuscarChequesForm: TBuscarChequesForm;

implementation

{$R *.dfm}

procedure TBuscarChequesForm.BitBtn1Click(Sender: TObject);
begin
  Codigo := IntToStr(Tabla.FieldByName('CodCheque').AsInteger);
  Close;
end;

procedure TBuscarChequesForm.BitBtn2Click(Sender: TObject);
begin
  Codigo := '';
  Close;
end;

procedure TBuscarChequesForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not DBGrid1.Focused = True then
  begin
    Tabla.SQL.Text := 'SELECT * FROM Cheque WHERE' + '(Numero like ' +
      QuotedStr(Edit2.Text + '%') + ')' + 'AND (Detalle like ' +
      QuotedStr(Edit3.Text + '%') + ')' + 'AND (Fecha like ' +
      QuotedStr(Edit4.Text + '%') + ')' + 'AND (Dias like ' +
      QuotedStr(Edit5.Text + '%') + ')' + 'AND (MntCheque like ' +
      QuotedStr(Edit1.Text + '%') + ')' + '';
    Tabla.Open;
  end;
end;

procedure TBuscarChequesForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'CHEQUES');
  ImprimirDataModule.Free;
end;

procedure TBuscarChequesForm.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(DBGrid1);
end;

procedure TBuscarChequesForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarChequesForm.FormDestroy(Sender: TObject);
begin
  Tabla.Close;
end;

procedure TBuscarChequesForm.FormCreate(Sender: TObject);
begin
  Tabla.Open;
end;

end.
