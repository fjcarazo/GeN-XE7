program TipoGasto;

uses
  Forms,
  TipoGastoF in '..\Form\TipoGastoF.pas' {TipoGastoForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarTipoGastoF in '..\..\..\Buscar\TipoGasto\Form\BuscarTipoGastoF.pas' {BuscarTipoGastoForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Tipo de Gasto Contable';
  Application.CreateForm(TTipoGastoForm, TipoGastoForm);
  Application.Run;
end.
