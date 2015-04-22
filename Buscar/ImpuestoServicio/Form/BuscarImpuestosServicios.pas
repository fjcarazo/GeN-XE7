unit BuscarImpuestosServicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  Buttons, DataModule;

type
  TBuscarImpuestosServiciosForm = class(TForm)
    BuscarImpuestosServiciosDataSource: TDataSource;
    ImpuestosServiciosQuery: TADOQuery;
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
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    CBFiltro: TComboBox;
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod_ImpuestosServicios: string;
  end;

var
  BuscarImpuestosServiciosForm: TBuscarImpuestosServiciosForm;

implementation

{$R *.dfm}

procedure TBuscarImpuestosServiciosForm.Edit1Change(Sender: TObject);
var
  Filtro: String;
begin
  If (Edit1.Text <> '') then
  begin
    ImpuestosServiciosQuery.Filtered := False;
    If CBFiltro.Text = 'Código' then
      Filtro := 'CodImpuestoServicio Like ' + Edit1.Text
    else If CBFiltro.Text = 'Nombre' then
      Filtro := 'Nombre Like ''' + Edit1.Text + '*'''
    else If CBFiltro.Text = 'Celular' then
      Filtro := 'Celular Like ''' + Edit1.Text + '*''';
    ImpuestosServiciosQuery.Filter := Filtro;
    ImpuestosServiciosQuery.Filtered := True
  end
  else
    ImpuestosServiciosQuery.Filtered := False;
end;

procedure TBuscarImpuestosServiciosForm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscarImpuestosServiciosForm.BitBtn1Click(Sender: TObject);
begin
  Cod_ImpuestosServicios := ImpuestosServiciosQuery.FieldByName
    ('CodImpuestoServicio').AsString;
  Close;
end;

procedure TBuscarImpuestosServiciosForm.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(DBGrid1);
end;

procedure TBuscarImpuestosServiciosForm.BitBtn2Click(Sender: TObject);
begin
  Cod_ImpuestosServicios := '';
  Close;
end;

procedure TBuscarImpuestosServiciosForm.FormCreate(Sender: TObject);
begin
  ImpuestosServiciosQuery.Open;
end;

procedure TBuscarImpuestosServiciosForm.FormDestroy(Sender: TObject);
begin
  ImpuestosServiciosQuery.Close;
end;

procedure TBuscarImpuestosServiciosForm.FormShow(Sender: TObject);
begin
  CBFiltro.ItemIndex := 1;
end;

end.
