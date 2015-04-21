program Configuracion;

uses
  Forms,
  ConfiguracionF in '..\Form\ConfiguracionF.pas' {ConfiguracionForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Configuración';
  Application.CreateForm(TConfiguracionForm, ConfiguracionForm);
  Application.Run;
end.
