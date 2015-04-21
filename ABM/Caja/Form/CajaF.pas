unit CajaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  IBCustomDataSet, IBQuery;

type
  TABMCajaForm = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Debe: TLabel;
    Haber: TLabel;
    Saldo: TLabel;
    Panel2: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    CancelarBitBtn: TBitBtn;
    DetalleBitBtn: TBitBtn;
    FechaBitBtn: TBitBtn;
    DBNavigator1: TDBNavigator;
    DataSource: TDataSource;
    EmpresaQuery: TIBQuery;
    Query: TIBQuery;
    QTemp: TIBQuery;
    procedure FechaBitBtnClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DetalleBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure CalculaTotales;
    function Procesar(tipo: String):String;
    procedure CancelarBitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ABMCajaForm: TABMCajaForm;

implementation

uses IngresoDineroF, DataModule;

{$R *.dfm}

procedure TABMCajaForm.CalculaTotales;
VAR i: INTEGER;
begin
      Debe.Caption:='0';
      Haber.Caption:='0';
      Saldo.Caption:='0';

      QTemp.SQL.Text:='SELECT Debe - Haber As SubTotal,"'+EmpresaQuery.FieldByName('Nombre').AsString+'" As Empresa,* FROM "Caja"';
      QTemp.Open;

      for i:=1 to QTemp.RecordCount do
  begin
      Debe.Caption := FloatToStr(StrToFloat(Debe.Caption) + QTemp.FieldByName('Debe').AsFloat);
      Haber.Caption := FloatToStr(StrToFloat(Haber.Caption) + QTemp.FieldByName('Haber').AsFloat);
      Saldo.Caption := FloatToStr(StrToFloat(Debe.Caption) - StrToFloat(Haber.Caption));
      QTemp.Next;
  end;
end;

function TABMCajaForm.Procesar(tipo: String):String;
var numfact, i, OrdTrans : integer;
    Fecha, FechaVence, iv: String;
    FPagoOK : Boolean;
    Detalle, MntContado, MntCheque, NroCheque, DetCheque, DiaCheque, MntTarjeta, NroTarjeta, DetTarjeta, MntOtros, Saldo, Pagado :String;
    BalanceAnterior, BalanceTotal, SubTotal, Impuesto, Total : Double;
