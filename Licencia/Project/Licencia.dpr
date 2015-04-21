program Licencia;

uses
  Forms,
  LicenciaF in '..\Form\LicenciaF.pas' {LicenciaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Licencia';
  Application.CreateForm(TLicenciaForm, LicenciaForm);
  Application.Run;
end.
