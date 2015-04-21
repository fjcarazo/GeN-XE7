program ListarPedido;

uses
  Forms,
  ListarPedidoF in '..\Form\ListarPedidoF.pas' {ListarPedidoForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarVendedor in '..\..\..\Buscar\Vendedor\Form\BuscarVendedor.pas' {BuscarVendedorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pedidos';
  Application.CreateForm(TListarPedidoForm, ListarPedidoForm);
  Application.CreateForm(TBuscarVendedorForm, BuscarVendedorForm);
  Application.Run;
end.
