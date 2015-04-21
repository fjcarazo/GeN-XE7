program Cobrador;

uses
  Forms,
  CobradorF in '..\Form\CobradorF.pas' {CobradorForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarCobrador in '..\..\..\Buscar\Cobrador\Form\BuscarCobrador.pas' {BuscarCobradorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cobrador';
  Application.CreateForm(TCobradorForm, CobradorForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
