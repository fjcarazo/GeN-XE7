program EstadoCuentaL;

uses
  Forms,
  EstadoCuentaLF in '..\Form\EstadoCuentaLF.pas' {EstadoCuentaLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarPlanFacturado in '..\..\..\Buscar\PlanProcesado\Form\BuscarPlanFacturado.pas' {BuscarPlanFacturadoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Estado de Cuenta';
  Application.CreateForm(TEstadoCuentaLForm, EstadoCuentaLForm);
  Application.Run;
end.
