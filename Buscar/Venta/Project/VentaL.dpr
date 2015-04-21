program VentaL;

uses
  Forms,
  BuscaFactura in '..\Form\BuscaFactura.pas' {BuscaFacturaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'VENTAS';
  Application.CreateForm(TBuscaFacturaForm, BuscaFacturaForm);
  Application.Run;
end.
