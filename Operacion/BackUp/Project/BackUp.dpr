program BackUp;

uses
  Forms,
  BackUpF in '..\Form\BackUpF.pas' {BackUpForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ConfigurarF in '..\..\..\SubOperacion\BackUp\Form\ConfigurarF.pas' {ConfigurarForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Copia de Seguridad';
  Application.CreateForm(TBackUpForm, BackUpForm);
  Application.Run;
end.
