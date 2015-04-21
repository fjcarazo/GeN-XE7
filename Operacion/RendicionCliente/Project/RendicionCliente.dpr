program RendicionCliente;

uses
  Forms,
  RendicionClienteF in '..\Form\RendicionClienteF.pas' {RendicionClienteForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarPlanFacturado in '..\..\..\Buscar\PlanProcesado\Form\BuscarPlanFacturado.pas' {BuscarPlanFacturadoForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Rendición Cliente';
  Application.CreateForm(TRendicionClienteForm, RendicionClienteForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
