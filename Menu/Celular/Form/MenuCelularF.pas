unit MenuCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ADODB,
  DataModule, demo;

type
  TMenuCelularForm = class(TForm)
    MainMenu1: TMainMenu;
    Salir1: TMenuItem;
    N1: TMenuItem;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ABMBitBtn: TBitBtn;
    BitBtnSalir: TBitBtn;
    ActualizarBitBtn: TBitBtn;
    ImprimirBitBtn: TBitBtn;
    ActivarBitBtn: TBitBtn;
    Query: TADOQuery;
    QueryU: TADOQuery;
    Querydbg: TADOQuery;
    QuerydbgDataSource: TDataSource;
    Operaciones1: TMenuItem;
    Activar1: TMenuItem;
    Devoluciones1: TMenuItem;
    Movimientos1: TMenuItem;
    ABM1: TMenuItem;
    Articulos1: TMenuItem;
    Vendedores1: TMenuItem;
    Activaciones3: TMenuItem;
    Proveedores1: TMenuItem;
    Locales1: TMenuItem;
    Categorias2: TMenuItem;
    SubCategoras1: TMenuItem;
    Configuracin1: TMenuItem;
    Sistema1: TMenuItem;
    BackUp1: TMenuItem;
    Restaurar1: TMenuItem;
    Vender1: TMenuItem;
    VenderBitBtn: TBitBtn;
    ComprarBitBtn: TBitBtn;
    Comprar1: TMenuItem;
    CajaBitBtn: TBitBtn;
    Listados1: TMenuItem;
    Caja1: TMenuItem;
    Timer1: TTimer;
    PAgos1: TMenuItem;
    Proveedores2: TMenuItem;
    Impuestos1: TMenuItem;
    Vendedores2: TMenuItem;
    Precios1: TMenuItem;
    Clientes1: TMenuItem;
    Clientes2: TMenuItem;
    Rubro1: TMenuItem;
    Empresa1: TMenuItem;
    ActivacionesL1: TMenuItem;
    LibroDiarioL1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure ABMBitBtnClick(Sender: TObject);
    procedure BitBtnSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActualizarBitBtnClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure ABM2Click(Sender: TObject);
    procedure ABM3Click(Sender: TObject);
    procedure ABM4Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure SubCategorias1Click(Sender: TObject);
    procedure Activaciones2Click(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure Activar1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nuevo;
    procedure FormCreate(Sender: TObject);
    procedure ActivacionesL1Click(Sender: TObject);
    procedure Articulos1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Locales1Click(Sender: TObject);
    procedure Categorias2Click(Sender: TObject);
    procedure SubCategoras1Click(Sender: TObject);
    procedure Restaurar1Click(Sender: TObject);
    procedure ActivarBitBtnClick(Sender: TObject);
    procedure Vender1Click(Sender: TObject);
    procedure Comprar1Click(Sender: TObject);
    procedure Caja1Click(Sender: TObject);
    procedure CajaBitBtnClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Proveedores2Click(Sender: TObject);
    procedure Impuestos1Click(Sender: TObject);
    procedure Vendedores2Click(Sender: TObject);
    procedure Precios1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Rubro1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure BackUp1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure VenderBitBtnClick(Sender: TObject);
    procedure ComprarBitBtnClick(Sender: TObject);
    procedure LibroDiarioL1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MenuCelularForm: TMenuCelularForm;

implementation

{$R *.dfm}

Procedure TMenuCelularForm.nuevo;
begin
  Querydbg.SQL.Text :=
    'Select *  From Articulos Where (Vencimiento > 0) and  ((Estado is null ) or  (Estado <> ''Activado''))  Order By Vencimiento';
  Querydbg.Open;
  Timer1.Enabled := True;
end;

procedure TMenuCelularForm.Precios1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'PreciosL.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Proveedores1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Proveedor.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Proveedores2Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'PagoProveedor.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Restaurar1Click(Sender: TObject);
begin
  Timer1.Enabled := False;
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'VaciarBase.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Rubro1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Rubro.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Salir1Click(Sender: TObject);
begin
  Close;
end;

procedure TMenuCelularForm.Sistema1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Configuracion.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.ABMBitBtnClick(Sender: TObject);
begin
  Articulos1.Click;
end;

procedure TMenuCelularForm.BackUp1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Backup.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.ComprarBitBtnClick(Sender: TObject);
begin
  Comprar1.Click;
end;

procedure TMenuCelularForm.BitBtnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TMenuCelularForm.FormShow(Sender: TObject);
var
  empresa: string;
begin
  Query.SQL.Text := 'Select Nombre From Empresa';
  Query.Open;
  empresa := Query.FieldByName('nombre').AsString;
  MenuCelularForm.caption := 'GeN -  MODULO AGENTE OFICIAL DE CELULARES [' +
    empresa + '] -  ' + Licencia + ' - [USUARIO: Administrador]';
  // '+Query.FieldByName('nombre').AsString+']';
  MenuCelularForm.Height := 110;
  nuevo;
end;

procedure TMenuCelularForm.ActualizarBitBtnClick(Sender: TObject);
var
  dias: String;
  fecha: tdate;
  imei: string;
  function DifFech(fecha: string): integer;
  var
    dTemp: tdate;
  begin
    dTemp := StrToDate(fecha);
    Result := trunc(dTemp - StrToDate(FormatDateTime(DateToStr(Date), dTemp)));
  end;

begin
  Query.SQL.Text :=
    'Select * From Articulos Where (Vencimiento > 0) and (Estado <> ''Activado'') Order By CodigoBarra';
  Query.ExecSQL;
  Query.Open;
  While not Query.Eof do
  begin
    imei := Query.FieldByName('CodigoBarra').AsString;
    fecha := Query.FieldByName('Vence').AsDateTime;
    dias := IntToStr(DifFech(DateToStr(fecha)));
    QueryU.SQL.Text := 'Update Articulos Set Vencimiento = ' + QuotedStr(dias) +
      'Where CodigoBarra = ' + QuotedStr(imei);
    QueryU.ExecSQL;
    Query.Next;
  end;
  imei := Query.FieldByName('CodigoBarra').AsString;
  fecha := Query.FieldByName('Vence').AsDateTime;
  dias := IntToStr(DifFech(DateToStr(fecha)));
  QueryU.SQL.Text := 'Update Articulos Set Vencimiento = ' + QuotedStr(dias) +
    'Where CodigoBarra = ' + QuotedStr(imei);
  QueryU.ExecSQL;
  if Querydbg.Active = True then
    Querydbg.Active := False;
  Querydbg.Active := True;

  if Timer1.Enabled <> True then
    Timer1.Enabled := True;
end;

procedure TMenuCelularForm.Articulos1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'ArticuloCelular.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.N1Click(Sender: TObject);
begin
  // AboutBox.ShowModal;
end;

procedure TMenuCelularForm.Importar1Click(Sender: TObject);
begin
  // FormImportar.ShowModal;
end;

procedure TMenuCelularForm.Devoluciones1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'DevolucionProveedorCelular.exe')),
    SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Empresa1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Empresa.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.ABM2Click(Sender: TObject);
