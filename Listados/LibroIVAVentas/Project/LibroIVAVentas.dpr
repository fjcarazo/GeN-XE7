program LibroIVAVentas;

uses
  Forms,
  LibroIVAVentasF in '..\Form\LibroIVAVentasF.pas' {CuentasForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Libro IVA Ventas';
  Application.CreateForm(TCuentasForm, CuentasForm);
  Application.Run;
end.
