program SubCategoria;

uses
  Forms,
  UFSubCategorias in '..\Form\UFSubCategorias.pas' {FSubCategorias},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sub Categorías';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFSubCategorias, FSubCategorias);
  Application.Run;
end.
