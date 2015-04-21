program Devolucion;

uses
  Forms,
  UFDevoluciones in '..\Form\UFDevoluciones.pas' {FDevoluciones},
  BuscaFactura in '..\..\..\Buscar\Venta\Form\BuscaFactura.pas' {BuscaFacturaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Devoluciones';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFDevoluciones, FDevoluciones);
  Application.Run;
end.
