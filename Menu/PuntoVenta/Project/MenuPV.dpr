program MenuPV;

uses
  Forms,
  MenuPVF in '..\Form\MenuPVF.pas' {MenuPVForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  LoginF in '..\..\..\SubOperacion\Login\Form\LoginF.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN';
  Application.CreateForm(TMenuPVForm, MenuPVForm);
  Application.Run;
end.
