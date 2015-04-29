unit BuscarCuentaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImprimirDM, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,
  jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscarCuentaForm = class(TForm)
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    Tabla: TIBQuery;
    Panel1: TPanel;
    Label2: TLabel;
    DescripcionEdit: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure buscar;
  end;

var
  BuscarCuentaForm: TBuscarCuentaForm;

implementation

uses DataModule;

{$R *.dfm}

procedure TBuscarCuentaForm.buscar;
begin
  Tabla.SQL.Text := 'SELECT ' + '  "Cuenta".JERARQUIA,' +
    '  "Cuenta".DESCRIPCION,' + '  "RubroContable".DESCRIPCION AS RUBRO,' +
    '  "Capitulo".DESCRIPCION AS CAPITULO,' +
    '  "TipoGasto".DESCRIPCION AS TIPOGASTO, ' + '  "Cuenta".CODIGO ' + ' FROM '
    + '  "Cuenta" ' +
    '  INNER JOIN "RubroContable" ON ("Cuenta".RUBRO = "RubroContable".CODIGO)'
    + '  INNER JOIN "Capitulo" ON ("Cuenta".CAPITULO = "Capitulo".CODIGO)' +
    '  LEFT JOIN "TipoGasto" ON ("Cuenta".TIPOGASTO = "TipoGasto".CODIGO) ' +
    ' WHERE ' + ' "Cuenta".DESCRIPCION like ' +
    QuotedStr(DescripcionEdit.Text + '%') + ' ' + ' ORDER BY' +
    '  "Cuenta".DESCRIPCION';
  Tabla.Open;
end;

procedure TBuscarCuentaForm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TBuscarCuentaForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TBuscarCuentaForm.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(DBGrid1);
end;

procedure TBuscarCuentaForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarCuentaForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) then
    buscar;
end;

procedure TBuscarCuentaForm.FormShow(Sender: TObject);
begin
  buscar;
end;

procedure TBuscarCuentaForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'CUENTA');
  ImprimirDataModule.Free;
end;

end.
