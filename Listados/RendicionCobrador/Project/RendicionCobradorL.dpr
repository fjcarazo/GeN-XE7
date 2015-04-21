program RendicionCobradorL;

uses
  Forms,
  RendicionCobradorLF in '..\Form\RendicionCobradorLF.pas' {RendicionCobradorLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule},
  BuscarCobrador in '..\..\..\Buscar\Cobrador\Form\BuscarCobrador.pas' {BuscarCobradorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Rendición Cobrador';
  Application.CreateForm(TRendicionCobradorLForm, RendicionCobradorLForm);
  Application.Run;
end.
