program PedidoL;

uses
  Forms,
  PedidoLF in '..\Form\PedidoLF.pas' {PedidoLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarVendedor in '..\..\..\Buscar\Vendedor\Form\BuscarVendedor.pas' {BuscarVendedorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'PEDIDOS';
  Application.CreateForm(TPedidoLForm, PedidoLForm);
  Application.Run;
end.
