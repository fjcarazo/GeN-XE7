program Sevidor;

uses
  Forms,
  ServidorF in '..\Form\ServidorF.pas' {ServidorForm};

{$R *.res}

begin
  Application.Initialize;
//  Application.MainFormOnTaskbar := True;
  Application.Title := 'Servidor';
  Application.CreateForm(TServidorForm, ServidorForm);
  Application.Run;
end.
