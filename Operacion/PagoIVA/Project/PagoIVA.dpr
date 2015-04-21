program PagoIVA;

uses
  Forms,
  PagoIVAF in '..\Form\PagoIVAF.pas' {PagoIVAForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Pago de IVA';
  Application.CreateForm(TPagoIVAForm, PagoIVAForm);
  Application.Run;
end.
