unit UMainF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeEngine, Series, ComCtrls, Grids, DBGrids,
  Menus, DB, jpeg, DataModule, shellapi, OleCtrls, SHDocVw, UrlMon;

type

  EExecAppError = class(Exception);

  TFMainForm = class(TForm)
    MainMenu1: TMainMenu;
    ABM1: TMenuItem;
    Proveedores: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Operaciones1: TMenuItem;
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
    DevolverMercadera1: TMenuItem;
    ListadePrecios1: TMenuItem;
    Configuracion1: TMenuItem;
    Clientes1: TMenuItem;
    Proveedores1: TMenuItem;
    Caja2: TMenuItem;
    EnCartera1: TMenuItem;
    Entregados1: TMenuItem;
    Pagos1: TMenuItem;
    PagosaProveedores1: TMenuItem;
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
    BACKUPCopiadeSeguridad1: TMenuItem;
    Login1: TMenuItem;
    WebBrowser1: TWebBrowser;
    CREARCREDITO1: TMenuItem;
    RENDICION2: TMenuItem;
    NOTADECREDITO1: TMenuItem;
    IMPRIMIRCARTON1: TMenuItem;
    COMPRAR2: TMenuItem;
    PLANES1: TMenuItem;
    RENDICION1: TMenuItem;
    COBRADOR1: TMenuItem;
    CLIENTE1: TMenuItem;
    ESTADODECUENTA1: TMenuItem;
    COBRADOR2: TMenuItem;
    RENDICIONDECOBRADORES1: TMenuItem;
    RENDICIONDECLIENTES1: TMenuItem;
    RENDICIONDECUOTAS1: TMenuItem;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    MIGRAR1: TMenuItem;
    LICENCIA1: TMenuItem;
    COMPRA1: TMenuItem;
    VENTA1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ProveedoresClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ProductosClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure RubroClick(Sender: TObject);
    procedure CategoriaClick(Sender: TObject);
    procedure Aumentarporporcentaje1Click(Sender: TObject);
    procedure AnularVenta1Click(Sender: TObject);
    procedure Comprar1Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure ListadePrecios1Click(Sender: TObject);
    procedure ImpuestosyServicios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Caja2Click(Sender: TObject);
    procedure Entregados1Click(Sender: TObject);
    procedure PlanesClick(Sender: TObject);
    procedure PagoaCobradores1Click(Sender: TObject);
    procedure RendiciondeCobrador1Click(Sender: TObject);
    procedure PagoaVendedores1Click(Sender: TObject);
    procedure RendicindeClientes1Click(Sender: TObject);
    procedure PagosdeServicios1Click(Sender: TObject);
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
    procedure LibroDiario1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CrearCredito1Click(Sender: TObject);
    procedure RENDICIONDECOBRADORES1Click(Sender: TObject);
    procedure RENDICIONDECLIENTES1Click(Sender: TObject);
    procedure RENDICIONDECUOTAS1Click(Sender: TObject);
    procedure NOTADECREDITO1Click(Sender: TObject);
    procedure IMPRIMIRCARTON1Click(Sender: TObject);
    procedure PLANES1Click(Sender: TObject);
    procedure COBRADOR1Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
    procedure ESTADODECUENTA1Click(Sender: TObject);
    procedure COBRADOR2Click(Sender: TObject);
    procedure PAGODEIVA1Click(Sender: TObject);
    procedure APORTEDECAPITAL1Click(Sender: TObject);
    procedure CAPITULOS1Click(Sender: TObject);
    procedure RUBROS1Click(Sender: TObject);
    procedure IPODEGASTO1Click(Sender: TObject);
    procedure SOCIOS1Click(Sender: TObject);
    procedure DIARIO1Click(Sender: TObject);
    procedure IVAVENTAS1Click(Sender: TObject);
    procedure IVACOMPRAS1Click(Sender: TObject);
    procedure REGISTRO1Click(Sender: TObject);
    procedure EMPRANOS1Click(Sender: TObject);
    procedure EXTRAJUDICIAL1Click(Sender: TObject);
    procedure JUDICIAL1Click(Sender: TObject);
    procedure INCOBRABLE1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure MIGRAR1Click(Sender: TObject);
    procedure IngresosBrutosClick(Sender: TObject);
    procedure COMPRA1Click(Sender: TObject);
    procedure VENTA1Click(Sender: TObject);
   // function WinExecAndWait32(FileName:String; Visibility:integer):integer;
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

procedure TFMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.DejarUsuario;
end;

