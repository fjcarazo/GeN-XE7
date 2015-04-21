program ActivacionesL;

uses
  Forms,
  ActivacionesLF in '..\Form\ActivacionesLF.pas' {ActivacionesLForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Activaciones';
  Application.CreateForm(TActivacionesLForm, ActivacionesLForm);
  Application.Run;
end.
