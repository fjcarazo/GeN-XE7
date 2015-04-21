program ComprarCelular;

uses
  Forms,
  ComprarCelularF in '..\Form\ComprarCelularF.pas' {ComprarCelularForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFFormaPago in '..\..\..\SubOperacion\FormaPago\Form\UFFormaPago.pas' {FFormaPago},
  UFBuscaProve in '..\..\..\Buscar\Proveedor\Form\UFBuscaProve.pas' {FBuscaProve},
  SeleccionarCelularF in '..\..\..\SubOperacion\SeleccionarCelular\Form\SeleccionarCelularF.pas' {SeleccionarCelularForm},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm},
  BuscarArticulosCelularF in '..\..\..\Buscar\ArticuloCelular\Form\BuscarArticulosCelularF.pas' {BuscaArticuloCelularForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Comprar Celular';
  Application.CreateForm(TComprarCelularForm, ComprarCelularForm);
  Application.Run;
end.
