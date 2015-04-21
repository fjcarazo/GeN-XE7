program Socio;

uses
  Forms,
  SocioF in '..\Form\SocioF.pas' {SocioForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  BuscaSocioF in '..\..\..\Buscar\Socio\Form\BuscaSocioF.pas' {BuscaSocioForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Socio';
  Application.CreateForm(TSocioForm, SocioForm);
  Application.Run;
end.
