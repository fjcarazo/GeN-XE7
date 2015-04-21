program CompraL;

uses
  Forms,
  BuscaCompra in '..\Form\BuscaCompra.pas' {BuscaCompraForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'VENTAS';
  Application.CreateForm(TBuscaCompraForm, BuscaCompraForm);
  Application.Run;
end.
