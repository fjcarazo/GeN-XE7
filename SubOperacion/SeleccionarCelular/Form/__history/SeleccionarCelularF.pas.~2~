unit SeleccionarCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, Mask, DataModule;

type
  TSeleccionarCelularForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    CodigoEdit: TEdit;
    BitBtn3: TBitBtn;
    CodigoBarraEdit: TEdit;
    FloatEdit1: TEdit;
    Query: TADOQuery;
    Panel2: TPanel;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    Label4: TLabel;
    CantidadEdit: TEdit;
    Label6: TLabel;
    procedure NoBitBtnClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Filtro, codigo, cant: String;
    Cancela: Boolean;
    Precio, Proveedor: String;
  end;

var
  SeleccionarCelularForm: TSeleccionarCelularForm;

implementation

uses BuscarArticulosCelularF;

{$R *.dfm}

procedure TSeleccionarCelularForm.NoBitBtnClick(Sender: TObject);
begin
  Cancela := True;
  Close;
end;

procedure TSeleccionarCelularForm.BitBtn3Click(Sender: TObject);
begin
  BuscaArticuloCelularForm := TBuscaArticuloCelularForm.Create(self);
  BuscaArticuloCelularForm.Precio := Precio;
  BuscaArticuloCelularForm.Proveedor := Proveedor;
  try
    BuscaArticuloCelularForm.ShowModal;
  finally
    If BuscaArticuloCelularForm.ATArticulos.Active = True then
      CodigoEdit.Text := BuscaArticuloCelularForm.ATArticulos.FieldByName
        ('CodParte').AsString;

    Query.SQL.Text := 'Select * from Articulos Where CodParte=' +
      (CodigoEdit.Text);
    Query.Open;
    If Precio = '2' then
      FloatEdit1.Text := Query.FieldByName('Precio2').AsString
    else if Precio = '3' then
      FloatEdit1.Text := Query.FieldByName('Precio3').AsString
    else if Precio = '4' then
      FloatEdit1.Text := Query.FieldByName('Precio4').AsString
    else if Precio = '5' then
      FloatEdit1.Text := Query.FieldByName('Precio5').AsString
    else if Precio = '6' then
      FloatEdit1.Text := Query.FieldByName('Precio6').AsString
    else if Precio = 'Costo' then
      FloatEdit1.Text := Query.FieldByName('Costo').AsString
    else
      FloatEdit1.Text := Query.FieldByName('Precio1').AsString;
    BuscaArticuloCelularForm.Free;
  end;
  CantidadEdit.SetFocus;
end;

procedure TSeleccionarCelularForm.SiBitBtnClick(Sender: TObject);
begin
  if (CodigoEdit.Text = '') OR (CantidadEdit.Text = '') then
    MessageDlg('Los valores no deben estar en blanco.', mtError, [mbOK], 0)
  else
  begin
    Cancela := False;
    Close;
  end;
end;

procedure TSeleccionarCelularForm.FormShow(Sender: TObject);
begin
  if codigo <> '' then
  begin
    CodigoEdit.Text := codigo;
    CantidadEdit.Text := cant;
  end
  else
  begin
    CodigoEdit.Text := '';
    CantidadEdit.Text := '1';
    FloatEdit1.Text := '0.0';
    BitBtn3.Click;
  end;
  Close;
end;

procedure TSeleccionarCelularForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

end.
