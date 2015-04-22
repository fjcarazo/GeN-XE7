unit VigilanciaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Clipbrd, ComCtrls, shellapi, IniFiles;

type
  TVigilanciaForm = class(TForm)
    dlGuardar: TSaveDialog;
    temporizador: TTimer;
    bIniciarCamara: TButton;
    bDetener: TButton;
    bCerrar: TButton;
    pImagen: TPanel;
    bGuardarImagen: TButton;
    bGuardarVideo: TButton;
    GroupBox1: TGroupBox;
    tbVelocidad: TTrackBar;
    Label3: TLabel;
    Label2: TLabel;
    tbSensibilidad: TTrackBar;
    txtPScroll: TEdit;
    GroupBox2: TGroupBox;
    txtError: TEdit;
    Label1: TLabel;
    bSelFichero: TButton;
    txtUbicacionImg: TEdit;
    Label4: TLabel;
    bIniciarDeteccion: TButton;
    Label9: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bGuardarImagenClick(Sender: TObject);
    procedure bIniciarCamaraClick(Sender: TObject);
    procedure bGuardarVideoClick(Sender: TObject);
    procedure bDetenerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCerrarClick(Sender: TObject);
    procedure temporizadorTimer(Sender: TObject);
    procedure tbVelocidadChange(Sender: TObject);
    procedure tbSensibilidadChange(Sender: TObject);
    procedure bSelFicheroClick(Sender: TObject);
    procedure bIniciarDeteccionClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    idResultado: THandle;
    capturandoAVI: Boolean;
    imagenActual, imagenAnterior: TBitmap;
    Contador: Integer;
    Capturar: Boolean;
    sendimage: string;
  public
    IniFile: TIniFile;
    { Public declarations }
  end;

var
  vdemo: Boolean;
  VigilanciaForm: TVigilanciaForm;

implementation

{$R *.dfm}

const
  WM_CAP_START = WM_USER;

const
  WM_CAP_STOP = WM_CAP_START + 68;

const
  WM_CAP_DRIVER_CONNECT = WM_CAP_START + 10;

const
  WM_CAP_DRIVER_DISCONNECT = WM_CAP_START + 11;

const
  WM_CAP_SAVEDIB = WM_CAP_START + 25;

const
  WM_CAP_GRAB_FRAME = WM_CAP_START + 60;

const
  WM_CAP_SEQUENCE = WM_CAP_START + 62;

const
  WM_CAP_FILE_SET_CAPTURE_FILEA = WM_CAP_START + 20;

const
  WM_CAP_EDIT_COPY = WM_CAP_START + 30;

const
  WM_CAP_SET_PREVIEW = WM_CAP_START + 50;

const
  WM_CAP_SET_PREVIEWRATE = WM_CAP_START + 52;

function capCreateCaptureWindowA(lpszWindowName: PCHAR; dwStyle: longint;
  x: Integer; y: Integer; nWidth: Integer; nHeight: Integer; ParentWin: HWND;
  nId: Integer): HWND; stdcall; external 'AVICAP32.DLL';

procedure TVigilanciaForm.FormCreate(Sender: TObject);
begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'Vigilancia.ini');
  capturandoAVI := false;
  idResultado := 0;
  dlGuardar.Options := [ofHideReadOnly, ofNoChangeDir, ofPathMustExist];
  imagenActual := TBitmap.Create;
  imagenAnterior := TBitmap.Create;
  Capturar := false;
end;

procedure TVigilanciaForm.FormShow(Sender: TObject);
begin
  temporizador.Interval := tbVelocidad.Position;
  bIniciarCamara.Click;
  bIniciarDeteccion.Click;
end;

procedure TVigilanciaForm.bGuardarImagenClick(Sender: TObject);
begin
  if vdemo = false then
  begin
    if idResultado <> 0 then
    begin
      dlGuardar.DefaultExt := 'bmp';
      dlGuardar.Filter := 'Fichero Bitmap (*.bmp)|*.bmp';
      if dlGuardar.Execute then
        SendMessage(idResultado, WM_CAP_SAVEDIB, 0,
          longint(PCHAR(dlGuardar.FileName)));
    end;
  end;
end;

procedure TVigilanciaForm.bIniciarCamaraClick(Sender: TObject);
begin
  // if vdemo <> True then begin
  idResultado := capCreateCaptureWindowA('My Own Capture Window',
    WS_CHILD or WS_VISIBLE, pImagen.Left, pImagen.Top, pImagen.Width,
    pImagen.Height, VigilanciaForm.Handle, 0);
  if idResultado <> 0 then
  begin
    try
      SendMessage(idResultado, WM_CAP_DRIVER_CONNECT, 0, 0);
      SendMessage(idResultado, WM_CAP_SET_PREVIEWRATE, 40, 0);
      SendMessage(idResultado, WM_CAP_SET_PREVIEW, 1, 0);
      bIniciarCamara.Enabled := false;
      bDetener.Enabled := true;
      bGuardarImagen.Enabled := true;
      bGuardarVideo.Enabled := true;
      temporizador.Enabled := true;
      bIniciarDeteccion.Enabled := true;
    except
      temporizador.Enabled := false;
      bIniciarDeteccion.Enabled := false;
      raise;
    end;
  end
  { else
    begin
    temporizador.Enabled := false;
    MessageDlg ('Error al conectar al driver de la cámara.',
    mtError, [mbok], 0);
    bDetener.Enabled := false;
    bIniciarCamara.Enabled := True;
    bGuardarVideo.Enabled := false;
    bIniciarDeteccion.Enabled := false;
    end;
    end; }
