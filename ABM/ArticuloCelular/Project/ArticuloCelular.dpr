program ArticuloCelular;

uses
  Forms,
  ArticuloCelularF in '..\Form\ArticuloCelularF.pas' {FProductos},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFCategorias in '..\..\Categoria\Form\UFCategorias.pas' {FCategorias},
  Color in '..\..\Color\Form\Color.pas' {ColorForm},
  Marca in '..\..\Marca\Form\Marca.pas' {MarcaForm},
  UFSubCategorias in '..\..\SubCategoria\Form\UFSubCategorias.pas' {FSubCategorias},
  RubroF in '..\..\Rubro\Form\RubroF.pas' {RubroForm},
  IngresosBrutos in '..\..\IngresosBrutos\Form\IngresosBrutos.pas' {IngresosBrutosForm},
  BuscarArticulosCelularF in '..\..\..\Buscar\ArticuloCelular\Form\BuscarArticulosCelularF.pas' {BuscaArticuloCelularForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Articulos';
  Application.CreateForm(TFProductos, FProductos);
  Application.Run;
end.
