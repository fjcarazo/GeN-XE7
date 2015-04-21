program AporteCapital;

uses
  Forms,
  AporteCapitalF in '..\Form\AporteCapitalF.pas' {AporteCapitalForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscaSocioF in '..\..\..\Buscar\Socio\Form\BuscaSocioF.pas' {BuscaSocioForm},
  UFBuscaArticulos in '..\..\..\Buscar\Articulo\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Aporte de Capital';
  Application.CreateForm(TAporteCapitalForm, AporteCapitalForm);
  Application.Run;
end.
