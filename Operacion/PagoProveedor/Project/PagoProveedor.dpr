program PagoProveedor;

uses
  Forms,
  CtaCteProveedores in '..\Form\CtaCteProveedores.pas' {CtaCteProveedoresForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  Entrega in '..\..\..\SubOperacion\EntregaDinero\Form\Entrega.pas' {EntregaForm},
  UFBuscaProve in '..\..\..\Buscar\Proveedor\Form\UFBuscaProve.pas' {FBuscaProve},
  UFFormaPago in '..\..\..\SubOperacion\FormaPago\Form\UFFormaPago.pas' {FFormaPago},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pago a Proveedor';
  Application.CreateForm(TCtaCteProveedoresForm, CtaCteProveedoresForm);
  Application.CreateForm(TOperacionDataModule, OperacionDataModule);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
