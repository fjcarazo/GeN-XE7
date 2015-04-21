program RubroContable;

uses
  Forms,
  RubroContableFormF in '..\Form\RubroContableFormF.pas' {RubroContableForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarRubroContableF in '..\..\..\Buscar\RubroContable\Form\BuscarRubroContableF.pas' {BuscarRubroContableForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Rubro Contable';
  Application.CreateForm(TRubroContableForm, RubroContableForm);
  Application.Run;
end.
