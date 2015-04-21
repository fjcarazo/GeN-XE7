program CartonCobranza;

uses
  Forms,
  CartonCobranzaF in '..\Form\CartonCobranzaF.pas' {CartonCobranzaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarPlanFacturado in '..\..\..\Buscar\PlanProcesado\Form\BuscarPlanFacturado.pas' {BuscarPlanFacturadoForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Carton de Cobranza';
  Application.CreateForm(TCartonCobranzaForm, CartonCobranzaForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
