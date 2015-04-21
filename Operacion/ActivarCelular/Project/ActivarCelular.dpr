program ActivarCelular;

uses
  Forms,
  ActivarCelularF in '..\Form\ActivarCelularF.pas' {VendedorActivaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Activar';
  Application.CreateForm(TVendedorActivaForm, VendedorActivaForm);
  Application.Run;
end.
