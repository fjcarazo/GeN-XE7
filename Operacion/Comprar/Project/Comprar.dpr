program Comprar;

uses
  Forms,
  ComprarF in '..\Form\ComprarF.pas' {ComprarForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaProve in '..\..\..\Buscar\Proveedor\Form\UFBuscaProve.pas' {FBuscaProve},
  UFBuscaArticulos in '..\..\..\Buscar\Articulo\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm},
  UFSelProdFact in '..\..\..\SubOperacion\SelecionarPrecio\Form\UFSelProdFact.pas' {FSelProdFact},
  UFFormaPago in '..\..\..\SubOperacion\FormaPago\Form\UFFormaPago.pas' {FFormaPago},
  servicio in '..\..\..\SubOperacion\ManoObra\Form\servicio.pas' {ServForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Comprar';
  Application.CreateForm(TComprarForm, ComprarForm);
  Application.CreateForm(TOperacionDataModule, OperacionDataModule);
  Application.Run;
end.
