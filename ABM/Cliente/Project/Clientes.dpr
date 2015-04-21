program Clientes;

uses
  Forms,
  UFClientes in '..\Form\UFClientes.pas' {FClientes},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaCliente in '..\..\..\Buscar\Cliente\Form\UFBuscaCliente.pas' {FBuscaCliente},
  BuscarVendedor in '..\..\..\Buscar\Vendedor\Form\BuscarVendedor.pas' {BuscarVendedorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cliente';
  Application.CreateForm(TFClientes, FClientes);
  Application.Run;
end.
