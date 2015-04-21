program Capitulo;

uses
  Forms,
  CapituloF in '..\Form\CapituloF.pas' {CapituloForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarCapituloF in '..\..\..\Buscar\Capitulo\Form\BuscarCapituloF.pas' {BuscarCapituloForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Capitulo Contable';
  Application.CreateForm(TCapituloForm, CapituloForm);
  Application.Run;
end.
