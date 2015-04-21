program CobranzaJudicial;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  CobranzaJudicialF in '..\Form\CobranzaJudicialF.pas' {CobranzaJudicialForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cobranza Judicial';
  Application.CreateForm(TCobranzaJudicialForm, CobranzaJudicialForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
