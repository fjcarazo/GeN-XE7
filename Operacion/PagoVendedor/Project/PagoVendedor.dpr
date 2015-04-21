program PagoVendedor;

uses
  Forms,
  PagoVendedorF in '..\Form\PagoVendedorF.pas' {PagoVendedorForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarVendedor in '..\..\..\Buscar\Vendedor\Form\BuscarVendedor.pas' {BuscarVendedorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pago a Vendedor';
  Application.CreateForm(TPagoVendedorForm, PagoVendedorForm);
  Application.Run;
end.
