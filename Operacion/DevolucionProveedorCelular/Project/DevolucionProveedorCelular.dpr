program DevolucionProveedorCelular;

uses
  Forms,
  DevolucionProveedorCelularF in '..\Form\DevolucionProveedorCelularF.pas' {DevolucionesForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Devolución';
  Application.CreateForm(TDevolucionesForm, DevolucionesForm);
  Application.Run;
end.
