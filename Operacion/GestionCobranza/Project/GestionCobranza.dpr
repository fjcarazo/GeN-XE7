program GestionCobranza;

uses
  Forms,
  DataModule in '..\..\..\DataModule\DataModule.pas' {DM: TDataModule},
  GestionCobranzaF in '..\From\GestionCobranzaF.pas' {GestionCobranzaForm},
  VerCobranza in '..\..\..\Buscar\Cobranza\Form\VerCobranza.pas' {VerCobranzaForm},
  ImprimirDM in '..\..\..\DataModule\ImprimirDM.pas' {ImprimirDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gestión de Cobranza';
  Application.CreateForm(TGestionCobranzaForm, GestionCobranzaForm);
  Application.CreateForm(TImprimirDataModule, ImprimirDataModule);
  Application.Run;
end.
