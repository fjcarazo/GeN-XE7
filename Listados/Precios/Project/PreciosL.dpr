program PreciosL;

uses
  Forms,
  Precios in '..\Form\Precios.pas' {ListaPreciosForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Precios';
  Application.CreateForm(TListaPreciosForm, ListaPreciosForm);
  Application.Run;
end.
