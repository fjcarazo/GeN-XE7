program Usuarios;

uses
  Forms,
  UsuariosF in '..\Form\UsuariosF.pas' {UsuariosForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Usuarios';
  Application.CreateForm(TUsuariosForm, UsuariosForm);
  Application.Run;
end.
