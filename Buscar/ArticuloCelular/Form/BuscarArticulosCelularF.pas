unit BuscarArticulosCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls,
  DataModule;

type
  TBuscaArticuloCelularForm = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    ProveedorEdit: TEdit;
    CodigoEdit: TEdit;
    DescripcionEdit: TEdit;
    RubroEdit: TEdit;
    CategoriaEdit: TEdit;
    MarcaEdit: TEdit;
    Label6: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    DSArticulos: TDataSource;
    ATArticulos: TADOQuery;
    VerTodosBitBtn: TBitBtn;
    Label7: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DescripcionEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MarcaEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RubroEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodigoEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProveedorEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CategoriaEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodigoEditExit(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerTodosBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cb: String;
    Precio, Proveedor: string;
    procedure buscar;
  end;

var
  BuscaArticuloCelularForm: TBuscaArticuloCelularForm;

implementation

{$R *.dfm}

procedure TBuscaArticuloCelularForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TBuscaArticuloCelularForm.SiBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBuscaArticuloCelularForm.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TBuscaArticuloCelularForm.DBGrid1DblClick(Sender: TObject);
begin
  SiBitBtnClick(DBGrid1);
end;

procedure TBuscaArticuloCelularForm.FormShow(Sender: TObject);
begin
  if ATArticulos.Active = True then
    ATArticulos.Close;
  if (Proveedor <> '') then
    ProveedorEdit.Text := Proveedor;
  if (Precio <> 'Costo') and (Precio <> 'Precio1') and (Precio <> 'Precio2') and
    (Precio <> 'Precio3') and (Precio <> 'Precio4') and (Precio <> 'Precio5')
    and (Precio <> 'Precio6') and (Precio <> 'PrecioCtaCte') then
  begin
    if Precio = '' then
      Precio := 'Precio6'
    else
      Precio := 'Precio' + Precio;
    if Precio = 'Costo' then
      Precio := 'Costo';
  end;
  ATArticulos.SQL.Text := 'SELECT * FROM Articulos' +
    ' INNER JOIN Proveedores ON Articulos.Proveedor' +
    ' = Proveedores.CodPRove WHERE (Nombre like ' +
    QuotedStr(ProveedorEdit.Text + '%') + ')' + 'ORDER BY CodParte';
  if cb = 'si' then
    CodigoEdit.SetFocus
  else
    DescripcionEdit.SetFocus;
end;

procedure TBuscaArticuloCelularForm.DescripcionEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(DescripcionEdit.Text) > 2) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.buscar;
begin
  ATArticulos.SQL.Text := 'SELECT * FROM Articulos' +
    ' INNER JOIN Proveedores ON Articulos.Proveedor' +
    ' = Proveedores.CodPRove WHERE ' + '(CodigoBarra like ' +
    QuotedStr(CodigoEdit.Text + '%') + ')' + 'AND (Descripcion like ' +
    QuotedStr(DescripcionEdit.Text + '%') + ')' + 'AND (Marca like ' +
    QuotedStr(MarcaEdit.Text + '%') + ')' + 'AND (Articulos.Rubro like ' +
    QuotedStr(RubroEdit.Text + '%') + ')' + 'AND (Categoria like ' +
    QuotedStr(CategoriaEdit.Text + '%') + ')' + 'AND (Nombre like ' +
    QuotedStr(ProveedorEdit.Text + '%') + ')' + 'ORDER BY CodParte';
  ATArticulos.Open;
end;

procedure TBuscaArticuloCelularForm.MarcaEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(MarcaEdit.Text) > 1) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.RubroEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(RubroEdit.Text) > 1) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.VerTodosBitBtnClick(Sender: TObject);
begin
  ATArticulos.SQL.Text := 'SELECT * FROM Articulos' +
    ' INNER JOIN Proveedores ON Articulos.Proveedor' +
    ' = Proveedores.CodPRove ' + 'ORDER BY Descripcion';
  ATArticulos.Open;
end;

procedure TBuscaArticuloCelularForm.CodigoEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(CodigoEdit.Text) > 1) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.ProveedorEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(ProveedorEdit.Text) > 1) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.CategoriaEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) and (Length(CategoriaEdit.Text) > 1) then
    buscar;
end;

procedure TBuscaArticuloCelularForm.CodigoEditExit(Sender: TObject);
begin
  DescripcionEdit.SetFocus;
end;

procedure TBuscaArticuloCelularForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not DBGrid1.Focused = True) then
    buscar;
end;

end.
