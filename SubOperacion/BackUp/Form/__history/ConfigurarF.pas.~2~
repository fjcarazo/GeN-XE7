unit ConfigurarF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, IniFiles;

type
  TConfigurarForm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfigurarForm: TConfigurarForm;

implementation

{$R *.dfm}

procedure TConfigurarForm.BitBtn1Click(Sender: TObject);
var
  IniFile: TIniFile;
begin
  if Edit1.Text <> '' then
  begin
    IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'DeG');
    IniFile.WriteString('Actualiza', 'Unidad', Edit1.Text + ':');
    IniFile.Free;
    close;
  end
  else
  begin
    ShowMessage('Por favor introduzca la letra de unidad de su pendrive');
    Edit1.SetFocus;
  end;
end;

procedure TConfigurarForm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
