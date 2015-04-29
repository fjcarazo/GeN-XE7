unit ListarPedidoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, DataModule,
  IBCustomDataSet, IBQuery;

type
  TListarPedidoForm = class(TForm)
    Panel1: TPanel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn8: TBitBtn;
    Edit3: TEdit;
    Label16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    StringGrid1: TStringGrid;
    Tabla: TIBQuery;
    Q: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListarPedidoForm: TListarPedidoForm;

implementation

uses BuscarVendedor;

{$R *.dfm}

procedure TListarPedidoForm.BitBtn1Click(Sender: TObject);
var
  i: integer;
begin
  StringGrid1.Cells[0, 1] := '';
  StringGrid1.Cells[1, 1] := '';
  StringGrid1.Cells[2, 1] := '';
  StringGrid1.RowCount := 1;
  Tabla.SQL.Text :=
    'SELECT "OperacionItem".CODIGO, "OperacionItem".DESCRIPCION, Sum("OperacionItem".CANTIDAD) as Cant'
    + ' FROM "OperacionItem"' + ' INNER JOIN "Operacion"' +
    ' ON "Operacion".OPERACION = "OperacionItem".OPERACION' +
    ' WHERE ("OperacionItem".TIPO= ''P'')' +
  // ' AND ("Operacion".Pasivo = False)'+
    ' AND ("Operacion".VENDEDOR = ' + Edit3.Text + ')' +
    ' AND ("Operacion".FECHA >= #' + DateToStr(DateTimePicker1.Date) + '#)' +
    ' AND ("Operacion".FECHA <= #' + DateToStr(DateTimePicker2.Date) + '#)' +
    ' GROUP BY "OperacionItem".CODIGO, "OperacionItem".DESCRIPCION';
  Tabla.Open;
  for i := 1 to Tabla.RecordCount do
  begin
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    StringGrid1.Cells[0, i] := Tabla.FieldByName('CODIGO').AsString;
    StringGrid1.Cells[1, i] := Tabla.FieldByName('Cant').AsString;
    StringGrid1.Cells[2, i] := Tabla.FieldByName('DESCRIPCION').AsString;
    Tabla.Next;
  end;
  if StringGrid1.RowCount = 1 then
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
  StringGrid1.FixedRows := 1;
end;

procedure TListarPedidoForm.BitBtn2Click(Sender: TObject);
var
  i: integer;
begin
  // RvProject1.ProjectFile:=Path+'Report\Pedidos.rav';
  // RvProject1.Execute;
  // Iniciar la Transaccion
  Q.SQL.Text :=
    'SELECT "OperacionItem".CODIGO, "OperacionItem".DESCRIPCION, Sum("OperacionItem".CANTIDAD) as Cant, "OperacionItem".OPERACION'
    + ' FROM "OperacionItem"' + ' INNER JOIN "Operacion"' +
    ' ON "Operacion".OPERACION = "OperacionItem".OPERACION' +
    ' WHERE ("Operacion".TIPO= ''P'')' +
  // ' AND ("Operacion".Pasivo = False)'+
    ' AND ("Operacion".VENDEDOR = ' + Edit3.Text + ')' +
    ' AND ("Operacion".FECHA >= #' + DateToStr(DateTimePicker1.Date) + '#)' +
    ' AND ("Operacion".FECHA <= #' + DateToStr(DateTimePicker2.Date) + '#)' +
    ' GROUP BY "OperacionItem".OPERACION, "OperacionItem".CODIGO, "OperacionItem".DESCRIPCION';
  Q.Open;
  for i := 1 to Q.RecordCount do
  begin
    Tabla.SQL.Text := 'Update "Operacion" Set TIPO = ''L'' Where ' +
      'OPERACION = ' + Q.FieldByName('OPERACION').AsString;;
    Tabla.ExecSQL;
    Tabla.SQL.Text := 'Update "OperacionItem" Set TIPO = ''L'' Where ' +
      'OPERACION = ' + Q.FieldByName('OPERACION').AsString;;
    Tabla.ExecSQL;
    Q.Next;
  end;
  // Completa la Transaccion
  Tabla.Transaction.CommitRetaining;
end;

procedure TListarPedidoForm.FormShow(Sender: TObject);
begin
  DateTimePicker2.Date := Date;
  StringGrid1.Cells[0, 0] := 'CODIGO';
  StringGrid1.Cells[1, 0] := 'CANTIDAD';
  StringGrid1.Cells[2, 0] := 'DETALLE';
end;

procedure TListarPedidoForm.BitBtn8Click(Sender: TObject);
begin
  BuscarVendedorForm := TBuscarVendedorForm.Create(self);
  try
    BuscarVendedorForm.ShowModal;
  finally
    Edit3.Text := BuscarVendedorForm.Tabla.FieldByName('CODIGO').AsString;
    BuscarVendedorForm.Free;
  end;
end;

procedure TListarPedidoForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(self);
end;

procedure TListarPedidoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F3 then
    BitBtn8.Click; // CLIENTES
end;

end.
