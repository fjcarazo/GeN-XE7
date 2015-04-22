unit ActivacionesLF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave, RpRender, RpRenderCanvas,
  RpRenderPrinter, DataModule, Grids, DBGrids, ImprimirDM;

type
  TActivacionesLForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Tabla: TADOQuery;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    DataSource: TDataSource;
    EmpresaTabla: TADOQuery;
    Label3: TLabel;
    ImprimirBitBtn: TBitBtn;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DTP1CloseUp(Sender: TObject);
    procedure DTP2CloseUp(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
  private
    Procedure EnvioRamTerminado;
    { Private declarations }
  public
  Cancela :Boolean;
  Reporte, Cuenta :String;
    { Public declarations }
  end;

type
 TCompartido = record
   Numero: Integer;
   Cadena: String[20];
 end;
 PCompartido   =^TCompartido;

var
  ActivacionesLForm: TActivacionesLForm;
  Compartido  : PCompartido;
  FicheroM    : THandle;  

implementation

{$R *.dfm}

Procedure TActivacionesLForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TActivacionesLForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(self);
   EmpresaTabla.Open;
   DTP2.DateTime := Now;
end;

procedure TActivacionesLForm.DTP1CloseUp(Sender: TObject);
begin
   If DTP1.Date > DTP2.Date then
   begin
      MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.',mtError,[mbOK],0);
      DTP1.DateTime := DTP2.DateTime;
   end;
end;

procedure TActivacionesLForm.DTP2CloseUp(Sender: TObject);
begin
   If DTP2.Date < DTP1.Date then
   begin
      MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.',mtError,[mbOK],0);
      DTP2.DateTime := DTP1.DateTime;
   end;
end;

procedure TActivacionesLForm.NoBitBtnClick(Sender: TObject);
begin
   Cancela := true;
   Close;
end;

procedure TActivacionesLForm.SiBitBtnClick(Sender: TObject);
VAR i: INTEGER;
begin
      Tabla.SQL.Text:='SELECT ActivarCelular.IMEI, ActivarCelular.NSE, Vendedor.Nombre AS VENDEDOR, Articulos_1.Descripcion AS CHIP, Articulos.Descripcion AS CELULAR, Clientes.NombreCliente AS CLIENTE, Factura.CodFactura AS COMPROBANTE, ActivarCelular.Fecha,'+
      ' "'+EmpresaTabla.FieldByName('Nombre').AsString+'" As Empresa,"'+DateToStr(DTP1.Date)+'" As Desde,"'+DateToStr(DTP2.Date)+'" As Hasta'+
      ' FROM ((ActivarCelular INNER JOIN (((Factura INNER JOIN Clientes ON Factura.CodCliente = Clientes.CodCliente)'+
      ' INNER JOIN FacturaItem ON Factura.CodFactura = FacturaItem.CodFactura)'+
      ' INNER JOIN Articulos ON FacturaItem.CodParte = Articulos.CodParte) ON ActivarCelular.IMEI = Articulos.CodigoBarra)'+
      ' INNER JOIN Articulos AS Articulos_1 ON ActivarCelular.NSE = Articulos_1.CodigoBarra) INNER JOIN Vendedor ON ActivarCelular.Vendedor = Vendedor.Codigo'+
      '';
      ShortDateFormat := '#yyyy/mm/dd#';
      Tabla.SQL.Add(' WHERE ActivarCelular.Fecha >= '+DateToStr(DTP1.Date)+' AND ActivarCelular.Fecha <= '+DateToStr(DTP2.Date));
      Tabla.SQL.Add(' ORDER BY ActivarCelular.Fecha');
      Tabla.Open;
      ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TActivacionesLForm.FormDestroy(Sender: TObject);
begin
EnvioRamTerminado;
end;

procedure TActivacionesLForm.ImprimirBitBtnClick(Sender: TObject);
begin
ImprimirDataModule:=TImprimirDataModule.Create(self);
try

finally
   with ImprimirDataModule do
   begin
      Query.SQL.Text:=Tabla.SQL.Text;
      Query.Open;
      RvProject.ProjectFile:=Path+'Report\ActivacionesL.rav';
      RvProject.Execute;
      RvProject.Close;
      ImprimirDataModule.Free;
   end;
end;

end;

end.
