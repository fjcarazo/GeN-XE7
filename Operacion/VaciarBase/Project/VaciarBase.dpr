program VaciarBase;

uses
  Vcl.Forms,
  VaciarBaseF in '..\Form\VaciarBaseF.pas' {VaciarBaseForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TVaciarBaseForm, VaciarBaseForm);
  Application.Run;
end.
