program CobranzaIncobrable;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  CobranzaIncobrableF in '..\Form\CobranzaIncobrableF.pas' {CobranzaIncobrableForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cobranza Incobrable';
  Application.CreateForm(TCobranzaIncobrableForm, CobranzaIncobrableForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
