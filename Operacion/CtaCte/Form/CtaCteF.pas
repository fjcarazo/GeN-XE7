unit CtaCteF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, OperacionDM, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls,
  DataModule,
  ExtCtrls, IBCustomDataSet, IBQuery, jpeg, ImprimirDM;

type
  TCtaCteForm = class(TForm)
    DS: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label3: TLabel;
    GerenteLabel: TLabel;
    NombreLabel: TLabel;
    Label1: TLabel;
    clienteEdit: TEdit;
    BuscarBitBtn: TBitBtn;
    Panel1: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    CancelarBitBtn: TBitBtn;
    SaldoDBEdit: TDBEdit;
    ImprimirBitBtn: TBitBtn;
    Tabla: TIBQuery;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CancelarBitBtnClick(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Pago;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    CtaNombre: string;
    Entrega, SubTotal, Impuesto, Total: Double;
    { Public declarations }
  end;

var
  CtaCteForm: TCtaCteForm;

implementation

uses UFBuscaCliente, Entrega, UFFormaPago;

{$R *.dfm}

procedure TCtaCteForm.Pago;
begin
  OperacionDataModule := TOperacionDataModule.Create(self);
  SubTotal := 0;
  Impuesto := 0;
  if SaldoDBEdit.Text = '' then
    SaldoDBEdit.Text := '0';
  Total := StrToFloat(SaldoDBEdit.Text);
  FFormaPago := TFFormaPago.Create(self);
  FFormaPago.Valores(SubTotal, Impuesto, Total);
  try
    FFormaPago.ShowModal;
  finally
    OperacionDataModule.CtaCte('CLIENTE', clienteEdit.Text, CtaNombre,
      FFormaPago.Pagado, StrToFloat(FFormaPago.FECheque.Text),
      StrToFloat(FFormaPago.ChequeTerceroEdit.Text),
      StrToFloat(FFormaPago.FEContado.Text),
      StrToFloat(FFormaPago.FETarjeta.Text), FFormaPago.Saldo);
    FFormaPago.Free;
  end;
  OperacionDataModule.Free;
  Close;
end;

procedure TCtaCteForm.BuscarBitBtnClick(Sender: TObject);
begin
  FBuscaCliente := TFBuscaCliente.Create(self);
  try
    FBuscaCliente.ShowModal;
  finally
    clienteEdit.Text := FBuscaCliente.Tabla.FieldByName('CODIGO').AsString;
    Tabla.SQL.Text := 'SELECT ' + ' "CtaCte".PROVEEDOR,' + ' "CtaCte".SALDO,' +
      ' "CtaCte".CUOTAS,' + ' "CtaCte".RENDIDAS,' + ' "CtaCte".DESCUENTO,' +
      ' "CtaCte".INTERES,' + ' "CtaCte".COBRADOR,' + ' "CtaCte".OPERACION,' +
      ' "CtaCte".DETALLE,' + ' "CtaCte".ARTICULO,' + ' "CtaCte".COBRANZA,' +
      ' "CtaCteItem".CUOTA,' + ' "CtaCteItem".IMPORTE,' +
      ' "CtaCteItem".PAGADO,' + ' "CtaCteItem".VENCE,' + ' "Cliente".NOMBRE,' +
      ' "Cliente".TITULAR,' + ' "Cliente".DIRECCION,' +
      ' "Cliente".DIRECCIONCOMERCIAL,' + ' "Cliente".PAIS,' +
      ' "Cliente".PROVINCIA,' + ' "Cliente".DEPARTAMENTO,' +
      ' "Cliente".CIUDAD,' + ' "Cliente".BARRIO,' + ' "Cliente".CP,' +
      ' "Cliente".CODIGOAREA,' + ' "Cliente".CELULAR,' + ' "Cliente".TELEFONO,'
      + ' "Cliente".EXTENCION,' + ' "Cliente".FAX,' + ' "Cliente".EMAIL,' +
      ' "Cliente".TERMINOS,' + ' "Cliente".VENDEDOR,' + ' "Cliente".PRECIO,' +
      ' "Cliente".SUSPENDIDO,' + ' "Cliente".EXCENTO,' +
      ' "Cliente".LIMITECREDITO,' + ' "Cliente".NOTAS,' +
      ' "Cliente".DIASCREDITO,' + ' "Cliente".DOCUMENTO,' + ' "Cliente".CUIT,' +
      ' "Cliente".IIBB,' + ' "Cliente".RUBRO,' + ' "Cliente".IVA,' +
      ' "Cliente".MSN,' + ' "Cliente".ALMANAQUES,' + ' "Cliente".PROMOCIONES,' +
      ' "Cliente".GARANTE,' + ' "Cliente".ZONA,' + ' "Cliente".CTA,' +
      ' "Cliente".CTANOMBRE,' + ' "Cliente".CTATIPO,' +
      ' "Cliente".CTAANTICIPO,' + ' "Cliente".PAGARE,' + ' "CtaCte".CLIENTE,' +
      ' "CtaCteItem".FECHA,' + ' "CtaCteItem".DESCRIPCION' + ' FROM' +
      ' "CtaCte"' +
      ' INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
      + ' INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
      ' WHERE "CtaCte".CLIENTE=' + clienteEdit.Text;
    Tabla.Open;
    NombreLabel.Caption := FBuscaCliente.Tabla.FieldByName('NOMBRE').AsString;
    GerenteLabel.Caption := FBuscaCliente.Tabla.FieldByName('TITULAR').AsString;
    // CUENTA
    CtaNombre := FBuscaCliente.Tabla.FieldByName('CTANOMBRE').AsString;
    FBuscaCliente.Free;
  end;
end;

procedure TCtaCteForm.FormShow(Sender: TObject);
begin
  BuscarBitBtn.Click;
end;

procedure TCtaCteForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(self);
end;

procedure TCtaCteForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F8 then
    Pago;
  IF Key = VK_F9 then
    ImprimirBitBtn.Click;
end;

procedure TCtaCteForm.CancelarBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TCtaCteForm.Image1Click(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.CSV(Tabla.SQL.Text, 'CTACTE');
  ImprimirDataModule.Free;
end;

procedure TCtaCteForm.ImprimirBitBtnClick(Sender: TObject);
begin
  {
    QTemp.SQL.Text:='SELECT "'+EmpresaQuery.FieldByName('Nombre').AsString+'" As Empresa, * FROM CtaCte INNER JOIN (CtaCteItem INNER JOIN Clientes ON CtaCteItem.CodCliente = Clientes.CodCliente) ON CtaCte.CodCliente = CtaCteItem.CodCliente WHERE CtaCte.CodCliente='+CodCliente;
    QTemp.Open;
    frxReport1.ShowReport(True);
    QTemp.Close;
  }
end;

procedure TCtaCteForm.Label13Click(Sender: TObject);
begin
  Pago;
end;

end.
