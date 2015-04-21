unit ServidorF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, ExtCtrls, Menus, StdCtrls, TLHelp32, UrlMon, jpeg, GIFImg;

type
  TServidor = class(TForm)
    TrayIcon1: TTrayIcon;
    PopupMenu1: TPopupMenu;
    Cerrar1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    m5Image: TImage;
    m1Image: TImage;
    m3Image: TImage;
    m2Image: TImage;
    m7Image: TImage;
    m6Image: TImage;
    m8Image: TImage;
    m9Image: TImage;
    m4Image: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cerrarSistema;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure m5ImageClick(Sender: TObject);
    function FormHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure m1ImageClick(Sender: TObject);
    procedure m3ImageClick(Sender: TObject);
    procedure m2ImageClick(Sender: TObject);
    procedure m7ImageClick(Sender: TObject);
    procedure m6ImageClick(Sender: TObject);
    procedure m8ImageClick(Sender: TObject);
    procedure m4ImageClick(Sender: TObject);
    procedure m9ImageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        WindowList1 : TList;
        Path:string;
  end;

var
  Servidor: TServidor;

implementation

{$R *.dfm}

procedure TServidor.cerrarSistema;
function KillTask(FileName:String):integer;
var
    ContinueLoop:BOOL;
    FSnapshotHandle:THandle;
    FProcessEntry32:TProcessEntry32;
const
    PROCESS_TERMINATE=$0001;
begin
    FSnapshotHandle:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
    FProcessEntry32.dwSize:=Sizeof(FProcessEntry32);
    ContinueLoop:=Process32First(FSnapshotHandle,FProcessEntry32);
    while integer(ContinueLoop)<>0 do
    begin
        if
((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))=UpperCase(FileName))
            or (UpperCase(FProcessEntry32.szExeFile)=UpperCase(FileName)))
then

Result:=Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE,BOOL(0),

                                    FProcessEntry32.th32ProcessID),0));
          ContinueLoop:=Process32Next(FSnapshotHandle,FProcessEntry32);
    end;
    CloseHandle(FSnapshotHandle);
end;

begin
  KillTask('Menu.exe');
  KillTask('MenuContable.exe');
  KillTask('MenuCobranza.exe');
  KillTask('MenuPV.exe');
  KillTask('MenuCreditos.exe');
end;

procedure TServidor.Cerrar1Click(Sender: TObject);
begin
close;
end;

procedure TServidor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cerrarSistema;
end;

procedure TServidor.FormCreate(Sender: TObject);
var
  Process: Cardinal;
begin
//LEVANTAR SERVIDOR DE DATOS
if Path='' then Path := ExtractFilePath(Application.ExeName);
Process := dm.ExecuteProcess(Path+'bin\install_super.bat',Path+'bin\');
if Process <> 0 then
   WaitForSingleObject(Process, INFINITE);
Application.Restore;
end;

procedure TServidor.FormDestroy(Sender: TObject);
var
  Process: Cardinal;
begin
  Application.Minimize;
  //BAJAR SERVIDOR DE DATOS
  Process := dm.ExecuteProcess(Path+'bin\uninstall.bat',Path+'bin\');
  if Process <> 0 then
     WaitForSingleObject(Process, INFINITE);
  Application.Restore;
end;

function TServidor.FormHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
WinExec(PAnsiChar(AnsiString(Path+'about.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.FormShow(Sender: TObject);
begin
ShowWindow(Application.Handle, SW_HIDE);
m1Image.Picture.LoadFromFile(Path+'\img\boton_compra_venta.gif');
m2Image.Picture.LoadFromFile(Path+'\img\boton_contable.gif');
m3Image.Picture.LoadFromFile(Path+'\img\boton_creditos.gif');
m4Image.Picture.LoadFromFile(Path+'\img\boton_vigilancia.gif');
m5Image.Picture.LoadFromFile(Path+'\img\boton_stock.gif');
m6Image.Picture.LoadFromFile(Path+'\img\boton_cobranza.gif');
m7Image.Picture.LoadFromFile(Path+'\img\boton_ayuda.gif');
m8Image.Picture.LoadFromFile(Path+'\img\boton_completo.gif');
m9Image.Picture.LoadFromFile(Path+'\img\boton_licencia.gif');
end;

procedure TServidor.m5ImageClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuExpress.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m1ImageClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuPV.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m3ImageClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuCreditos.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m2ImageClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'MenuContable.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m7ImageClick(Sender: TObject);
begin
 HlinkNavigateString(Nil, pChar(path+'ayuda\index.htm'));
end;

procedure TServidor.m6ImageClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'MenuCobranza.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m8ImageClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Menu.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m9ImageClick(Sender: TObject);
begin
WinExec(PAnsiChar(AnsiString(Path+'Licencia.exe')),SW_SHOWNORMAL);
end;

procedure TServidor.m4ImageClick(Sender: TObject);
begin
 WinExec(PAnsiChar(AnsiString(Path+'Vigilancia.exe')),SW_SHOWNORMAL);
end;

end.
