unit BuscarPlanFacturado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, DataModule, ExtCtrls, jpeg,
  ImprimirDM, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TBuscarPlanFacturadoForm = class(TForm)
    DBGrid1: TDBGrid;
    DSPlan: TDataSource;
    Panel2: TPanel;
    SiBitBtn: TBitBtn;
    Panel1: TPanel;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Tabla: TIBQuery;
    Image1: TImage;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarPlanFacturadoForm: TBuscarPlanFacturadoForm;

implementation

{$R *.dfm}

procedure TBuscarPlanFacturadoForm.SiBitBtnClick(Sender: TObject);
begin
  close;
end;

procedure TBuscarPlanFacturadoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not DBGrid1.Focused = True then
  begin
    Tabla.SQL.Text := 'SELECT' + '  "CtaCte".OPERACION,' +
      '  "Cliente".NOMBRE AS CLIENTE,' + '  "Cobrador".NOMBRE AS COBRADOR,' +
      '  "CtaCteItem".DESCRIPCION' + ' FROM' + '  "CtaCte"' +
      '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
      + '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
      '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)' +
      ' Where' + ' ("CtaCte".OPERACION LIKE ' + QuotedStr(Edit2.Text + '%') +
      ')' + ' AND ("CtaCteItem".DESCRIPCION LIKE ' + QuotedStr(Edit3.Text + '%')
      + ')' + ' AND ("Cobrador".CODIGO LIKE ' + QuotedStr(Edit1.Text + '%') +
      ')' + ' AND ("Cliente".CODIGO LIKE ' + QuotedStr(Edit4.Text + '%') + ')' +
      ' GROUP BY "CtaCte".OPERACION, "Cliente".NOMBRE, "Cobrador".NOMBRE, "CtaCteItem".DESCRIPCION';
    Tabla.Open;
  end;
end;

procedure TBuscarPlanFacturadoForm.DBGrid1DblClick(Sender: TObject);
begin
  SiBitBtnClick(DBGrid1);
end;

procedure TBuscarPlanFacturadoForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarPlanFacturadoForm.FormShow(Sender: TObject);
begin
  Tabla.SQL.Text := 'SELECT' + '  "CtaCte".OPERACION,' +
    '  "Cliente".NOMBRE AS CLIENTE,' + '  "Cobrador".NOMBRE AS COBRADOR,' +
    '  "CtaCteItem".DESCRIPCION' + ' FROM' + '  "CtaCte"' +
    '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
    + '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
    '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)' +
    ' GROUP BY "CtaCte".OPERACION, "Cliente".NOMBRE, "Cobrador".NOMBRE, "CtaCteItem".DESCRIPCION';
  Tabla.Open;
end;

procedure TBuscarPlanFacturadoForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'ARTICULOS');
  ImprimirDataModule.Free;
end;

procedure TBuscarPlanFacturadoForm.NoBitBtnClick(Sender: TObject);
begin
  close;
end;

end.
