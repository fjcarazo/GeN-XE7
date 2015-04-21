program Categoria;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  UFCategorias in '..\Form\UFCategorias.pas' {FCategorias};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Categoría';
  Application.CreateForm(TFCategorias, FCategorias);
  Application.Run;
end.
