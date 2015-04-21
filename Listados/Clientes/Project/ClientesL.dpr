program ClientesL;

uses
  Forms,
  ListadoClientes in '..\Form\ListadoClientes.pas' {ListadoClientesForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Clientes';
  Application.CreateForm(TListadoClientesForm, ListadoClientesForm);
  Application.Run;
end.
