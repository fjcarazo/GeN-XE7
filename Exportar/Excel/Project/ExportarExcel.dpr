program ExportarExcel;

uses
  Forms,
  ExportarExcelF in '..\Form\ExportarExcelF.pas' {Menu1},
  Hoja_Calculo in '..\Hoja_Calculo.pas',
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenu1, Menu1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
