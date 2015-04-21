program Menu;

uses
  Forms,
  UMainF in '..\Form\UMainF.pas' {FMainForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  Demo in '..\..\..\Demo\Demo.pas' {DemoDM: TDataModule},
  LoginF in '..\..\..\Operacion\Login\Form\LoginF.pas' {FLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GeN';
  Application.CreateForm(TFMainForm, FMainForm);
  Application.Run;
end.
