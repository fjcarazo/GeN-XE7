unit UFSelProdFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ExtCtrls, Mask, DataModule;

type
  TFSelProdFact = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    CantidadEdit: TEdit;
    FloatEdit1: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListaPrecioPanel: TPanel;
    Edit6: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit2: TEdit;
    CBIV: TCheckBox;
    RadioGroup1: TRadioGroup;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Filtro, codigo, cant : String;
    Cancela : Boolean;
    Precio, Proveedor: String;
  end;

var
  FSelProdFact: TFSelProdFact;

implementation

uses UFBuscaArticulos;

{$R *.dfm}

procedure TFSelProdFact.BitBtn2Click(Sender: TObject);
begin
   Cancela := True;
   Close;
end;

procedure TFSelProdFact.BitBtn3Click(Sender: TObject);
begin
   FBuscaArticulo:=TFBuscaArticulo.Create(self);
   FBuscaArticulo.Precio :=Precio;
   FBuscaArticulo.Proveedor := Proveedor;
   try
      FBuscaArticulo.ShowModal;
   finally
      If FBuscaArticulo.Tabla.Active =True then
       begin
      with FBuscaArticulo do
      begin
      Edit1.Text := Tabla.FieldByName('CODIGO').AsString;
        if Precio = 'Costo' then Edit9.Text := Format('%8.2f',[((Tabla.FieldByName('Costo').AsFloat)+(Tabla.FieldByName('ImpOtros').AsFloat)) * ((Tabla.FieldByName('Tasa').AsFloat)/100+1)])
        else
         begin
          Edit6.Text := Tabla.FieldByName('Precio1').AsString;
          Edit2.Text := Tabla.FieldByName('Precio2').AsString;
          Edit4.Text := Tabla.FieldByName('Precio3').AsString;
          Edit5.Text := Tabla.FieldByName('Precio4').AsString;
          Edit7.Text := Tabla.FieldByName('Precio5').AsString;
          Edit8.Text := Tabla.FieldByName('Precio6').AsString;
          Edit9.Text := Tabla.FieldByName('Costo').AsString;
         end;
          If Precio = '2' then begin RadioGroup1.ItemIndex:=1; FloatEdit1.Text := (Edit2.Text); end
           else if Precio = '3' then begin RadioGroup1.ItemIndex:=2; FloatEdit1.Text := (Edit4.Text); end
            else if Precio = '4' then begin RadioGroup1.ItemIndex:=3; FloatEdit1.Text := (Edit5.Text); end
             else if Precio = '5' then begin RadioGroup1.ItemIndex:=4; FloatEdit1.Text := (Edit7.Text); end
              else if Precio = '6' then begin RadioGroup1.ItemIndex:=5; FloatEdit1.Text := (Edit8.Text); end
               else if Precio = 'Costo' then begin RadioGroup1.ItemIndex:=6; FloatEdit1.Text := (Edit9.Text); end
                else begin RadioGroup1.ItemIndex:=5; FloatEdit1.Text := (Edit8.Text); end
        end;
       end;
       FBuscaArticulo.Free;
   end;
    CantidadEdit.SetFocus;
end;

procedure TFSelProdFact.BitBtn1Click(Sender: TObject);
begin
   if (Edit1.Text = '') OR (CantidadEdit.Text = '') then
     MessageDlg('Los valores no deben estar en blanco.',mtError,[mbOK],0)
   else
   begin
      Cancela := False;
      Close;
   end;
end;

procedure TFSelProdFact.FormShow(Sender: TObject);
begin
if codigo <> '' then
 begin
 ListaPrecioPanel.Visible := True;
 Edit1.Text:=codigo;
 CantidadEdit.Text:=cant;
 end else
 begin
 Edit1.Text:='';
 CantidadEdit.Text:='1';
 FloatEdit1.Text:='0.0';
 if Precio <> 'Costo' then ListaPrecioPanel.Visible:=True;
 BitBtn3.Click;
 end;
Close;
end;

procedure TFSelProdFact.RadioGroup1Click(Sender: TObject);
begin
         If RadioGroup1.ItemIndex = 1 then FloatEdit1.Text := (Edit2.Text)
           else if RadioGroup1.ItemIndex = 2 then FloatEdit1.Text := (Edit4.Text)
            else if RadioGroup1.ItemIndex = 3 then FloatEdit1.Text := (Edit5.Text)
             else if RadioGroup1.ItemIndex = 4 then FloatEdit1.Text := (Edit7.Text)
              else if RadioGroup1.ItemIndex = 5 then FloatEdit1.Text := (Edit8.Text)
               else if RadioGroup1.ItemIndex = 6 then FloatEdit1.Text := (Edit9.Text)
                else FloatEdit1.Text := (Edit6.Text)
end;

procedure TFSelProdFact.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

end.