begin
SubTotal:=0;
Impuesto:=0;
      IngresoDineroForm:=TIngresoDineroForm.Create(self);
      IngresoDineroForm.Valores(SubTotal, Impuesto, Total);
      IF tipo = 'Retiro' then IngresoDineroForm.Retiro := True;
      try
         IngresoDineroForm.ShowModal;
      finally
         FPagoOK    := IngresoDineroForm.OK;
         MntContado := IngresoDineroForm.FEContado.Text;
         MntCheque  := IngresoDineroForm.FECheque.Text;
         NroCheque  := IngresoDineroForm.Edit1.Text;
         DetCheque  := IngresoDineroForm.Edit3.Text;
         DiaCheque  := IngresoDineroForm.Edit5.Text;
         MntTarjeta := IngresoDineroForm.FETarjeta.Text;
         NroTarjeta := IngresoDineroForm.Edit2.Text;
         DetTarjeta := IngresoDineroForm.Edit4.Text;
         MntOtros   := IngresoDineroForm.FEOtro.Text;
         Detalle    := IngresoDineroForm.DetalleEdit.Text;
         Saldo      := FloatToStr(IngresoDineroForm.Saldo);
         Pagado     := FloatToStr(IngresoDineroForm.Pagado);
         IngresoDineroForm.Free;
      end;
 if FPagoOK then
 begin
  // Iniciar la Transaccion
     DM.Transaccion.StartTransaction;
     try

       // Insertar en la tabla de Cheque
          if NroCheque <> '' then
          begin
           QTemp.SQL.Text := 'Insert Into "Cheque" (Numero, Detalle, CodFactura, MntCheque, Fecha, Dias) Values'+
           ' ('+NroCheque+', '+QuotedStr(DetCheque)+', '+IntToStr(NumFact)+', '+MntCheque+', '+DateToStr(Date)+', '+DiaCheque+')';
           QTemp.ExecSQL;
           end;

  // Insertar en la tabla de Tarjeta
          if NroTarjeta <> '' then
          begin
           QTemp.SQL.Text := 'Insert Into "Tarjeta" (Numero, Detalle, CodFactura, MntTarjeta, Fecha) Values'+
           ' ('+NroTarjeta+', '+QuotedStr(DetTarjeta)+', '+IntToStr(NumFact)+', '+MntTarjeta+', '+DateToStr(Date)+')';
           QTemp.ExecSQL;
           end;

      IF tipo = 'Retiro' then
      begin

  // Insertar en la Cuenta Caja
          if StrToFloat(MntCheque) > 0 then
          begin
           QTemp.SQL.Text := 'Insert Into "Caja" (Detalle, Haber, Fecha, Hora) Values'+
           ' ('+QuotedStr('[Cheque] '+Detalle)+', '+MntCheque+', '+QuotedStr(DateToStr(Date))+', '+QuotedStr(TimeToStr(Time))+')';
           QTemp.ExecSQL;
           end;

  // Insertar en la Cuenta Caja
          if StrToFloat(MntContado) > 0 then
          begin
           QTemp.SQL.Text := 'Insert Into "Caja" (Detalle, Haber, Fecha, Hora) Values'+
           ' ('+QuotedStr('[Efectivo] '+Detalle)+', '+MntContado+', '+QuotedStr(DateToStr(Date))+', '+QuotedStr(TimeToStr(Time))+')';
           QTemp.ExecSQL;
           end;
      end
      else
      begin
  // Insertar en la Cuenta Caja
          if StrToFloat(MntCheque) > 0 then
          begin
           QTemp.SQL.Text := 'Insert Into "Caja" (Detalle, Debe, Fecha, Hora) Values'+
           ' ('+QuotedStr('[Cheque] '+Detalle)+', '+MntCheque+', '+QuotedStr(DateToStr(Date))+', '+QuotedStr(TimeToStr(Time))+')';
           QTemp.ExecSQL;
           end;

  // Insertar en la Cuenta Caja
          if StrToFloat(MntContado) > 0 then
          begin
           QTemp.SQL.Text := 'Insert Into "Caja" (Detalle, Debe, Fecha, Hora) Values'+
           ' ('+QuotedStr('[Efectivo] '+Detalle)+', '+MntContado+', '+QuotedStr(DateToStr(Date))+', '+QuotedStr(TimeToStr(Time))+')';
           QTemp.ExecSQL;
           end;
        end;
  // Completa la Transaccion
        DM.Transaccion.Commit;

   except
        on E:Exception do
        begin
           DM.Transaccion.RollbackRetaining;
           //MessageDlg('No fue posible completar la transacción, por favor contacte al administrador',mtError,[mbOK],0);
        end;
   end;
    Query.Close;
    Query.Open;
    CalculaTotales;
    CancelarBitBtn.SetFocus;
  end;
end;

procedure TABMCajaForm.CancelarBitBtnClick(Sender: TObject);
begin
close;
end;

procedure TABMCajaForm.DetalleBitBtnClick(Sender: TObject);
begin
Query.SQL.Text:='SELECT * FROM "Caja" Order by Detalle DESC';
Query.Open;
end;

procedure TABMCajaForm.FechaBitBtnClick(Sender: TObject);
begin
Query.SQL.Text:='SELECT * FROM "Caja" Order by Fecha DESC';
Query.Open;
end;

procedure TABMCajaForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
EmpresaQuery.Open;
CalculaTotales;
Query.Open;
end;

procedure TABMCajaForm.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
IF Key = VK_F4 then Procesar('Ingresar');
IF Key = VK_F5 then Procesar('Retiro');
//IF Key = VK_F9 then ImprimirBitBtn.Click;
end;

procedure TABMCajaForm.QueryAfterDelete(DataSet: TDataSet);
begin
CalculaTotales;
end;

procedure TABMCajaForm.QueryAfterPost(DataSet: TDataSet);
begin
CalculaTotales;
end;

end.
