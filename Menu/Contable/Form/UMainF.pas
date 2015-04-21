unit UMainF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeEngine, Series, ComCtrls, Grids,
  DBGrids,
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
    Bancos: TMenuItem;
    IngresosBrutos: TMenuItem;
    Productos: TMenuItem;
    Listados1: TMenuItem;
    Configuracion1: TMenuItem;
    Retenciones1: TMenuItem;
    Caja2: TMenuItem;
    Empresa1: TMenuItem;
    Sistema1: TMenuItem;
    Ganancias1: TMenuItem;
    VaciarBasedeDatos1: TMenuItem;
    Vendedores: TMenuItem;
    Cobradores: TMenuItem;
    BACKUPCopiadeSeguridad1: TMenuItem;
    Login1: TMenuItem;
    WebBrowser1: TWebBrowser;
    PLANES1: TMenuItem;
    LIBROS1: TMenuItem;
    DIARIO1: TMenuItem;
    IVAVENTAS1: TMenuItem;
    IVACOMPRAS1: TMenuItem;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    MIGRAR1: TMenuItem;
    LICENCIA1: TMenuItem;
    PAGODEIVA1: TMenuItem;
    APORTEDECAPITAL1: TMenuItem;
    CUENTAS1: TMenuItem;
    CAPITULOS1: TMenuItem;
    RUBROS1: TMenuItem;
    IPODEGASTO1: TMenuItem;
    SOCIOS1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  // CONECTAR BASE DE DATOS
  DM := TDM.Create(self);
  // CONTROL DE USUARIOS
  FLogin := TFLogin.Create(self);
  try
    FLogin.ShowModal;
  finally
    FLogin.Free;
  end;
  WebBrowser1.Navigate(path + 'ayuda\index.htm');
  if LoginOk <> True then
  begin
    ShowMessage('el usuario no coincide con la clave...');
    close;
  end
  else
  begin
    if Permiso < 3 then
      Configuracion1.Visible := False;
    if Permiso < 2 then
      Listados1.Visible := False;
    if Permiso < 1 then
      Operaciones1.Visible := False;
  end;
  FMainForm.caption := 'DeGsoft GeN - ERP - [' + Empresa + '] - ' + Licencia +
    ' - [USUARIO: ' + Usuario + '] - MENU CONTABLE';
end;

procedure TFMainForm.Cuentas1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CuentaContable.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.DIARIO1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroDiarioL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F1 then
    Ayuda1.Click;
end;

procedure TFMainForm.ProveedoresClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Proveedor.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.N1Click(Sender: TObject);
begin
  close;
end;

procedure TFMainForm.NOTADECREDITO1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'NotaCreditoPlan.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.BACKUPCopiadeSeguridad1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Backup.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Productos1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Stock.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ProductosClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Articulos.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ClientesClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Clientes.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RubroClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Rubro.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RUBROS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RubroContable.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CategoriaClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Categoria.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CLIENTE1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionClienteL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.APORTEDECAPITAL1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'AporteCapital.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Aumentarporporcentaje1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'IncrementarValor.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Ayuda1Click(Sender: TObject);
begin
  HlinkNavigateString(Nil, pChar(path + 'ayuda\index.htm'));
end;

procedure TFMainForm.Acercade1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'about.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.AnularVenta1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'AnularVenta.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Comprar1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Comprar.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Vender1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Vender.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroIVACompras1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroIVACompras.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroIVAVentas1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroIVAVentas.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Licencia1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Licencia.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ListadePrecios1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PreciosL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Login1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Usuarios.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.MIGRAR1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Migrar.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Contable1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'MenuContable.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.IMPRIMIRCARTON1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CartonCobranza.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ImpuestosyServicios1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'ImpuestoServicio.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.INCOBRABLE1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CobranzaIncobrable.exe')),
    SW_SHOWNORMAL);
end;

procedure TFMainForm.IngresosBrutosClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'IngresosBrutos.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.IPODEGASTO1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'TipoGasto.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.IVACOMPRAS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroIVACompras.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.IVAVENTAS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroIVAVentas.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.JUDICIAL1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CobranzaJudicial.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Clientes1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'ClientesL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Caja2Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CajaL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Caja3Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Caja.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CAPITULOS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Capitulo.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Entregados1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Caja.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ESTADODECUENTA1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'EstadoCuentaL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.EXTRAJUDICIAL1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CobranzaExtrajudicial.exe')),
    SW_SHOWNORMAL);
end;

procedure TFMainForm.PlanesClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Plan.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PagoaCobradores1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoCobrador.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RendiciondeCobrador1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoCobrador.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECOBRADORES1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoCobrador.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECUOTAS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionCliente.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PagoaVendedores1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoVendedor.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PAGODEIVA1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoIVA.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RendicindeClientes1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionCliente.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.RENDICIONDECLIENTES1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionClienteL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.LibroDiario1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'LibroDiarioL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PagosdeServicios1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoServicio.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.EMPRANOS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'GestionCobranza.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Empresa1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Empresa.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Pedido1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PedidoL.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PLANES1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Plan.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Ganancias1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'GananciaXvta.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Sistema1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Configuracion.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.SOCIOS1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Socio.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Stock1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'MenuStock.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.VaciarBasedeDatos1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'VaciarBase.exe')), SW_SHOWNORMAL);
  close;
end;

procedure TFMainForm.VendedoresClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Vendedor.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Co1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'MenuGestionCobranza.exe')),
    SW_SHOWNORMAL);
end;

procedure TFMainForm.COBRADOR1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionCobradorL.exe')),
    SW_SHOWNORMAL);
end;

procedure TFMainForm.COBRADOR2Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'RendicionCarton.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CobradoresClick(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Cobrador.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.VerStock1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'Stock.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CrearCredito1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CrearCredito.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CrearPedido1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CrearPedido.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.Creditos1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'MenuCreditos.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.PagosaProveedores1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'PagoProveedor.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.CuentaCorriente1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'CtaCte.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.REGISTRO1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'GestionCobranza.exe')), SW_SHOWNORMAL);
end;

procedure TFMainForm.ReimprimirVenta1Click(Sender: TObject);
begin
  WinExec(PAnsiChar(AnsiString(path + 'AnularVenta.exe')), SW_SHOWNORMAL);
end;

end.
