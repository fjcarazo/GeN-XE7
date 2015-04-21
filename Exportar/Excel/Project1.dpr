program Project1;

uses
  Forms,
  Menu1_ in 'Menu1_.pas' {Menu1},
  Hoja_Calculo in 'Hoja_Calculo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenu1, Menu1);
  Application.Run;
end.
