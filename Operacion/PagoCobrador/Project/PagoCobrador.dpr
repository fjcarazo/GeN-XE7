program PagoCobrador;

uses
  Forms,
  PagoComisionCobrador in '..\Form\PagoComisionCobrador.pas' {PagoComisionCobradorForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  BuscarCobrador in '..\..\..\Buscar\Cobrador\Form\BuscarCobrador.pas' {BuscarCobradorForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pago de Comisión Cobrador';
  Application.CreateForm(TPagoComisionCobradorForm, PagoComisionCobradorForm);
  Application.Run;
end.
