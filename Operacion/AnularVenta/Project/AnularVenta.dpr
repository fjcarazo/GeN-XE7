program AnularVenta;

uses
  Forms,
  AnularVtaF in '..\Form\AnularVtaF.pas' {FAnulaReimp},
  BuscaFactura in '..\..\..\Buscar\Venta\Form\BuscaFactura.pas' {BuscaFacturaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Anular Venta';
  Application.CreateForm(TFAnulaReimp, FAnulaReimp);
  Application.Run;
end.
