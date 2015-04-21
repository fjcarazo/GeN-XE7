program CartonCobranza;

uses
  Forms,
  CartonCobranzaF in '..\Form\CartonCobranzaF.pas' {CartonCobranzaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarPlanFacturado in '..\..\..\Buscar\PlanProcesado\Form\BuscarPlanFacturado.pas' {BuscarPlanFacturadoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Carton de Cobranza';
  Application.CreateForm(TCartonCobranzaForm, CartonCobranzaForm);
  Application.Run;
end.
