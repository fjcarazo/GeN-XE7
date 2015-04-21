unit MenuMayoristaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeEngine, Series, ComCtrls, Grids, DBGrids,
  Menus, DB, ADODB, jpeg, DataModule, demo;

type

  EExecAppError = class(Exception);

  TFMainForm = class(TForm)
    MainMenu1: TMainMenu;
    ABM1: TMenuItem;
    Proveedores: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Operaciones1: TMenuItem;
    Vender1: TMenuItem;
    Comprar1: TMenuItem;
    Clientes: TMenuItem;
    Rubro: TMenuItem;
    Categoria: TMenuItem;
    SubCategorias: TMenuItem;
    Bancos: TMenuItem;
    IngresosBrutos: TMenuItem;
    Aumentarporporcentaje1: TMenuItem;
    Productos: TMenuItem;
    Listados1: TMenuItem;
    Cheques2: TMenuItem;
    Productos1: TMenuItem;
    AnularVenta1: TMenuItem;
    ReimprimirVenta1: TMenuItem;
    DevolverMercadera1: TMenuItem;
    Presupuesto1: TMenuItem;
    Infoprmes1: TMenuItem;
    ListadePrecios1: TMenuItem;
    Configuracin1: TMenuItem;
    Retenciones1: TMenuItem;
    ImpuestosyServicios1: TMenuItem;
    Clientes1: TMenuItem;
    Proveedores1: TMenuItem;
    Caja2: TMenuItem;
    EnCartera1: TMenuItem;
    Entregados1: TMenuItem;
    CargarFactura1: TMenuItem;
    Pagos1: TMenuItem;
    PagosaProveedores1: TMenuItem;
    PagosdeServicios1: TMenuItem;
    PagoaCobradores1: TMenuItem;
    PagoaVendedores1: TMenuItem;
    AsignarCobrador1: TMenuItem;
    Empresa1: TMenuItem;
    Sistema1: TMenuItem;
    Pedido1: TMenuItem;
    Ganancias1: TMenuItem;
    VaciarBasedeDatos1: TMenuItem;
    Vendedores: TMenuItem;
    Cobradores: TMenuItem;
    VerStock1: TMenuItem;
    CrearPedido1: TMenuItem;
    Image2: TImage;
    CuentaCorriente1: TMenuItem;
    Licencia1: TMenuItem;
    Caja3: TMenuItem;
    Modulos1: TMenuItem;
    Contable1: TMenuItem;
    Creditos1: TMenuItem;
    Co1: TMenuItem;
    BACKUPCopiadeSeguridad1: TMenuItem;
    Query: TADOQuery;
    Stock1: TMenuItem;
    Login1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure MantenimientoEmpleados1Click(Sender: TObject);
    procedure Planillas1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProveedoresClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ProductosClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure BancosClick(Sender: TObject);
    procedure RubroClick(Sender: TObject);
    procedure CategoriaClick(Sender: TObject);
    procedure SubCategoriasClick(Sender: TObject);
    procedure Aumentarporporcentaje1Click(Sender: TObject);
    procedure AnularVenta1Click(Sender: TObject);
    procedure Presupuesto1Click(Sender: TObject);
    procedure Comprar1Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure ListadePrecios1Click(Sender: TObject);
    procedure Retenciones1Click(Sender: TObject);
    procedure ImpuestosyServicios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Caja2Click(Sender: TObject);
    procedure EnCartera1Click(Sender: TObject);
    procedure Entregados1Click(Sender: TObject);
    procedure CargarFactura1Click(Sender: TObject);
    procedure PlanesClick(Sender: TObject);
    procedure CalculodeCuota1Click(Sender: TObject);
    procedure PagoaCobradores1Click(Sender: TObject);
    procedure RendiciondeCobrador1Click(Sender: TObject);
    procedure PagoaVendedores1Click(Sender: TObject);
    procedure AsignarCobrador1Click(Sender: TObject);
    procedure RendicindeClientes1Click(Sender: TObject);
    procedure CartndeCobranza1Click(Sender: TObject);
    procedure LibroDiarioClick(Sender: TObject);
    procedure PagosdeServicios1Click(Sender: TObject);
    procedure CancelacindePlan1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Ganancias1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure VaciarBasedeDatos1Click(Sender: TObject);
    procedure VendedoresClick(Sender: TObject);
    procedure CobradoresClick(Sender: TObject);
    procedure VerStock1Click(Sender: TObject);
    procedure CrearPedido1Click(Sender: TObject);
    procedure PagosaProveedores1Click(Sender: TObject);
    procedure CuentaCorriente1Click(Sender: TObject);
    procedure ReimprimirVenta1Click(Sender: TObject);
    procedure Licencia1Click(Sender: TObject);
    procedure Cuentas1Click(Sender: TObject);
    procedure LibroIVAVentas1Click(Sender: TObject);
    procedure LibroIVACompras1Click(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure Caja3Click(Sender: TObject);
    procedure Creditos1Click(Sender: TObject);
    procedure Contable1Click(Sender: TObject);
    procedure Co1Click(Sender: TObject);
    procedure BACKUPCopiadeSeguridad1Click(Sender: TObject);
    procedure Stock1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMainForm: TFMainForm;

implementation

uses LoginF;

{$R *.dfm}

procedure TFMainForm.FormCreate(Sender: TObject);
begin
DemoDM:=TDemoDM.Create(self);
DemoDM.verify;
// Muestra la pantalla de Login
   FLogin:=TFLogin.Create(self);
   try
     FLogin.ShowModal;
   finally
     FLogin.Free;
   end;
end;

procedure TFMainForm.FormShow(Sender: TObject);
var empresa:string;
begin
if LoginOk <> True then
 begin
 ShowMessage('el usuario no coincide con la clave...');
 close;
 end
else
 begin
 Query.SQL.Text:='Select Nombre From Empresa';
 Query.Open;
 empresa:=Query.FieldByName('nombre').AsString;
 Query.SQL.Text:='Select * From Usuarios where CodUsuario='+Usuario;
 Query.Open;
 if Query.FieldByName('permisos').AsInteger < 3 then Configuracin1.Visible:=False;
 if Query.FieldByName('permisos').AsInteger < 2 then Modulos1.Visible:=False;
 if Query.FieldByName('permisos').AsInteger < 1 then
  begin
  Listados1.Visible:=False;
  ABM1.Visible:=False;
  Pagos1.Visible:=False;
  Comprar1.Visible:=False;
  CuentaCorriente1.Visible:=false;
  //Presupuesto1.Visible:=false;
  Aumentarporporcentaje1.Visible:=false;
  AnularVenta1.Visible:=false;
  ReimprimirVenta1.Visible:=false;
  DevolverMercadera1.Visible:=false;
  Retenciones1.Visible:=false;
  CargarFactura1.Visible:=false;
  AsignarCobrador1.Visible:=false;
  CrearPedido1.Visible:=false;
  end;
 FMainForm.caption:='GeN - Modulo para Mayorista - ['+empresa+'] -  '+Licencia+' - [USUARIO: '+Query.FieldByName('nombre').AsString+']';
 end;
end;

procedure TFMainForm.Devoluciones1Click(Sender: TObject);
begin
{   FDevoluciones:=TFDevoluciones.Create(self);
   try
      FDevoluciones.ShowModal;
   finally
      FDevoluciones.Free;
   end;  }
end;

procedure TFMainForm.MantenimientoEmpleados1Click(Sender: TObject);
begin
{    FManEmpleado:=TFManEmpleado.Create(self);
   try
      FManEmpleado.ShowModal;
   finally
     FManEmpleado.Free;
   end;   }
end;

procedure TFMainForm.Planillas1Click(Sender: TObject);
begin
{
 FPlanilla:=TFPlanilla.Create(self);
  try
   FPlanilla.ShowModal;
   finally
   FPlanilla.Free;
end;
        }
 end;

procedure TFMainForm.Cuentas1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'LibroDiario.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F1 then Licencia1.Click;
IF Key = VK_F8 then vender1.Click;//VENDER
IF Key = VK_F5 then verstock1.Click;//STOCK
end;

procedure TFMainForm.ProveedoresClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Proveedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.N1Click(Sender: TObject);
begin
Close;
end;

procedure TFMainForm.N2Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'about.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.BACKUPCopiadeSeguridad1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Backup.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Productos1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.ProductosClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Articulos.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.ClientesClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Clientes.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.BancosClick(Sender: TObject);
begin
{   BancosForm:=TBancosForm.Create(self);
   try
      BancosForm.ShowModal;
   finally
      BancosForm.Free;
   end;  }
end;

procedure TFMainForm.RubroClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Rubro.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CategoriaClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Categoria.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.SubCategoriasClick(Sender: TObject);
begin
{   FSubCategorias:=TFSubCategorias.Create(self);
   try
      FSubCategorias.ShowModal;
   finally
      FSubCategorias.Free;
   end;   }
end;

procedure TFMainForm.Aumentarporporcentaje1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'IncrementarValor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.AnularVenta1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'AnularVenta.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Presupuesto1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Presupuesto.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Comprar1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Comprar.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Vender1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Vender.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.LibroIVACompras1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'LibroIVACompras.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.LibroIVAVentas1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'LibroIVAVentas.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Licencia1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Licencia.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.ListadePrecios1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PreciosL.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Login1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Usuarios.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Contable1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'MenuContable.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Retenciones1Click(Sender: TObject);
begin
{   RetencionesForm:=TRetencionesForm.Create(self);
   try
      RetencionesForm.ShowModal;
   finally
      RetencionesForm.Free;
   end;     }
end;

procedure TFMainForm.ImpuestosyServicios1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'ImpuestoServicio.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Clientes1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'ClientesL.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Proveedores1Click(Sender: TObject);
begin
{   ListadoProveedoresForm:=TListadoProveedoresForm.Create(self);
   try
      ListadoProveedoresForm.ShowModal;
   finally
      ListadoProveedoresForm.Free;
   end;   }
end;

procedure TFMainForm.Caja2Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Caja3Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.EnCartera1Click(Sender: TObject);
begin
{   ChequesDataModule:=TChequesDataModule.Create(self);
   try
   finally
      ChequesDataModule.ADOQuery1.SQL.Text:='SELECT "'+DM.Empresa+'" As Empresa,* FROM Cheque';
      ChequesDataModule.ADOQuery1.Open;
      ChequesDataModule.frxReport1.ShowReport(True);
      ChequesDataModule.ADOQuery1.Close;
      ChequesDataModule.Free;
   end;   }
end;

procedure TFMainForm.Entregados1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CargarFactura1Click(Sender: TObject);
begin
 {  CCompraForm:=TCCompraForm.Create(self);
   try
      CCompraForm.ShowModal;
   finally
   memo1.Text:= DM.prueba;
      CCompraForm.Free;
   end;  }
end;

procedure TFMainForm.PlanesClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Plan.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CalculodeCuota1Click(Sender: TObject);
begin
 {   CuotaForm:=TCuotaForm.Create(self);
   try
      CuotaForm.ShowModal;
   finally
      CuotaForm.Free;
   end;  }
end;

procedure TFMainForm.PagoaCobradores1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoCobrador.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.RendiciondeCobrador1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoCobrador.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.PagoaVendedores1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoVendedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.AsignarCobrador1Click(Sender: TObject);
begin
{    AsignarCobradorForm:=TAsignarCobradorForm.Create(self);
   try
      AsignarCobradorForm.ShowModal;
   finally
      AsignarCobradorForm.Free;
   end;  }
end;

procedure TFMainForm.RendicindeClientes1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'RendicionCliente.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CartndeCobranza1Click(Sender: TObject);
begin
{    PanillaCobradorForm:=TPanillaCobradorForm.Create(self);
   try
      PanillaCobradorForm.ShowModal;
   finally
      PanillaCobradorForm.Free;
   end;   }
end;

procedure TFMainForm.LibroDiarioClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'LibroDiario.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.PagosdeServicios1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoServicio.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CancelacindePlan1Click(Sender: TObject);
begin
{   CancelacionPlanForm:=TCancelacionPlanForm.Create(self);
   try
      CancelacionPlanForm.ShowModal;
   finally
      CancelacionPlanForm.Free;
   end;  }
end;

procedure TFMainForm.Empresa1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Empresa.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Pedido1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'ListarPedido.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Ganancias1Click(Sender: TObject);
begin
DemoDM.EnviarRam('Gan','Cuentas');
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Cuentas.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Sistema1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Configuracion.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Stock1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'MenuStock.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.VaciarBasedeDatos1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'VaciarBase.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.VendedoresClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Vendedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Co1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'MenuGestionCobranza.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CobradoresClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Cobrador.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.VerStock1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CrearPedido1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'CrearPedido.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.Creditos1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'MenuCreditos.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.PagosaProveedores1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoProveedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.CuentaCorriente1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'CtaCte.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TFMainForm.ReimprimirVenta1Click(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'AnularVenta.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

end.
