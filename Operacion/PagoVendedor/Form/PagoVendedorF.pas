unit PagoVendedorF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, Buttons, DBGrids, DB, ImprimirDM,
  DataModule, ExtCtrls, OleCtrls, SHDocVw, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TPagoVendedorForm = class(TForm)
    DS: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    NombreLabel: TLabel;
    FechaDateTimePicker: TDateTimePicker;
    Edit1: TEdit;
    VerButton: TButton;
    VendedorBitBtn: TBitBtn;
    Label3: TLabel;
    PagarButton: TButton;
    TotalEdit: TEdit;
    CheckBox1: TCheckBox;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Tabla: TIBQuery;
    QTemp: TIBQuery;
    Q: TIBQuery;
    DBGrid1: TDBGrid;
    TablaCODIGO: TIntegerField;
    TablaVENDEDOR: TIntegerField;
    TablaVENTA: TIntegerField;
    TablaFECHA: TDateTimeField;
    TablaIMPORTE: TFloatField;
    TablaPAGADO: TIBStringField;
    procedure PagarButtonClick(Sender: TObject);
    procedure VendedorBitBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VerButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Fecha, CtaAnticipo, CtaNombre: string;
    { Public declarations }
  end;

var
  PagoVendedorForm: TPagoVendedorForm;

implementation

uses BuscarVendedor;

{$R *.dfm}

procedure TPagoVendedorForm.PagarButtonClick(Sender: TObject);
var
  i, c: integer;
begin
  Fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss',
    FechaDateTimePicker.DateTime));

  QTemp.SQL.Text := 'update "RendidoVendedor" set PAGADO= ''SI'' where CODIGO='
    + Tabla.FieldByName('Codigo').AsString;
  QTemp.ExecSQL;

  // CONTABILIDAD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  // Insertar en la tabla LibroDiario

  // obtener el numero de asiento
  Q.SQL.Text := 'Select Max(ASIENTO) From "LibroDiario"';
  Q.Open;
  i := Q.Fields[0].AsInteger + 1;
  Q.Close;

  if strtofloat(TotalEdit.Text) > 0.04 then // COMISION COBRADOR
  begin
    // renglon  - COMISION VENDEDOR A PAGAR
    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' + CtaAnticipo;
    Q.Open;

    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(Fecha) + ', ' +
      QuotedStr('Pago al Vendedor ' + NombreLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', ' + TotalEdit.Text +
      ', 0, ' + QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;

    // renglon  - CAJA

    Q.SQL.Text := 'select * from "Cuenta" where "Cuenta".CODIGO=' +
      DM.ConfigQuery.FieldByName('CtaCaja').AsString;
    Q.Open;
    QTemp.SQL.Text :=
      'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'
      + ' Values ' + '( ' + IntToStr(i) + ', ' + QuotedStr(Fecha) + ', ' +
      QuotedStr('Pago al Vendedor ' + NombreLabel.Caption + '') + ', ' +
      QuotedStr(Q.FieldByName('Jerarquia').AsString) + ', ' +
      QuotedStr(Q.FieldByName('DESCRIPCION').AsString) + ', 0, ' +
      TotalEdit.Text + ', ' + QuotedStr(Oculto) + ' )';
    QTemp.ExecSQL;
  end;

  // CONTABILIDAD------------------------------------------------------------------------------
  QTemp.Transaction.CommitRetaining;
  if CheckBox1.Checked = True then
  begin
    ImprimirDataModule := TImprimirDataModule.Create(self);
    ImprimirDataModule.SImpr('SELECT * FROM "RendidoVendedor"' +
      ' INNER JOIN "Vendedor" ON ("RendidoVendedor".VENDEDOR = "Vendedor".CODIGO)'
      + ' WHERE "RendidoVendedor".CODIGO =' + Tabla.FieldByName('Codigo')
      .AsString, 'PagoVendedor');
    ImprimirDataModule.Free;
  end;
  VerButton.Click;
end;

procedure TPagoVendedorForm.VendedorBitBtnClick(Sender: TObject);
begin
  BuscarVendedorForm := TBuscarVendedorForm.Create(self);
  try
    BuscarVendedorForm.ShowModal;
  finally
    Edit1.Text := BuscarVendedorForm.Tabla.FieldByName('Codigo').AsString;
    NombreLabel.Caption := BuscarVendedorForm.Tabla.FieldByName
      ('Nombre').AsString;
    CtaNombre := BuscarVendedorForm.Tabla.FieldByName('CtaNombre').AsString;
    CtaAnticipo := BuscarVendedorForm.Tabla.FieldByName('CtaAnticipo').AsString;
    BuscarVendedorForm.Free;
  end;
  VerButton.Click;
end;

procedure TPagoVendedorForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TPagoVendedorForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(self);
  DM.ConfigQuery.Open;
end;

procedure TPagoVendedorForm.FormShow(Sender: TObject);
begin
  FechaDateTimePicker.DateTime := Now;
  VendedorBitBtn.Click;
end;

procedure TPagoVendedorForm.VerButtonClick(Sender: TObject);
var
  i: integer;
begin
  Tabla.SQL.Text :=
    'Select * From "RendidoVendedor" Where ("RendidoVendedor".Vendedor=' +
    Edit1.Text + ') AND ("RendidoVendedor".PAGADO<>''SI'')';
  Tabla.Open;
  // for i:=1 to Tabla.RecordCount do
  // begin
  TotalEdit.Text := Format('%8.2f',
    [strtofloat(TotalEdit.Text) + Tabla.FieldByName('Importe').AsFloat]);
  // end;
  PagarButton.SetFocus;
end;

end.
