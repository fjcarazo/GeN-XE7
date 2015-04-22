unit LicenciaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ShellApi, UrlMon, jpeg, ExtCtrls;

type
  TLicenciaForm = class(TForm)
    GenerarBitBtn: TBitBtn;
    LicenciaMemo: TMemo;
    CopiarBitBtn: TBitBtn;
    EnviarPorEmailBitBtn: TBitBtn;
    NombresEdit: TEdit;
    ApellidosEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DNIEdit: TEdit;
    Panel1: TPanel;
    FondoImage: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure GenerarBitBtnClick(Sender: TObject);
    procedure CopiarBitBtnClick(Sender: TObject);
    procedure EnviarPorEmailBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Label4Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LicenciaForm: TLicenciaForm;

implementation

{$R *.dfm}

function GetVolumeID(DriveChar: string): String;
var
  MaxFileNameLength, VolFlags, SerNum: DWord;
begin
  if GetVolumeInformation(PChar(DriveChar + '\'), nil, 0, @SerNum,
    MaxFileNameLength, VolFlags, nil, 0) then
  begin
    Result := IntToHex(SerNum, 8);
    Insert('-', Result, 5);
  end
  else
    Result := '';
end;

procedure TLicenciaForm.CopiarBitBtnClick(Sender: TObject);
begin
  if (ApellidosEdit.Text <> '') and (NombresEdit.Text <> '') and
    (DNIEdit.Text <> '') then
  begin
    GenerarBitBtn.Click;
    LicenciaMemo.SelectAll;
    LicenciaMemo.CopyToClipboard;
  end
  else
  begin
    ShowMessage('Por Favor Complete todos los Campos');
    ApellidosEdit.SetFocus
  end;
end;

procedure TLicenciaForm.EnviarPorEmailBitBtnClick(Sender: TObject);
var
  wideChars: array [0 .. 999] of WideChar;
  myString: String;
begin
  if (ApellidosEdit.Text <> '') and (NombresEdit.Text <> '') and
    (DNIEdit.Text <> '') then
  begin
    GenerarBitBtn.Click;
    LicenciaMemo.SelectAll;
    LicenciaMemo.CopyToClipboard;
    myString := 'mailto:consultas@degsoft.com.ar' +
      '?Subject=Registro de Licencia de ' + ApellidosEdit.Text + ' ' +
      NombresEdit.Text + ' DNI: ' + DNIEdit.Text + '&Body=' + LicenciaMemo.Text;
    StringToWideChar(myString, wideChars, 256);
    ShellExecute(Self.Handle, nil, wideChars, nil, nil, SW_NORMAL);
  end
  else
  begin
    ShowMessage('Por Favor Complete todos los Campos');
    ApellidosEdit.SetFocus
  end;
end;

procedure TLicenciaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TLicenciaForm.GenerarBitBtnClick(Sender: TObject);
begin
  if (ApellidosEdit.Text <> '') and (NombresEdit.Text <> '') and
    (DNIEdit.Text <> '') then
    LicenciaMemo.Text := ApellidosEdit.Text + NombresEdit.Text + DNIEdit.Text +
      '=Q2T-94-RTWMKPQ9VDFV}4GQG]' +
      GetVolumeID(ExtractFileDrive(Application.ExeName)) + '57WPDRDCT9-HJFF2ER'
  else
  begin
    ShowMessage('Por Favor Complete todos los Campos');
    ApellidosEdit.SetFocus
  end;
end;

procedure TLicenciaForm.Label10Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow(), nil,
    PChar('mailto:' + TLabel(Sender).Caption), nil, nil, SW_SHOWNORMAL);
end;

procedure TLicenciaForm.Label4Click(Sender: TObject);
begin
  HlinkNavigateString(Nil, PChar(TLabel(Sender).Caption));
end;

end.
