program CuentaContable;

uses
  Forms,
  CuentaContableF in '..\Form\CuentaContableF.pas' {CuentasContablesForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarCuentaF in '..\..\..\Buscar\CuentaContable\Form\BuscarCuentaF.pas' {BuscarCuentaForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cuenta Contable';
  Application.CreateForm(TCuentasContablesForm, CuentasContablesForm);
  Application.Run;
end.
