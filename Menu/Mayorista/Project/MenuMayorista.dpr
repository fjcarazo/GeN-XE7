program MenuMayorista;

uses
  Forms,
  MenuMayoristaF in '..\Form\MenuMayoristaF.pas' {FMainForm},
  LoginF in '..\..\..\SubOperacion\Login\Form\LoginF.pas' {FLogin},
  Demo in '..\..\..\Demo\Demo.pas' {DemoDM: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN';
  Application.CreateForm(TFMainForm, FMainForm);
  Application.Run;
end.
