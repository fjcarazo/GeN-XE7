program IncrementarValor;

uses
  Forms,
  incremento in '..\Form\incremento.pas' {IncrementoForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaArticulos in '..\..\..\Buscar\Articulo\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Incrementar Valor';
  Application.CreateForm(TIncrementoForm, IncrementoForm);
  Application.Run;
end.
