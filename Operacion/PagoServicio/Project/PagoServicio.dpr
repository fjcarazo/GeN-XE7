program PagoServicio;

uses
  Forms,
  Pagos in '..\Form\Pagos.pas' {PagosForm},
  Entrega in '..\..\..\SubOperacion\EntregaDinero\Form\Entrega.pas' {EntregaForm},
  UFFormaPago in '..\..\..\SubOperacion\FormaPago\Form\UFFormaPago.pas' {FFormaPago},
  BuscarImpuestosServicios in '..\..\..\Buscar\ImpuestoServicio\Form\BuscarImpuestosServicios.pas' {BuscarImpuestosServiciosForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pagos de Impuesto';
  Application.CreateForm(TPagosForm, PagosForm);
  Application.Run;
end.
