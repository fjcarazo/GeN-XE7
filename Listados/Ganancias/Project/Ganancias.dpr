program Ganancias;

uses
  Forms,
  GananciasL in '..\Form\GananciasL.pas' {GanaciaxVtaLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Ganancias (Listado)';
  Application.CreateForm(TGanaciaxVtaLForm, GanaciaxVtaLForm);
  Application.Run;
end.
