program Stock;

uses
  Forms,
  UFBuscaArticulos in '..\Form\UFBuscaArticulos.pas' {FBuscaArticulo},
  OperacionDM in '..\..\..\DataModule\OperacionDM.pas' {OperacionDataModule: TDataModule},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Stock';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFBuscaArticulo, FBuscaArticulo);
  Application.Run;
end.
