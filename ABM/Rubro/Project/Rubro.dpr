program Rubro;

uses
  Forms,
  RubroF in '..\Form\RubroF.pas' {RubroForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Rubro';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TRubroForm, RubroForm);
  Application.Run;
end.
