program Proveedor;

uses
  Forms,
  ProveedorF in '..\Form\ProveedorF.pas' {ProveedorForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaProve in '..\..\..\Buscar\Proveedor\Form\UFBuscaProve.pas' {FBuscaProve},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Proveedor';
  Application.CreateForm(TProveedorForm, ProveedorForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
