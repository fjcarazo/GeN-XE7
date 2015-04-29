unit servicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OperacionDM;

type
  TServForm = class(TForm)
    Label4: TLabel;
    PrecioEdit: TEdit;
    Label33: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DescripcionEdit: TEdit;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    cod: string;
    { Public declarations }
  end;

var
  ServForm: TServForm;

implementation

{$R *.dfm}

procedure TServForm.BitBtn2Click(Sender: TObject);
begin
  DescripcionEdit.Text := '';
  close;
end;

procedure TServForm.BitBtn1Click(Sender: TObject);
begin
  OperacionDataModule := TOperacionDataModule.Create(self);
  cod := OperacionDataModule.ArtNuevo(ServForm.PrecioEdit.Text,
    ServForm.DescripcionEdit.Text);
  OperacionDataModule.Free;
  close;
end;

procedure TServForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

end.
