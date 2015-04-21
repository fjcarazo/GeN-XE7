program MenuExpress;

uses
  Forms,
  MenuExpressF in '..\Form\MenuExpressF.pas' {MenuExpressForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  LoginF in '..\..\..\SubOperacion\Login\Form\LoginF.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN [express]';
  Application.CreateForm(TMenuExpressForm, MenuExpressForm);
  Application.Run;
end.
