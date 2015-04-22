unit Precios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, DataModule, jpeg;

type
  TListaPreciosForm = class(TForm)
    DestinoRadioGroup: TRadioGroup;
    SiBitBtn: TBitBtn;
    RadioGroup2: TRadioGroup;
    procedure SiBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    excel: boolean;
    { Public declarations }
  end;

var
  ListaPreciosForm: TListaPreciosForm;

implementation

uses ImprimirDM;

{$R *.dfm}

procedure TListaPreciosForm.SiBitBtnClick(Sender: TObject);
var
  sql, r, Lista: string;
begin
  Lista := 'PRECIO';
  If RadioGroup2.ItemIndex <> 7 then
  begin
    If RadioGroup2.ItemIndex = 0 then
      Lista := 'PRECIO1'
    else If RadioGroup2.ItemIndex = 1 then
      Lista := 'PRECIO'
    else If RadioGroup2.ItemIndex = 2 then
      Lista := 'PRECIO'
    else If RadioGroup2.ItemIndex = 3 then
      Lista := 'PRECIO'
    else If RadioGroup2.ItemIndex = 4 then
      Lista := 'PRECIO'
    else If RadioGroup2.ItemIndex = 5 then
      Lista := 'PRECIO'
    else If RadioGroup2.ItemIndex = 6 then
      Lista := 'PRECIO';
    r := ('Precios');
  end
  else
    r := ('PreciosTodos');
  sql := 'SELECT ' + '"Articulo".' + Lista + ' As P, ' + '"Articulo".CODIGO, ' +
    '"Articulo".DESCRIPCION, ' + '"Articulo".COSTO, ' + '"Articulo".ULTCOSTO, '
    + '"Articulo".PRECIO1, ' + '"Articulo".PRECIO2, ' + '"Articulo".PRECIO3, ' +
    '"Articulo".PRECIO4, ' + '"Articulo".PRECIO5, ' + '"Articulo".PRECIO6, ' +
    '"Articulo".PRECIO, ' + '"Articulo".PORCENTAJE, ' + '"Articulo".ULTPRECIO, '
    + '"Articulo".MARCA, ' + '"Articulo".COLOR, ' + '"Articulo".CATEGORIA, ' +
    '"Articulo".SUBCATEGORIA, ' + '"Articulo".UBICACION, ' +
    '"Articulo".UNIDAD, ' + '"Articulo".DISPONIBLE, ' +
    '"Articulo".ENPRODUCCION, ' + '"Articulo".NOTAS, ' + '"Articulo".IVA, ' +
    '"Articulo".TASA, ' + '"Articulo".IMPOTROS, ' + '"Articulo".IIBB, ' +
    '"Articulo".STOCKMINIMO, ' + '"Articulo".STOCKMAXIMO, ' +
    '"Articulo".STOCKVENDIDO, ' + '"Articulo".FECHACOMPULT, ' +
    '"Articulo".LISTA, ' + '"Articulo".PROCEDENCIA, ' +
    '"Articulo".CODIGOBARRA, ' + '"Articulo".RUBRO, ' + '"Articulo".PROVEEDOR, '
    + '"Articulo".GARANTIA, ' + '"Articulo".FECHA, ' + '"Articulo".PEDIDO, ' +
    '"Articulo".STOCK, ' + '"Articulo".EXISTENTE, ' + '"Articulo".ACTUAL, ' +
    '"Articulo".MARCADOCONTADO, ' + '"Articulo".MARCADOLISTA, ' +
    '"Articulo".MARCADOFINAL, ' + '"Articulo".PREPARADO, ' +
    '"Articulo".CTANOMBRE, ' + '"Articulo".CTATIPO, ' +
    '"Articulo".CTAANTICIPO, ' + '"Articulo".CTAIIBB, ' + '"Articulo".ESTADO, '
    + '"Articulo".VENCE, ' + '"Articulo".VENCIMIENTO ' + 'FROM ' + '"Articulo" '
    + 'ORDER BY ' + '"Articulo".DESCRIPCION';
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.SImpr(sql, r);
  ImprimirDataModule.Free;
end;

procedure TListaPreciosForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(self);
  ImprimirDataModule := TImprimirDataModule.Create(self);
end;

end.
