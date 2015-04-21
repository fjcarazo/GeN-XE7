program Vigilancia;

uses
  Forms,
  VigilanciaF in '..\form\VigilanciaF.pas' {VigilanciaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Vigilancia';
  Application.CreateForm(TVigilanciaForm, VigilanciaForm);
  Application.Run;
end.
