unit ServidorF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls, Buttons;

type
  TServidorForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServidorForm: TServidorForm;

implementation

{$R *.dfm}

procedure TServidorForm.BitBtn1Click(Sender: TObject);
var
  IniFile: TIniFile;
begin
if Edit1.Text <> '' then
  begin
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName)+'DeG');
//  IniFile.WriteString('BD', 'Path', Edit1.Text);
  IniFile.WriteString('BD','DBase',Edit1.Text+'GeN.FDB');
  IniFile.Free;
  close;
  end
  else
  begin
  ShowMessage('Por favor introduzca la dirección de su base de datos');
  Edit1.SetFocus;
  end;
end;

procedure TServidorForm.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
