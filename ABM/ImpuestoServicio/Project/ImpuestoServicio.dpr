program ImpuestoServicio;

uses
  Forms,
  ImpuestosServicios in '..\Form\ImpuestosServicios.pas' {ImpuestosServiciosFrom},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarImpuestosServicios in '..\..\..\Buscar\ImpuestoServicio\Form\BuscarImpuestosServicios.pas' {BuscarImpuestosServiciosForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Impuestos';
  Application.CreateForm(TImpuestosServiciosFrom, ImpuestosServiciosFrom);
  Application.Run;
end.
