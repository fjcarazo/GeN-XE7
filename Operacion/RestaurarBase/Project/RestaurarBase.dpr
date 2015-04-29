program RestaurarBase;

uses
  Vcl.Forms,
  RestaurarBaseF in '..\Form\RestaurarBaseF.pas' {RestaurarBaseForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRestaurarBaseForm, RestaurarBaseForm);
  Application.Run;
end.
