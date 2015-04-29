unit Entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TEntregaForm = class(TForm)
    EntregoMaskEdit: TMaskEdit;
    Label33: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Entrega: double;
    { Public declarations }
  end;

var
  EntregaForm: TEntregaForm;

implementation

{$R *.dfm}

procedure TEntregaForm.BitBtn1Click(Sender: TObject);
begin
  Entrega := StrToFloat(EntregoMaskEdit.Text);
  Close;
end;

procedure TEntregaForm.BitBtn2Click(Sender: TObject);
begin
  Entrega := 0;
  Close;
end;

procedure TEntregaForm.FormShow(Sender: TObject);
begin
  EntregoMaskEdit.Text := '';
  EntregoMaskEdit.SetFocus;
end;

end.
