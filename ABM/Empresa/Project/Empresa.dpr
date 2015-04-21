program Empresa;

uses
  Forms,
  EmpresaF in '..\Form\EmpresaF.pas' {EmpresaForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Empresa';
  Application.CreateForm(TEmpresaForm, EmpresaForm);
  Application.Run;
end.
