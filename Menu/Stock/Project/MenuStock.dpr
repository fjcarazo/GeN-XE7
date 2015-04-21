program MenuStock;

uses
  Forms,
  StockF in '..\Form\StockF.pas' {StockForm},
  Demo in '..\..\..\Demo\Demo.pas' {DemoDM: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  AgregarCantidad in '..\..\..\SubOperacion\AgregarCantidad\Form\AgregarCantidad.pas' {AgregarCantidadForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN';
  Application.CreateForm(TStockForm, StockForm);
  Application.Run;
end.
