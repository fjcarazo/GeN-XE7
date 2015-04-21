program NotaCreditoPlan;

uses
  Forms,
  NotaCreditoPlanF in '..\Form\NotaCreditoPlanF.pas' {NotaCreditoPlanForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarPlanFacturado in '..\..\..\Buscar\PlanProcesado\Form\BuscarPlanFacturado.pas' {BuscarPlanFacturadoForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Nota de Credito';
  Application.CreateForm(TNotaCreditoPlanForm, NotaCreditoPlanForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
