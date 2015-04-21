program ListadoCuentas;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  CuentasF in '..\Form\CuentasF.pas' {CuentasForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Cuentas';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TCuentasForm, CuentasForm);
  Application.Run;
end.
