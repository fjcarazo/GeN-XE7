program Plan;

uses
  Forms,
  PlanF in '..\Form\PlanF.pas' {PlanForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarPlan in '..\..\..\Buscar\Plan\Form\BuscarPlan.pas' {BuscarPlanForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Plan de Cuotas';
  Application.CreateForm(TPlanForm, PlanForm);
  Application.Run;
end.
