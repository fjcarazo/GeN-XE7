program MenuTiendaRopa;

uses
  Forms,
  MenuTiendaRopaF in '..\Form\MenuTiendaRopaF.pas' {MenuTiendaRopaForm},
  Demo in '..\..\..\Demo\Demo.pas' {DemoDM: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  TiendaRopaInicioF in '..\..\..\SubOperacion\TiendaRopaInicio\Form\TiendaRopaInicioF.pas' {TiendaRopaInicioForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeN';
  Application.CreateForm(TMenuTiendaRopaForm, MenuTiendaRopaForm);
  Application.Run;
end.
