program IngresosBrutos;

uses
  Forms,
  IngresosBrutosF in '..\Form\IngresosBrutosF.pas' {IngresosBrutosForm},
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'IngresosBrutos';
  Application.CreateForm(TIngresosBrutosForm, IngresosBrutosForm);
  Application.Run;
end.
