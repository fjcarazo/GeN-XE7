program RendicionCarton;

uses
  Forms,
  RendicionCartonF in '..\Form\RendicionCartonF.pas' {RendicionCartonForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Rendición Carton';
  Application.CreateForm(TRendicionCartonForm, RendicionCartonForm);
  Application.Run;
end.