end;

procedure TVigilanciaForm.bGuardarVideoClick(Sender: TObject);
begin
  if vdemo = false then
  begin
    if idResultado <> 0 then
    begin
      dlGuardar.DefaultExt := 'avi';
      dlGuardar.Filter := 'Fichero AVI (*.avi)|*.avi';
      if dlGuardar.Execute then
      begin
        capturandoAVI := true;
        SendMessage(idResultado, WM_CAP_FILE_SET_CAPTURE_FILEA, 0,
          longint(PCHAR(dlGuardar.FileName)));
        SendMessage(idResultado, WM_CAP_SEQUENCE, 0, 0);
      end;
    end;
  end;
end;

procedure TVigilanciaForm.bDetenerClick(Sender: TObject);
begin
  if idResultado <> 0 then
  begin
    SendMessage(idResultado, WM_CAP_DRIVER_DISCONNECT, 0, 0);
    idResultado := 0;
    bDetener.Enabled := false;
    bGuardarImagen.Enabled := false;
    bGuardarVideo.Enabled := false;
    bIniciarDeteccion.Enabled := false;
    bIniciarCamara.Enabled := true;
  end;
  temporizador.Enabled := false;
  Capturar := false;
end;

procedure TVigilanciaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IniFile.Destroy;
  bDetenerClick(Self);
end;

procedure TVigilanciaForm.bCerrarClick(Sender: TObject);
begin
  close;
end;

procedure TVigilanciaForm.temporizadorTimer(Sender: TObject);
Var
  error: int64;
  i, j: Integer;
  hayMovimiento: Boolean;
begin
  if idResultado <> 0 then
  begin
    try
      // capturamos la imagen actual
      SendMessage(idResultado, WM_CAP_EDIT_COPY, 0, 0);
      imagenActual.Assign(imagenAnterior);
      // la imagen anterior está guardada en el portapapeles, la obtenemos
      imagenAnterior.LoadFromClipBoardFormat(cf_BitMap,
        ClipBoard.GetAsHandle(cf_BitMap), 0);
      error := 0;
      // recorremos todos los píxeles de la imagen actual
      for i := 0 to imagenActual.Width do
      begin
        for j := 0 to imagenActual.Height do
        begin
          // comparamos el pixel de la imagen actual con el correspondiente
          // a la imagen anterior
          error := error + abs(imagenActual.Canvas.Pixels[i, j] -
            imagenAnterior.Canvas.Pixels[i, j]);
        end;
      end;
      // mostramos el porcentaje de error
      txtError.Text := FloatToStr(trunc(error / 20000000) / 100);
    except
      bDetenerClick(Self);
      raise;
    end;
    hayMovimiento := tbSensibilidad.Position < StrToFloat(txtError.Text);
    if (hayMovimiento and Capturar) then
    begin
      imagenAnterior.SaveToFile(ExtractFilePath(txtUbicacionImg.Text) +
        IntToStr(Contador) + ExtractFileName(txtUbicacionImg.Text));
      imagenActual.SaveToFile(ExtractFilePath(txtUbicacionImg.Text) +
        IntToStr(Contador + 1) + ExtractFileName(txtUbicacionImg.Text));
      sendimage := (ExtractFilePath(txtUbicacionImg.Text) +
        IntToStr(Contador + 1) + ExtractFileName(txtUbicacionImg.Text));
      // sendgmail;
      if IniFile.ReadString('img', 'path', '') <> sendimage then
        IniFile.WriteString('img', 'path', sendimage);
      Contador := Contador + 2;
      ShowMessage('foto');
    end;
    if hayMovimiento then
      txtError.Color := clRed
    else
      txtError.Color := clWhite;
  end
  else
  begin
    bDetenerClick(Self);
    MessageDlg('Debe inicar la cámara para capturar el movimiento.', mtWarning,
      [mbok], 0);
  end;
end;

procedure TVigilanciaForm.tbVelocidadChange(Sender: TObject);
begin
  temporizador.Interval := tbVelocidad.Position;
end;

procedure TVigilanciaForm.tbSensibilidadChange(Sender: TObject);
begin
  txtPScroll.Left := tbSensibilidad.Left + tbSensibilidad.Position + 15;
  txtPScroll.Text := IntToStr(tbSensibilidad.Position);
end;

procedure TVigilanciaForm.bSelFicheroClick(Sender: TObject);
begin
  dlGuardar.DefaultExt := 'bmp';
  dlGuardar.Filter := 'Fichero Bitmap (*.bmp)|*.bmp';
  if dlGuardar.Execute then
    txtUbicacionImg.Text := dlGuardar.FileName;
end;

procedure TVigilanciaForm.bIniciarDeteccionClick(Sender: TObject);
begin
  // WinExec(PChar('C:\sita\send\send.exe'),SW_SHOWNORMAL);
  if vdemo = false then
  begin
    if not DirectoryExists(ExtractFilePath(txtUbicacionImg.Text)) then
    begin
      Capturar := false;
      MessageDlg('Debe indicar una carpeta existente y un nombre ' +
        'de fichero para la captura del movimiento.', mtWarning, [mbok], 0);
    end
    else
    begin
      Contador := 0;
      Capturar := true;
      if not temporizador.Enabled then
        temporizador.Enabled := true;
    end;
  end;
end;

procedure TVigilanciaForm.Label9Click(Sender: TObject);
begin
  WinExec(PAnsiChar(ExtractFilePath(Application.ExeName) + '\about.exe'),
    SW_SHOWNORMAL);
end;

end.
