unit TiendaRopaInicioF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, ComCtrls;

type
  TTiendaRopaInicioForm = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  Empresa:string;
    { Public declarations }
  end;

var
  TiendaRopaInicioForm: TTiendaRopaInicioForm;

implementation

uses MenuTiendaRopaF;

{$R *.dfm}

procedure TTiendaRopaInicioForm.FormShow(Sender: TObject);
begin
ProgressBar1.Enabled:=true;
ProgressBar1.Position:=ProgressBar1.Position+1;
Timer1.Enabled:=true;
MenuTiendaRopaForm.inicio;
ProgressBar1.Position:=100;
end;

procedure TTiendaRopaInicioForm.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Position:=ProgressBar1.Position+1;
if MenuTiendaRopaForm.Empresa <> '' then  close;
end;

end.
