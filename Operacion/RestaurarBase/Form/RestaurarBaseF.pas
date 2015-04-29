unit RestaurarBaseF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, IBX.IBScript,
  IniFiles;

type
  TRestaurarBaseForm = class(TForm)
    Borrar: TIBScript;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RestaurarBaseForm: TRestaurarBaseForm;

implementation

{$R *.dfm}

procedure TRestaurarBaseForm.BitBtn1Click(Sender: TObject);
Var
  IniFile: TIniFile;
  Path, BaseDeDatos: string;
begin
  FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
  // Obtiene la ruta y el nombre de la base de datos
  IniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'DeG');
  Path := IniFile.ReadString('BD', 'Path', '');
  if Path = '' then
    Path := ExtractFilePath(Application.ExeName);
  BaseDeDatos := IniFile.ReadString('BD', 'DBase', '');
  if BaseDeDatos = '' then
    BaseDeDatos := Path + 'GeN.FDB';
  if BaseDeDatos = '' then
    ShowMessage('Error al cargar Base de Datos')
  else
  begin
    Borrar.Script.Text := 'SET NAMES WIN1252; CONNECT ' + quotedstr(BaseDeDatos)
      + ' USER ''SYSDBA'' PASSWORD ''masterkey''; ' + Borrar.Script.Text;
    Borrar.ExecuteScript;
    ShowMessage('Base de Datos Restaurada con éxito!!!');
  end;
  // IniFile.WriteString('Licencia', 'Dia', inttostr(1));
  // IniFile.WriteString('Licencia', 'Fecha', datetostr(date));
end;

end.
