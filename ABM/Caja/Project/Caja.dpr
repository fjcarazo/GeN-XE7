program Caja;

uses
  Forms,
  CajaF in '..\Form\CajaF.pas' {ABMCajaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  IngresoDineroF in '..\..\..\SubOperacion\IngresoDinero\Form\IngresoDineroF.pas' {IngresoDineroForm},
  BuscarCheques in '..\..\..\Buscar\Cheque\Form\BuscarCheques.pas' {BuscarChequesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Caja';
  Application.CreateForm(TABMCajaForm, ABMCajaForm);
  Application.Run;
end.
