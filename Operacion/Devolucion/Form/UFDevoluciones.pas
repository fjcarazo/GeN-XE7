unit UFDevoluciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DataModule;

type
  TFDevoluciones = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qTemp: TADOQuery;
    qTemp2: TADOQuery;
    IntEdit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure IntEdit1Exit(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDevoluciones: TFDevoluciones;

implementation

uses BuscaFactura;

{$R *.dfm}

procedure TFDevoluciones.BitBtn2Click(Sender: TObject);
begin
  BuscaFacturaForm := TBuscaFacturaForm.Create(self);
  try
    BuscaFacturaForm.ShowModal;
  finally
    If Not BuscaFacturaForm.Cancela then
      IntEdit1.Text := BuscaFacturaForm.Tabla.FieldByName('CodFactura')
        .AsString;
    BuscaFacturaForm.Free;
  end;
end;

procedure TFDevoluciones.IntEdit1Exit(Sender: TObject);
begin
  qTemp.SQL.Text := 'SELECT Distinct CodParte FROM FacturaItem ' +
    'WHERE CodFactura=' + IntEdit1.Text;
  qTemp.Open;
  ComboBox1.Items.Clear;
  While not qTemp.Eof do
  begin
    ComboBox1.Items.Add(qTemp.Fields[0].AsString);
    qTemp.Next;
  end;
  ComboBox1.ItemIndex := 0;
  ComboBox1Change(IntEdit1);
end;

procedure TFDevoluciones.ComboBox1Change(Sender: TObject);
begin
  qTemp2.SQL.Text := 'SELECT DISTINCT Serie FROM FacturaItem ' +
    'WHERE ((CodParte=' + ComboBox1.Text + ') AND (CodFactura=' +
    IntEdit1.Text + '))';

  qTemp2.Open;
  ComboBox2.Items.Clear;
  While not qTemp2.Eof do
  begin
    ComboBox2.Items.Add(qTemp2.Fields[0].AsString);
    qTemp2.Next;
  end;
  ComboBox2.ItemIndex := 0;
end;

end.
