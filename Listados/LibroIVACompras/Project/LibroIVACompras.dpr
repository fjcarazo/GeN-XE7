program LibroIVACompras;

uses
  Forms,
  LibroIVAComprasF in '..\Form\LibroIVAComprasF.pas' {CuentasForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Libro IVA Compras';
  Application.CreateForm(TCuentasForm, CuentasForm);
  Application.Run;
end.
