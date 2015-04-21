program about;

uses
  Forms,
  main in '..\form\main.pas' {mainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Acerca de...';
  Application.CreateForm(TmainForm, mainForm);
  Application.Run;
end.
