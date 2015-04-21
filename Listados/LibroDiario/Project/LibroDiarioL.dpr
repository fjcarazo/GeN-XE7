program LibroDiarioL;

uses
  Forms,
  LibroDiarioF in '..\Form\LibroDiarioF.pas' {LibroDiarioLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Libro diario';
  Application.CreateForm(TLibroDiarioLForm, LibroDiarioLForm);
  Application.Run;
end.