procedure TFMainForm.FormShow(Sender: TObject);
begin
 //CONECTAR BASE DE DATOS
 DM:=TDM.Create(self);
 //CONTROL DE USUARIOS
 FLogin:=TFLogin.Create(self);
 try
  FLogin.ShowModal;
 finally
  FLogin.Free;
 end;
 WebBrowser1.Navigate(path+'ayuda\index.htm');
 if LoginOk <> True then
  begin
   ShowMessage('el usuario no coincide con la clave...');
   close;
  end
 else
  begin
   if Permiso < 3 then Configuracion1.Visible:=False;
   if Permiso < 2 then RENDICION1.Visible:=False;
   if Permiso < 1 then Operaciones1.Visible:=False;
  end;
 FMainForm.caption:='DeGsoft GeN - ERP - ['+Empresa+'] - '+Licencia+' - [USUARIO: '+Usuario+'] - MENU CREDITOS';
end;

procedure TFMainForm.Cuentas1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CuentaContable.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.DIARIO1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'LibroDiarioL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_F1 then Ayuda1.Click;
end;

procedure TFMainForm.ProveedoresClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Proveedor.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.N1Click(Sender: TObject);
begin
 Close;
end;

procedure TFMainForm.NOTADECREDITO1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'NotaCreditoPlan.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.BACKUPCopiadeSeguridad1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Backup.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Productos1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ProductosClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Articulos.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ClientesClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Clientes.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RubroClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Rubro.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RUBROS1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'RubroContable.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CategoriaClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Categoria.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CLIENTE1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'RendicionClienteL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.APORTEDECAPITAL1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'AporteCapital.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Aumentarporporcentaje1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'IncrementarValor.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Ayuda1Click(Sender: TObject);
begin
 HlinkNavigateString(Nil, pChar(path+'ayuda\index.htm'));
end;

procedure TFMainForm.Acercade1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'about.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.AnularVenta1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'AnularVenta.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Comprar1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Comprar.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Vender1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Vender.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.VENTA1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'VentaL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroIVACompras1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'LibroIVACompras.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroIVAVentas1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'LibroIVAVentas.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Licencia1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Licencia.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ListadePrecios1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'PreciosL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Login1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Usuarios.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.MIGRAR1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Migrar.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Contable1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'MenuContable.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.IMPRIMIRCARTON1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CartonCobranza.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ImpuestosyServicios1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'ImpuestoServicio.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.INCOBRABLE1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CobranzaIncobrable.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.IngresosBrutosClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'IngresosBrutos.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.IPODEGASTO1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'TipoGasto.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.IVACOMPRAS1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'LibroIVACompras.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.IVAVENTAS1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'LibroIVAVentas.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.JUDICIAL1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CobranzaJudicial.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Clientes1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'ClientesL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Caja2Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CajaL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Caja3Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CAPITULOS1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Capitulo.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Entregados1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ESTADODECUENTA1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'EstadoCuentaL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.EXTRAJUDICIAL1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CobranzaExtrajudicial.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PlanesClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Plan.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PagoaCobradores1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoCobrador.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RendiciondeCobrador1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoCobrador.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECOBRADORES1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoCobrador.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECUOTAS1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RendicionCliente.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PagoaVendedores1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoVendedor.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PAGODEIVA1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoIVA.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RendicindeClientes1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RendicionCliente.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECLIENTES1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RendicionClienteL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroDiario1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'LibroDiarioL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PagosdeServicios1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoServicio.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.EMPRANOS1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'GestionCobranza.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Empresa1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Empresa.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Pedido1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PedidoL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PLANES1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Plan.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Ganancias1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'GananciaXvta.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Sistema1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Configuracion.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.SOCIOS1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Socio.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Stock1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuStock.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.VaciarBasedeDatos1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'VaciarBase.exe')),SW_SHOWNORMAL);
Close;
end;

procedure TFMainForm.VendedoresClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Vendedor.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Co1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuGestionCobranza.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.COBRADOR1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RendicionCobradorL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.COBRADOR2Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RendicionCarton.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CobradoresClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Cobrador.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.COMPRA1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CompraL.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.VerStock1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CrearCredito1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'CrearCredito.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CrearPedido1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'CrearPedido.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.Creditos1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuCreditos.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.PagosaProveedores1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'PagoProveedor.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.CuentaCorriente1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'CtaCte.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.REGISTRO1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'GestionCobranza.exe')),SW_SHOWNORMAL);
end;

procedure TFMainForm.ReimprimirVenta1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'AnularVenta.exe')),SW_SHOWNORMAL);
end;

end.
