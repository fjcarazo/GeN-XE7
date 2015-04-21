unit BuscaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, DataModule, ExtCtrls,
  IBCustomDataSet, IBQuery, jpeg, ImprimirDM, GIFImg;

type
  TBuscaCompraForm = class(TForm)
    DS: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    codigoEdit: TEdit;
    Panel2: TPanel;
    SiBitBtn: TBitBtn;
    Tabla: TIBQuery;
    LetraEdit: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    todoBitBtn: TBitBtn;
    imprimir_exportarImage: TImage;
    Label3: TLabel;
    ComprobanteEdit: TEdit;
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure todoBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imprimir_exportarImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo,CodProve,Tipo,SqL: String;
    Cancela :boolean;
  end;

var
  BuscaCompraForm: TBuscaCompraForm;

implementation

{$R *.dfm}

procedure TBuscaCompraForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if not DbGrid1.Focused = True then
 begin
 Tabla.SQL.Text:='SELECT ' + QuotedStr
        (dm.ConfigQuery.FieldByName('NOMBRE').AsString) + ' As Empresa,' +
        '  "Proveedor".NOMBRE,' + '  "Proveedor".TITULAR,' +
        '  "Proveedor".DIRECCION,' + '  "Proveedor".DIRECCIONCOMERCIAL,' +
        '  "Articulo".DESCRIPCION,' + '  "CompraItem".OPERACION,' +
        '  "CompraItem".ARTICULO,' + '  "CompraItem".CANTIDAD,' +
        '  "CompraItem".PRECIO,' +
        '  ("CompraItem".PRECIO * "CompraItem".CANTIDAD ) as PREXCANT,' +
        '  "CompraItem".SERVICIO,' + '  "CompraItem".DESCRIPCION AS DESCR,' +
        '  "Compra".CODIGO,' + '  "Compra".LETRA,' + '  "Compra".FECHA,' +
        '  "Compra".COMPROBANTE,' + '  "Compra".IVA3,' + '  "Compra".TOTAL,' +
        '  "Compra".CONTADO,' + '  "Compra".Proveedor,' + '  "Compra".SUBTOTAL,' +
        '  "Compra".DESCUENTO,' + '  "Compra".IMPUESTO,' + '  "Compra".IVA2,' +
        '  "Compra".IVA1,' + '  "Compra".EXCENTO,' + '  "Compra".SALDO,' +
        '  "Compra".PAGADO' + ' FROM' + '  "Compra"' +
        '  INNER JOIN "CompraItem" ON ("Compra".CODIGO = "CompraItem".OPERACION)' +
        '  INNER JOIN "Articulo" ON ("CompraItem".ARTICULO = "Articulo".CODIGO)'+
        '  INNER JOIN "Proveedor" ON ("Compra".Proveedor = "Proveedor".CODIGO)' +
        '  WHERE  ("Compra".COMPROBANTE like '+QuotedStr(ComprobanteEdit.Text+'%')+
        '  ) AND ("Compra".CODIGO like '+QuotedStr(codigoEdit.Text+'%')+
        '  ) AND ("Compra".LETRA like '+QuotedStr(LetraEdit.Text+'%')+
        '  )';
 Tabla.Open;
 end;
  if Key = VK_Escape then Close;
end;

procedure TBuscaCompraForm.FormShow(Sender: TObject);
begin
dm:=tdm.Create(self);
 SqL:='SELECT '+QuotedStr(dm.ConfigQuery.FieldByName('NOMBRE').AsString) + ' As Empresa,' +
        '  "Proveedor".NOMBRE,' + '  "Proveedor".TITULAR,' +
        '  "Proveedor".DIRECCION,' + '  "Proveedor".DIRECCIONCOMERCIAL,' +
        '  "Articulo".DESCRIPCION,' + '  "CompraItem".OPERACION,' +
        '  "CompraItem".ARTICULO,' + '  "CompraItem".CANTIDAD,' +
        '  "CompraItem".PRECIO,' +
        '  ("CompraItem".PRECIO * "CompraItem".CANTIDAD ) as PREXCANT,' +
        '  "CompraItem".SERVICIO,' + '  "CompraItem".DESCRIPCION AS DESCR,' +
        '  "Compra".CODIGO,' + '  "Compra".LETRA,' + '  "Compra".FECHA,' +
        '  "Compra".COMPROBANTE,' + '  "Compra".IVA3,' + '  "Compra".TOTAL,' +
        '  "Compra".CONTADO,' + '  "Compra".Proveedor,' + '  "Compra".SUBTOTAL,' +
        '  "Compra".DESCUENTO,' + '  "Compra".IMPUESTO,' + '  "Compra".IVA2,' +
        '  "Compra".IVA1,' + '  "Compra".EXCENTO,' + '  "Compra".SALDO,' +
        '  "Compra".PAGADO' + ' FROM' + '  "Compra"' +
        '  INNER JOIN "CompraItem" ON ("Compra".CODIGO = "CompraItem".OPERACION)' +
        '  INNER JOIN "Articulo" ON ("CompraItem".ARTICULO = "Articulo".CODIGO)'+
        '  INNER JOIN "Proveedor" ON ("Compra".Proveedor = "Proveedor".CODIGO)' +
        '';
imprimir_exportarImage.Picture.LoadFromFile(Path+'\img\boton_imprimir_exportar.gif');
end;

procedure TBuscaCompraForm.imprimir_exportarImageClick(Sender: TObject);
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 ImprimirDataModule.SImpr(BuscaCompraForm.SqL+' WHERE OPERACION='+Tabla.FieldByName('OPERACION').AsString,'Compra');
 ImprimirDataModule.Free;
end;

procedure TBuscaCompraForm.NoBitBtnClick(Sender: TObject);
begin
   Cancela:=True;
   Codigo := '';
   Close;
end;

procedure TBuscaCompraForm.SiBitBtnClick(Sender: TObject);
begin
 Close;
end;

procedure TBuscaCompraForm.todoBitBtnClick(Sender: TObject);
begin
 Tabla.SQL.Text:=SqL;
 Tabla.Open;
end;

procedure TBuscaCompraForm.DBGrid1DblClick(Sender: TObject);
begin
   SiBitBtnClick(DBGrid1);
end;

procedure TBuscaCompraForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_DOWN then
   DbGrid1.SetFocus;
end;

procedure TBuscaCompraForm.FormDestroy(Sender: TObject);
begin
   Tabla.Close;
end;

end.
