program GananciaXvta;

uses
  Forms,
  GananciasL in '..\Form\GananciasL.pas' {GanaciaxVtaLForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Ganancias X vtas';
  Application.CreateForm(TGanaciaxVtaLForm, GanaciaxVtaLForm);
  Application.Run;
end.
