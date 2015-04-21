unit MenuExpressF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TeEngine, Series, ComCtrls, Grids, DBGrids,
  Menus, DB, jpeg, DataModule, shellapi, OleCtrls, SHDocVw, UrlMon;

type

  EExecAppError = class(Exception);

  TMenuExpressForm = class(TForm)
    MainMenu1: TMainMenu;
    ABM1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Operaciones1: TMenuItem;
    Vender1: TMenuItem;
    Comprar1: TMenuItem;
    Rubro: TMenuItem;
    Categoria: TMenuItem;
    SubCategorias: TMenuItem;
    Productos: TMenuItem;
    Listados1: TMenuItem;
    Productos1: TMenuItem;
    AnularVenta1: TMenuItem;
    ListadePrecios1: TMenuItem;
    Configuracion1: TMenuItem;
    Caja2: TMenuItem;
    Empresa1: TMenuItem;
    Sistema1: TMenuItem;
    Ganancias1: TMenuItem;
    VaciarBasedeDatos1: TMenuItem;
    BACKUPCopiadeSeguridad1: TMenuItem;
    WebBrowser1: TWebBrowser;
    Ayuda1: TMenuItem;
    Acercade1: TMenuItem;
    MIGRAR1: TMenuItem;
    LICENCIA1: TMenuItem;
    COMPRA1: TMenuItem;
    VENTA1: TMenuItem;
    RETIRODECAJA1: TMenuItem;
    STOCK1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure ProductosClick(Sender: TObject);
    procedure RubroClick(Sender: TObject);
    procedure CategoriaClick(Sender: TObject);
    procedure AnularVenta1Click(Sender: TObject);
    procedure Comprar1Click(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure ListadePrecios1Click(Sender: TObject);
    procedure Caja2Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Ganancias1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure VaciarBasedeDatos1Click(Sender: TObject);
    procedure VerStock1Click(Sender: TObject);
    procedure Licencia1Click(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure BACKUPCopiadeSeguridad1Click(Sender: TObject);
    procedure Stock1Click(Sender: TObject);
    procedure CLIENTE1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Ayuda1Click(Sender: TObject);
    procedure MIGRAR1Click(Sender: TObject);
    procedure COMPRA1Click(Sender: TObject);
    procedure VENTA1Click(Sender: TObject);
    procedure RETIRODECAJA1Click(Sender: TObject);
   // function WinExecAndWait32(FileName:String; Visibility:integer):integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuExpressForm: TMenuExpressForm;

implementation

uses LoginF;

{$R *.dfm}

procedure TMenuExpressForm.FormShow(Sender: TObject);
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
   if Permiso < 2 then
    begin
     ABM1.Visible:=False;
     STOCK1.Visible:=false;
    end;
   if Permiso < 1 then
   begin
    Listados1.Visible:=False;
    Comprar1.Visible:=False;
    AnularVenta1.Visible:=false;
   end;
  end;
 MenuExpressForm.caption:='DeGsoft GeN [ERP] - ['+Empresa+'] - '+Licencia+' - [USUARIO: '+Usuario+'] - modulo express ';
end;

procedure TMenuExpressForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_F1 then Ayuda1.Click;
end;

procedure TMenuExpressForm.N1Click(Sender: TObject);
begin
 Close;
end;

procedure TMenuExpressForm.BACKUPCopiadeSeguridad1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Backup.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Productos1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.ProductosClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Articulos.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.RubroClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Rubro.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.CategoriaClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Categoria.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.CLIENTE1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'RendicionClienteL.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Ayuda1Click(Sender: TObject);
begin
 HlinkNavigateString(Nil, pChar(path+'ayuda\index.htm'));
end;

procedure TMenuExpressForm.Acercade1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'about.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.AnularVenta1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'AnularVenta.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Comprar1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Comprar.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Vender1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Vender.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.VENTA1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'VentaL.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Licencia1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Licencia.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.ListadePrecios1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'PreciosL.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.MIGRAR1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Migrar.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Caja2Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CajaL.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.RETIRODECAJA1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'RetiroCaja.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Empresa1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Empresa.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Ganancias1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'GananciaXvta.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Sistema1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Configuracion.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.Stock1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'MenuStock.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.VaciarBasedeDatos1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'VaciarBase.exe')),SW_SHOWNORMAL);
 Close;
end;

procedure TMenuExpressForm.COMPRA1Click(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'CompraL.exe')),SW_SHOWNORMAL);
end;

procedure TMenuExpressForm.VerStock1Click(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Stock.exe')),SW_SHOWNORMAL);
end;

end.
