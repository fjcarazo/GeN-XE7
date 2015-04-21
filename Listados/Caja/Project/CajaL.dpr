program CajaL;

uses
  Forms,
  CajaLF in '..\Form\CajaLF.pas' {CajaLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Caja';
  Application.CreateForm(TCajaLForm, CajaLForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
