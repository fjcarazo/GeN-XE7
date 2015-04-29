unit Pagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls,
  DataModule,
  ExtCtrls;

type
  TPagosForm = class(TForm)
    PagosADOQuery: TADOQuery;
    PagosDataSource: TDataSource;
    QTemp: TADOQuery;
    DBGrid1: TDBGrid;
    q: TADOQuery;
    Panel3: TPanel;
    ProveedorLabel: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    ServicioBitBtn: TBitBtn;
    Panel1: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    CancelarBitBtn: TBitBtn;
    SaldoDBEdit: TDBEdit;
    ImprimirBitBtn: TBitBtn;
    PagosADOQueryID: TAutoIncField;
    PagosADOQueryPagosCodImpuestoServicio: TIntegerField;
    PagosADOQueryFecha: TDateTimeField;
    PagosADOQueryHora: TDateTimeField;
    PagosADOQueryLinea: TIntegerField;
    PagosADOQueryDetalle: TWideStringField;
    PagosADOQueryImporte: TFloatField;
    PagosADOQueryImpuestosServiciosCodImpuestoServicio: TIntegerField;
    PagosADOQueryNombre: TWideStringField;
    PagosADOQueryDireccion1: TWideStringField;
    PagosADOQueryDireccion2: TWideStringField;
    PagosADOQueryPais: TWideStringField;
    PagosADOQueryProvincia: TWideStringField;
    PagosADOQueryDepartamento: TWideStringField;
    PagosADOQueryCiudad: TWideStringField;
    PagosADOQueryCodigoPostal: TWideStringField;
    PagosADOQueryCodigoArea: TWideStringField;
    PagosADOQueryCelular: TWideStringField;
    PagosADOQueryTelefono: TWideStringField;
    PagosADOQueryExtencion: TWideStringField;
    PagosADOQueryFax: TWideStringField;
    PagosADOQueryEmail: TWideStringField;
    PagosADOQueryTerminos: TWideStringField;
    PagosADOQueryDiasCredito: TIntegerField;
    PagosADOQueryNotas: TWideMemoField;
    PagosADOQueryCUIT: TWideStringField;
    PagosADOQueryIVA: TWideStringField;
    PagosADOQueryContacto: TWideStringField;
    PagosADOQueryGerente: TWideStringField;
    PagosADOQueryIngresoBruto: TWideStringField;
    PagosADOQueryDocumento: TWideStringField;
    PagosADOQueryRubro: TWideStringField;
    PagosADOQueryMessenger: TWideStringField;
    PagosADOQueryCtaNombre: TIntegerField;
    PagosADOQueryCtaTipo: TIntegerField;
    PagosADOQueryCtaAnticipo: TIntegerField;
    PagosADOQueryCtaIIBB: TIntegerField;
    PagosADOQueryPersona: TIntegerField;
    PagosADOQueryPagare: TBooleanField;
    PagosADOQueryCuenta: TIntegerField;
    EmpresaQuery: TADOQuery;
    ConfigQuery: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CancelarBitBtnClick(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure ServicioBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Codigo, CtaNombre, CtaIIBB, CtaAnticipo, CtaTipo: string;
    Entrega, SubTotal, Impuesto, Total: Double;
    Linea: Integer;
    New: Boolean;
    procedure Pago;
    { Public declarations }
  end;

var
  PagosForm: TPagosForm;

implementation

uses Entrega, BuscarImpuestosServicios, UFFormaPago;

{$R *.dfm}

procedure TPagosForm.Pago;
var
  numfact, c, i, OrdTrans: Integer;
  Fecha, FechaVence, iv: String;
  FPagoOK: Boolean;
  MntContado, MntCheque, MntCheque3ro, NroCheque, DetCheque, DiaCheque,
    MntTarjeta, NroTarjeta, DetTarjeta, MntOtros, Saldo, Pagado: String;
  BalanceAnterior, BalanceTotal: Double;
  Tipo: char;
begin
  SubTotal := 0;
  Impuesto := 0;
  Total := 0; // -StrToFloat(SaldoDBEdit.Text);
  FFormaPago := TFFormaPago.Create(self);
  FFormaPago.Proveedor := True;
  FFormaPago.Valores(SubTotal, Impuesto, Total);
  try
    FFormaPago.ShowModal;
  finally
    FPagoOK := FFormaPago.OK;
    MntContado := Format('%8.2f', [StrToFloat(FFormaPago.FEContado.Text)]);
    MntCheque := Format('%8.2f', [StrToFloat(FFormaPago.FECheque.Text)]);
    MntCheque3ro := Format('%8.2f',
      [StrToFloat(FFormaPago.ChequeTerceroEdit.Text)]);
    { NroCheque := FFormaPago.Edit1.Text;
      DetCheque := FFormaPago.Edit3.Text;
      DiaCheque := FFormaPago.Edit5.Text;
      MntTarjeta := FFormaPago.FETarjeta.Text;
      NroTarjeta := FFormaPago.Edit2.Text;
      DetTarjeta := FFormaPago.Edit4.Text; }
    MntOtros := Format('%8.2f', [StrToFloat(FFormaPago.FEOtro.Text)]);
    Saldo := Format('%8.2f', [FFormaPago.Saldo]);
    Pagado := Format('%8.2f', [FFormaPago.Pagado]);
    FFormaPago.Free;
  end;
  if FPagoOK = True then
  begin
    FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
    Fecha := DateToStr(now);
    // Obtener el numero de linea
    QTemp.SQL.Text :=
      'Select Max(Linea) From Pagos where CodImpuestoServicio = ' + Codigo;
    QTemp.Open;
    If QTemp.RecordCount = 0 then
      Linea := 1
    else
      Linea := QTemp.Fields[0].AsInteger + 1;
    QTemp.Close;

    // Iniciar la Transaccion
    { DM.AC1.BeginTrans; }
    try

      // Insertar en la tabla de Pagos
      begin
        QTemp.SQL.Text :=
          'Insert Into Pagos (CodImpuestoServicio, Linea, Fecha, Hora, Detalle, Importe) Values'
          + '( ' + Codigo + ',' + IntToStr(Linea) + ',' + QuotedStr(Fecha) + ','
          + QuotedStr(TimeToStr(Time)) + ',''Entrega de Dinero'',' +
          Pagado + ')';
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de Cheque
      if NroCheque <> '' then
      begin
        QTemp.SQL.Text :=
          'Insert Into Cheque (Numero, Detalle, MntCheque, Fecha, Dias) Values'
          + ' (' + NroCheque + ', ' + QuotedStr(DetCheque) + ', ' + MntCheque +
          ', ' + QuotedStr(Fecha) + ', ' + DiaCheque + ')';
        QTemp.ExecSQL;
      end;

      // Insertar en la  Caja
      if StrToFloat(MntCheque) > 0 then
      begin
        QTemp.SQL.Text :=
          'Insert Into Caja (Detalle, Haber, Fecha, Hora) Values' + ' (' +
          QuotedStr('Cheque') + ', ' + MntCheque + ', ' + QuotedStr(Fecha) +
          ', ' + QuotedStr(TimeToStr(Time)) + ')';
        QTemp.ExecSQL;
      end;

      // Insertar en la  Caja
      if StrToFloat(MntContado) > 0 then
      begin
        QTemp.SQL.Text :=
          'Insert Into Caja (Detalle, Haber, Fecha, Hora) Values' + ' (' +
          QuotedStr('Efectivo') + ', ' + MntContado + ', ' + QuotedStr(Fecha) +
          ', ' + QuotedStr(TimeToStr(Time)) + ')';
        QTemp.ExecSQL;
      end;

      // Insertar en la tabla de Tarjeta
      if NroTarjeta <> '' then
      begin
        QTemp.SQL.Text :=
          'Insert Into Tarjeta (Numero, Detalle, CodFactura, MntTarjeta, Fecha) Values'
          + ' (' + NroTarjeta + ', ' + QuotedStr(DetTarjeta) + ', ' + MntTarjeta
          + ', ' + QuotedStr(Fecha) + ')';
        QTemp.ExecSQL;
      end;

      // --CONTABILIDAD

      // Insertar en la tabla LibroDiario
      // obtener el numero de asiento
      q.SQL.Text := 'Select Max(Asiento) From LibroDiario';
      q.Open;
      i := q.Fields[0].AsInteger + 1;
      q.Close;
      // obtener el numero de codigo
      q.SQL.Text := 'Select Max(Codigo) From LibroDiario';
      q.Open;
      c := q.Fields[0].AsInteger;
      q.Close;

      // renglon  - SERVICIOS
      q.SQL.Text := 'select * from Cuenta where codigo=' + CtaNombre;
      q.Open;
      c := c + 1;
      QTemp.SQL.Text :=
        'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
        + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
        QuotedStr(Fecha) + ', ' +
        QuotedStr('PAGO DE SERVICIO ' + (ProveedorLabel.Caption)) + ', ' +
        QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
        QuotedStr(q.FieldByName('Cuenta').AsString) + ', ' + FloatToStr(Total) +
        ', 0 ' + ' )';
      QTemp.ExecSQL;

      if StrToFloat(Saldo) < 0 then // PAGO POR ADELANTADO
      begin
        // renglon  - ANTICIPO A PROVEEDORES
        q.SQL.Text := 'select * from Cuenta where codigo=' + CtaAnticipo;
        q.Open;
        c := c + 1;
        QTemp.SQL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' +
          QuotedStr('PAGO DE SERVICIO ' + (ProveedorLabel.Caption)) + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', ' + Saldo +
          ', 0 ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntCheque3ro) > 0.04 then // PAGO CON CHEQUE DE TERCEROS
      begin
        // renglon  - VALORES AL COBRO
        c := c + 1;
        q.SQL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaValorAlCobro').AsString;
        q.Open;
        QTemp.SQL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' +
          QuotedStr('PAGO DE SERVICIO ' + (ProveedorLabel.Caption)) + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + MntCheque3ro +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntCheque) > 0.04 then // PAGO CON CHEQUE PROPIO
      begin
        // renglon  - BANCO XX CUENTA CORRIENTE
        c := c + 1;
        q.SQL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaBanco').AsString;
        q.Open;
        QTemp.SQL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' +
          QuotedStr('PAGO DE SERVICIO ' + (ProveedorLabel.Caption)) + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + (MntCheque) +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      if StrToFloat(MntContado) > 0.04 then // PAGO CON CHEQUE PROPIO
      begin
        // renglon  - CAJA
        c := c + 1;
        q.SQL.Text := 'select * from Cuenta where codigo=' +
          ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        QTemp.SQL.Text :=
          'Insert Into LibroDiario ( Codigo, Asiento, Fecha, Leyenda, Jerarquia, Cuenta, Debe, Haber)'
          + ' Values ' + '( ' + IntToStr(c) + ', ' + IntToStr(i) + ', ' +
          QuotedStr(Fecha) + ', ' +
          QuotedStr('PAGO DE SERVICIO ' + (ProveedorLabel.Caption)) + ', ' +
          QuotedStr(q.FieldByName('Jerarquia').AsString) + ', ' +
          QuotedStr(q.FieldByName('Cuenta').AsString) + ', 0, ' + (MntContado) +
          ' ' + ' )';
        QTemp.ExecSQL;
      end;

      q.Close;

      // Completa la Transaccion
      { DM.AC1.CommitTrans; }

      // Imprime la factura si el usuario quiere
      { FImprimirFactura:=TFImprimirFactura.Create(self);
        FImprimirFactura.numfact := numfact;
        FImprimirFactura.Tipo := Tipo;
        try
        FImprimirFactura.ShowModal;
        finally
        FImprimirFactura.Free;
        end; }

    except
      on E: Exception do
      begin
        { DM.AC1.RollbackTrans; }
        MessageDlg
          ('No fue posible completar la transacción, por favor contacte al administrador',
          mtError, [mbOK], 0);
      end;
    end;
    PagosADOQuery.Close;
    PagosADOQuery.Open;
    CancelarBitBtn.SetFocus;
  end;