begin
  // ProveedoresForm.ShowModal;
end;

procedure TMenuCelularForm.ABM3Click(Sender: TObject);
begin
  // PuntoVentaForm.ShowModal;
end;

procedure TMenuCelularForm.ABM4Click(Sender: TObject);
begin
  // VendedoresForm.ShowModal;
end;

procedure TMenuCelularForm.Caja1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Caja.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.CajaBitBtnClick(Sender: TObject);
begin
  Caja1.Click;
end;

procedure TMenuCelularForm.Categorias1Click(Sender: TObject);
begin
  // CategoriasForm.ShowModal;
end;

procedure TMenuCelularForm.Categorias2Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Categoría.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Clientes1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'ClientesL.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Clientes2Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Clientes.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Comprar1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'ComprarCelular.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.SubCategoras1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'SubCategoria.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.SubCategorias1Click(Sender: TObject);
begin
  // SubCategoriasForm.ShowModal;
end;

procedure TMenuCelularForm.Timer1Timer(Sender: TObject);
begin
  ActualizarBitBtn.Click;
end;

procedure TMenuCelularForm.Vendedores1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Vendedor.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Vendedores2Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'PagoVendedor.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Vender1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Vender.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.VenderBitBtnClick(Sender: TObject);
begin
  Vender1.Click;
end;

procedure TMenuCelularForm.ActivacionesL1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'ActivacionesL.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Activaciones2Click(Sender: TObject);
begin
  // VendedorActivaForm.ShowModal;
end;

procedure TMenuCelularForm.ImprimirBitBtnClick(Sender: TObject);
begin
  { with dm do begin
    VencimientoADOQuery.SQL.Text:='SELECT * FROM Articulos ORDER BY Vencimiento';
    VencimientoADOQuery.Open;
    VencimientofrxReport.ShowReport(True);
    VencimientoADOQuery.Close;
    end; }
end;

procedure TMenuCelularForm.Impuestos1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'PagoServicio.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.LibroDiarioL1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'LibroDiarioL.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Locales1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'Empresa.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.Activar1Click(Sender: TObject);
begin
  DemoDM.EnviarRam(L, M);
  WinExec(PAnsiChar(AnsiString(Path + 'ActivarCelular.exe')), SW_SHOWNORMAL);
  DemoDM.EnvioRamTerminado;
end;

procedure TMenuCelularForm.ActivarBitBtnClick(Sender: TObject);
begin
  Activar1.Click;
end;

procedure TMenuCelularForm.FormCreate(Sender: TObject);
begin
  DemoDM := TDemoDM.Create(self);
  DemoDM.verify;
  // Muestra la pantalla de Login
  { FLogin:=TFLogin.Create(self);
    try
    FLogin.ShowModal;
    finally
    FLogin.Free;
    end; }
end;

procedure TMenuCelularForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F5 then
    ActivarBitBtn.Click;
end;

end.
