program CrearCredito;

uses
  Forms,
  CrearCreditoF in '..\Form\CrearCreditoF.pas' {CrearCreditoForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  UFBuscaArticulos in '..\..\..\Buscar\Articulo\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  AgregarCantidad in '..\..\..\SubOperacion\AgregarCantidad\Form\AgregarCantidad.pas' {AgregarCantidadForm},
  BuscarVendedor in '..\..\..\Buscar\Vendedor\Form\BuscarVendedor.pas' {BuscarVendedorForm},
  BuscarPlan in '..\..\..\Buscar\Plan\Form\BuscarPlan.pas' {BuscarPlanForm},
  BuscarCobrador in '..\..\..\Buscar\Cobrador\Form\BuscarCobrador.pas' {BuscarCobradorForm},
  servicio in '..\..\..\SubOperacion\ManoObra\Form\servicio.pas' {ServForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Crear Credito';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCrearCreditoForm, CrearCreditoForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.CreateForm(TOperacionDataModule, OperacionDataModule);
  Application.Run;
end.