end;

procedure TPagosForm.ServicioBitBtnClick(Sender: TObject);
begin
  BuscarImpuestosServiciosForm := TBuscarImpuestosServiciosForm.Create(self);
  try
    BuscarImpuestosServiciosForm.ShowModal;
  finally
    If BuscarImpuestosServiciosForm.Cod_ImpuestosServicios <> '' then
      Codigo := BuscarImpuestosServiciosForm.Cod_ImpuestosServicios
    else
      Codigo := '0';
    PagosADOQuery.SQL.Text :=
      'SELECT * FROM Pagos INNER JOIN ImpuestosServicios ON Pagos.CodImpuestoServicio = ImpuestosServicios.CodImpuestoServicio WHERE ImpuestosServicios.CodImpuestoServicio='
      + Codigo;
    PagosADOQuery.Open;
    CtaNombre := BuscarImpuestosServiciosForm.ImpuestosServiciosQuery.
      FieldByName('CtaNombre').AsString;
    CtaTipo := BuscarImpuestosServiciosForm.ImpuestosServiciosQuery.FieldByName
      ('CtaTipo').AsString;
    CtaIIBB := BuscarImpuestosServiciosForm.ImpuestosServiciosQuery.FieldByName
      ('CtaIIBB').AsString;
    CtaAnticipo := BuscarImpuestosServiciosForm.ImpuestosServiciosQuery.
      FieldByName('CtaAnticipo').AsString; // CUENTA servicio
    BuscarImpuestosServiciosForm.Free;
  end;
end;

procedure TPagosForm.FormShow(Sender: TObject);
begin
  ServicioBitBtn.Click;
  // CodCliente:='0';
end;

procedure TPagosForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(self);
  EmpresaQuery.Open;
  ConfigQuery.Open;
end;

procedure TPagosForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F8 then
    Pago;
  IF Key = VK_F9 then
    ImprimirBitBtn.Click;
end;

procedure TPagosForm.CancelarBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TPagosForm.ImprimirBitBtnClick(Sender: TObject);
begin
  QTemp.SQL.Text := 'SELECT "' + EmpresaQuery.FieldByName('Nombre').AsString +
    '" As Empresa, * FROM Pagos INNER JOIN ImpuestosServicios ON Pagos.CodImpuestoServicio = ImpuestosServicios.CodImpuestoServicio WHERE ImpuestosServicios.CodImpuestoServicio='
    + Codigo;
  QTemp.Open;
  // frxReport1.ShowReport(True);
  QTemp.Close;
end;

end.
