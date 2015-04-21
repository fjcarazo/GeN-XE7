unit MenuTiendaRopaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, jpeg, Demo, DataModule, DB, ADODB,
  ComCtrls;

type
  TMenuTiendaRopaForm = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    ABMBitBtn: TBitBtn;
    BitBtnSalir: TBitBtn;
    VenderBitBtn: TBitBtn;
    ComprarBitBtn: TBitBtn;
    CajaBitBtn: TBitBtn;
    MainMenu1: TMainMenu;
    Operaciones1: TMenuItem;
    VenderO: TMenuItem;
    ComprarO: TMenuItem;
    PAgos1: TMenuItem;
    ProveedoresP: TMenuItem;
    ImpuestosP: TMenuItem;
    VendedoresP: TMenuItem;
    ABM1: TMenuItem;
    ArticulosA: TMenuItem;
    ProveedoresA: TMenuItem;
    ClientesA: TMenuItem;
    LocalesA: TMenuItem;
    RubroA: TMenuItem;
    CategoriasA: TMenuItem;
    SubCategorasA: TMenuItem;
    VendedoresA: TMenuItem;
    Listados1: TMenuItem;
    CajaL: TMenuItem;
    PreciosL: TMenuItem;
    ClientesL: TMenuItem;
    LibroDiarioL: TMenuItem;
    Configuracin1: TMenuItem;
    EmpresaC: TMenuItem;
    SistemaC: TMenuItem;
    BackUpC: TMenuItem;
    RestaurarC: TMenuItem;
    Salir: TMenuItem;
    AcercaDe: TMenuItem;
    CuentaCorrienteO: TMenuItem;
    NotaCreditoO: TMenuItem;
    StockL: TMenuItem;
    Query: TADOQuery;
    procedure VenderOClick(Sender: TObject);
    procedure ComprarOClick(Sender: TObject);
    procedure CuentaCorrienteOClick(Sender: TObject);
    procedure ProveedoresPClick(Sender: TObject);
    procedure ImpuestosPClick(Sender: TObject);
    procedure VendedoresPClick(Sender: TObject);
    procedure ArticulosAClick(Sender: TObject);
    procedure ProveedoresAClick(Sender: TObject);
    procedure ClientesAClick(Sender: TObject);
    procedure RubroAClick(Sender: TObject);
    procedure CategoriasAClick(Sender: TObject);
    procedure SubCategorasAClick(Sender: TObject);
    procedure VendedoresAClick(Sender: TObject);
    procedure CajaLClick(Sender: TObject);
    procedure PreciosLClick(Sender: TObject);
    procedure ClientesLClick(Sender: TObject);
    procedure LibroDiarioLClick(Sender: TObject);
    procedure EmpresaCClick(Sender: TObject);
    procedure SistemaCClick(Sender: TObject);
    procedure BackUpCClick(Sender: TObject);
    procedure RestaurarCClick(Sender: TObject);
    procedure AcercaDeClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure BitBtnSalirClick(Sender: TObject);
    procedure StockLClick(Sender: TObject);
    procedure ABMBitBtnClick(Sender: TObject);
    procedure CajaBitBtnClick(Sender: TObject);
    procedure ComprarBitBtnClick(Sender: TObject);
    procedure VenderBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
  empresa:string;
  procedure inicio;
    { Public declarations }
  end;

var
  MenuTiendaRopaForm: TMenuTiendaRopaForm;

implementation

uses TiendaRopaInicioF;

{$R *.dfm}

procedure TMenuTiendaRopaForm.inicio;
begin
DemoDM:=TDemoDM.Create(self);
DemoDM.verify;
Query.SQL.Text:='Select Nombre From Empresa';
Query.Open;
empresa:=Query.FieldByName('nombre').AsString;
MenuTiendaRopaForm.Caption:='GeN -  MODULO TIENDA DE ROPA ['+empresa+'] -  '+Licencia+' - [USUARIO: Administrador]';
end;

procedure TMenuTiendaRopaForm.ABMBitBtnClick(Sender: TObject);
begin
StockL.Click;
end;

procedure TMenuTiendaRopaForm.ArticulosAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Articulos.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.BackUpCClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Backup.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.BitBtnSalirClick(Sender: TObject);
begin
close;
end;

procedure TMenuTiendaRopaForm.CajaBitBtnClick(Sender: TObject);
begin
CajaL.Click;
end;

procedure TMenuTiendaRopaForm.CajaLClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Caja.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.CategoriasAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Categoria.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ClientesLClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'ClientesL.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ClientesAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Clientes.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ComprarOClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Comprar.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ComprarBitBtnClick(Sender: TObject);
begin
ComprarO.Click;
end;

procedure TMenuTiendaRopaForm.CuentaCorrienteOClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'CtaCte.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.EmpresaCClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Empresa.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.FormCreate(Sender: TObject);
var empresa:string;
begin
   TiendaRopaInicioForm:=TTiendaRopaInicioForm.Create(self);
   try
      TiendaRopaInicioForm.ShowModal;
   finally
      TiendaRopaInicioForm.Free;
   end;

end;



procedure TMenuTiendaRopaForm.ImpuestosPClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoServicio.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.LibroDiarioLClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'LibroDiarioL.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.AcercaDeClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'about.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.PreciosLClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PreciosL.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ProveedoresAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Proveedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.ProveedoresPClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoProveedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.RestaurarCClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'VaciarBase.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.RubroAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Rubro.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.SalirClick(Sender: TObject);
begin
close;
end;

procedure TMenuTiendaRopaForm.SistemaCClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Configuracion.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.StockLClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.SubCategorasAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'SubCategoria.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.VendedoresAClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Vendedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.VendedoresPClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'PagoVendedor.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

procedure TMenuTiendaRopaForm.VenderBitBtnClick(Sender: TObject);
begin
VenderO.Click;
end;

procedure TMenuTiendaRopaForm.VenderOClick(Sender: TObject);
begin
DemoDM.EnviarRam(L, M); WinExec(PAnsiChar(AnsiString(Path+'Vender.exe')),SW_SHOWNORMAL); DemoDM.EnvioRamTerminado;
end;

end.
