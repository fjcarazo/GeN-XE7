program VaciarBase;

uses
  Forms,
  VaciarBaseF in '..\Form\VaciarBaseF.pas' {VaciarBaseForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Restaurar Sistema';
  Application.CreateForm(TVaciarBaseForm, VaciarBaseForm);
  Application.Run;
end.
