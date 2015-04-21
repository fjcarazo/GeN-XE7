program RetiroCaja;

uses
  Forms,
  RetiroCajaF in '..\Form\RetiroCajaF.pas' {RetiroCajaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aporte de Capital';
  Application.CreateForm(TRetiroCajaForm, RetiroCajaForm);
  Application.Run;
end.
