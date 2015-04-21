program CtaCte;

uses
  Forms,
  CtaCteF in '..\Form\CtaCteF.pas' {CtaCteForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  Entrega in '..\..\..\SubOperacion\EntregaDinero\Form\Entrega.pas' {EntregaForm},
  UFFormaPago in '..\..\..\SubOperacion\FormaPago\Form\UFFormaPago.pas' {FFormaPago},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'CtaCte';
  Application.CreateForm(TCtaCteForm, CtaCteForm);
  Application.Run;
end.
