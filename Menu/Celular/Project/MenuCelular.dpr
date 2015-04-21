program MenuCelular;

uses
  Forms,
  MenuCelularF in '..\Form\MenuCelularF.pas' {MenuCelularForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  Demo in '..\..\..\Demo\Demo.pas' {DemoDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN';
  Application.CreateForm(TMenuCelularForm, MenuCelularForm);
  Application.Run;
end.
