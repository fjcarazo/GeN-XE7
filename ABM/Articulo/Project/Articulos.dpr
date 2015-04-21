program Articulos;

uses
  Forms,
  UFProductos in '..\Form\UFProductos.pas' {FProductos},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFBuscaArticulos in '..\..\..\Buscar\Articulo\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  Color in '..\..\Color\Form\Color.pas' {ColorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Articulo';
  Application.CreateForm(TFProductos, FProductos);
  Application.Run;
end.
