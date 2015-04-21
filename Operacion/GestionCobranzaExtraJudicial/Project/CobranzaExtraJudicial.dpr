program CobranzaExtraJudicial;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  CobranzaExtraJudicialF in '..\Form\CobranzaExtraJudicialF.pas' {CobranzaExtraJudicialForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cobranza Extra Judicial';
  Application.CreateForm(TCobranzaExtraJudicialForm, CobranzaExtraJudicialForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
