unit RendicionClienteF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, Buttons, ADODB, DataModule,
  ExtCtrls, IBCustomDataSet, IBQuery, OleCtrls, SHDocVw;

type
  TRendicionClienteForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    TotalAplicadoEdit: TEdit;
    Button3: TButton;
    Button4: TButton;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label5: TLabel;
    ClienteLabel: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FechaDateTimePicker: TDateTimePicker;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    Q: TIBQuery;
    Query: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Quicksort(Grid:TStringGrid; var List:array of integer;
      min, max,sortcol,datatype: Integer);
    procedure Sortgrid(Grid : TStringGrid; sortcol,datatype:integer);
    procedure StringGrid1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  CtaNombre, fecha, Oculto :string;
  procedure DetalleCtaCte;
    { Public declarations }
  end;

var
  RendicionClienteForm: TRendicionClienteForm;

implementation

uses UFBuscaCliente, BuscarPlanFacturado;

{$R *.dfm}

Procedure GridRemoveRow(StrGrid: TStringGrid; DelRow: Integer);
Var Row: Integer;
begin
  If DelRow <= StrGrid.RowCount then
  Begin
    If (DelRow = StrGrid.RowCount-1) AND (DelRow = 1) then
    begin
       StrGrid.Rows[DelRow].Clear;
       StrGrid.Cells[3,1] := '0';
       StrGrid.Cells[4,1] := '0.00';
       StrGrid.Cells[5,1] := '0.00';
    end
    else if DelRow = StrGrid.RowCount - 1 then StrGrid.RowCount := StrGrid.RowCount-1
         else
         begin
            For Row := DelRow To StrGrid.RowCount-2 do
            StrGrid.Rows[Row].Assign(StrGrid.Rows[Row+1]);
            StrGrid.RowCount := StrGrid.RowCount-1;
        end;
    end;
end;

procedure TRendicionClienteForm.Quicksort(Grid:TStringGrid; var List:array of integer;
    min, max,sortcol,datatype: Integer);
{List is a list of rownumbers in the grid being sorted}
var
    med_value : integer;
    hi, lo, i : Integer;

    function compare(val1,val2:string):integer;
    var
      int1,int2:integer;
      float1,float2:extended;
      errcode:integer;
    begin
      case datatype of
        0: result:=ANSIComparetext(val1,val2);
        1: begin
             int1:=strtointdef(val1,0);
             int2:=strtointdef(val2,0);
             if int1>int2 then result:=1
             else if int1<int2 then result:=-1
             else result:=0;
           end;

        2: begin
             val(val1,float1,errcode);
             if errcode<>0 then float1:=0;
             val(val2,float2,errcode);
             if errcode<>0 then float2:=0;
             if float1>float2 then result:=1
             else if float1<float2 then result:=-1
             else result:=0;
           end;
         else result:=0;
      end;
end;

begin
    {If the list has <= 1 element, it's sorted}
    if (min >= max) then Exit;
    {Pick a dividing item randomly}
    i := min + Trunc(Random(max - min + 1));
    med_value := List[i];
    List[i] := List[min]; { Swap it to the front so we can find it easily}
    {Move the items smaller than this into the left
     half of the list. Move the others into the right}
    lo := min;
    hi := max;
    while (True) do
    begin
        // Look down from hi for a value < med_value.
        while compare(Grid.cells[sortcol,List[hi]]
                             ,grid.cells[sortcol,med_value])>=0 do
        (*ANSIComparetext(Grid.cells[sortcol,List[hi]]
                             ,grid.cells[sortcol,med_value])>=0 do*)
        begin
            hi := hi - 1;
            if (hi <= lo) then Break;
        end;
        if (hi <= lo) then
        begin {We're done separating the items}
          List[lo] := med_value;
          Break;
        end;

        // Swap the lo and hi values.
        List[lo] := List[hi];
        inc(lo); {Look up from lo for a value >= med_value}
        while Compare(grid.cells[sortcol,List[lo]],
                 grid.cells[sortcol,med_value])<0 do
        begin
            inc(lo);
            if (lo >= hi) then break;
        end;
        if (lo >= hi) then
        begin  {We're done separating the items}
          lo := hi;
          List[hi] := med_value;
          break;
        end;
        List[hi] := List[lo];
    end;
    {Sort the two sublists}
    Quicksort(Grid,List, min, lo - 1,sortcol,datatype);
    Quicksort(Grid,List, lo + 1, max,sortcol,datatype);
end;

procedure TRendicionClienteForm.Sortgrid(Grid : TStringGrid; sortcol,datatype:integer);
var
   i : integer;
   tempgrid:tstringGrid;
   list:array of integer;
begin
  screen.cursor:=crhourglass;
  tempgrid:=TStringgrid.create(self);
  with tempgrid do
  begin
    rowcount:=grid.rowcount;
    colcount:=grid.colcount;
    fixedrows:=grid.fixedrows;
  end;
  with Grid do
  begin
    setlength(list,rowcount-fixedrows);
    for i:= fixedrows to rowcount-1 do
    begin
      list[i-fixedrows]:=i;
      tempgrid.rows[i].assign(grid.rows[i]);
    end;
    quicksort(Grid, list,0,rowcount-fixedrows-1,sortcol,datatype);
    for i:=0 to rowcount-fixedrows-1 do
    begin
      rows[i+fixedrows].assign(tempgrid.rows[list[i]])
    end;
    row:=fixedrows;
  end;
  tempgrid.free;
  setlength(list,0);
  screen.cursor:=crdefault;
end;


procedure TRendicionClienteForm.FormShow(Sender: TObject);
begin
StringGrid1.Cells[0,0] := 'Codigo';
StringGrid1.Cells[1,0] := 'Cuota';
StringGrid1.Cells[2,0] := 'Vencimiento';
StringGrid1.Cells[3,0] := 'Importe';
StringGrid1.Cells[4,0] := 'Pagado';
StringGrid1.Cells[5,0] := 'A pagar';
StringGrid1.Cells[6,0] := 'Nombre';
StringGrid1.Cells[7,0] := 'Plan';

FechaDateTimePicker.Date:=Date;
BitBtn1.Click;
BitBtn3.Click;
BitBtn4.Click;

end;

procedure TRendicionClienteForm.DetalleCtaCte;
var cvencidas, cpagadas, cimpagas, cxvencer, i :integer;
    ipagado, simpago :Double;
    estado, UltimoPago:string;
    upago : TDate;
begin
ipagado :=0;
simpago :=0;
cxvencer :=0;
upago :=0;
cvencidas :=0;
cpagadas :=0;
cimpagas :=0;

 Query.SQL.Text:='SELECT Cobrador.Codigo,'+
 ' CtaCte.CodCliente, CtaCte.Factura, CtaCte.Cuotas, CtaCteItem.CodFactura,'+
 ' CtaCteItem.CuotaNum, CtaCteItem.IDCtaCteItem, CtaCteItem.Vencimiento, CtaCteItem.Detalle,'+
 ' CtaCteItem.Fecha, CtaCteItem.ImporteTotalCuota, CtaCteItem.Pagado, CtaCteItem.APagar,'+
 ' Clientes.NombreCliente, Clientes.NombreTitular, Clientes.Direccion'+
 ' FROM Clientes'+
 ' INNER JOIN (Cobrador'+
 ' INNER JOIN (CtaCteItem'+
 ' INNER JOIN CtaCte'+
 ' ON CtaCteItem.CodCliente = CtaCte.CodCliente)'+
 ' ON Cobrador.Codigo = CtaCte.Cobrador)'+
 ' ON Clientes.CodCliente = CtaCte.CodCliente';
      FormatSettings.ShortDateFormat := '#yyyy/mm/dd#';
      Query.SQL.Add(' WHERE (CtaCte.Factura ='+Edit2.Text+') AND (CtaCte.CodCliente ='+Edit5.Text+') ORDER BY CtaCteItem.Vencimiento, CtaCteItem.IDCtaCteItem');
      Query.Open;
   For i := 1 to Query.RecordCount do
    begin
     if (Query.FieldByName('Vencimiento').AsDateTime) < date then cvencidas := cvencidas + 1 else cxvencer := cxvencer + 1;
     if (Query.FieldByName('APagar').AsFloat) > 0 then
      begin
      simpago := simpago + (Query.FieldByName('APagar').AsFloat);
      cimpagas := cimpagas + 1;
      end
      else
      begin
      ipagado := ipagado + (Query.FieldByName('Pagado').AsFloat);
      cpagadas := cpagadas + 1;
      upago := (Query.FieldByName('Fecha').AsDateTime);
      end;
    Query.Next;
     end;
   FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
   if cimpagas > 0 then estado:='MOROSO';
   if upago = 0 then  UltimoPago:= '' else UltimoPago:= DateToStr(upago);
   Query.SQL.Text:='SELECT Cobrador.Codigo,'+
   ' "'+inttostr(cvencidas)+'" AS CuotasVencidas,'+
   ' "'+inttostr(cpagadas)+'" AS CuotasPagadas,'+
   ' "'+inttostr(cimpagas)+'" AS CuotasImpagas,'+
   ' "'+FloatToStr(ipagado)+'" AS ImportePagado,'+
   ' "'+FloatToStr(simpago)+'" AS SaldoImpago,'+
   ' "'+inttostr(cxvencer)+'" AS CuotasPorVencer,'+
   ' "'+UltimoPago+'" AS UltimoPago,'+
   ' "'+estado+'" AS EstadoCredito,'+
   ' CtaCte.CodCliente, CtaCte.Factura, CtaCte.Cuotas, CtaCteItem.CodFactura,'+
   ' CtaCteItem.CuotaNum, CtaCteItem.IDCtaCteItem, CtaCteItem.Vencimiento, CtaCteItem.Detalle,'+
   ' CtaCteItem.Fecha, CtaCteItem.ImporteTotalCuota, CtaCteItem.Pagado, CtaCteItem.APagar,'+
   ' Clientes.NombreCliente, Clientes.NombreTitular, Clientes.Direccion'+
   ' FROM Clientes'+
   ' INNER JOIN (Cobrador'+
   ' INNER JOIN (CtaCteItem'+
   ' INNER JOIN CtaCte'+
   ' ON CtaCteItem.CodCliente = CtaCte.CodCliente)'+
   ' ON Cobrador.Codigo = CtaCte.Cobrador)'+
   ' ON Clientes.CodCliente = CtaCte.CodCliente'+
   ' WHERE (CtaCte.Factura ='+Edit2.Text+') AND (CtaCte.CodCliente ='+Edit5.Text+') ORDER BY CtaCteItem.Vencimiento, CtaCteItem.IDCtaCteItem';
   Query.Open;
//   DetalleCtaCtefrxReport.ShowReport(True);
end;

procedure TRendicionClienteForm.Button2Click(Sender: TObject);
var n:integer;
begin
n:=0;
TotalAplicadoEdit.Text:=Edit3.Text;

   while Edit3.Text<> '0' do
     begin
     n := n+1;
     if (StrToFloat(Edit3.Text) > StrToFloat(StringGrid1.Cells[5,n])) OR (StrToFloat(Edit3.Text) = StrToFloat(StringGrid1.Cells[5,n])) then
      Begin
      StringGrid1.Cells[4,n] := FloatToStr(StrToFloat(StringGrid1.Cells[4,n]) + StrToFloat(StringGrid1.Cells[5,n]));
      Edit3.Text:= FloatToStr(StrToFloat(Edit3.Text)-StrToFloat(StringGrid1.Cells[5,n]));//entrega:= entrega-importe
      StringGrid1.Cells[5,n] := '0';
      end
      else
      Begin
      StringGrid1.Cells[4,n] := FloatToStr(StrToFloat(StringGrid1.Cells[4,n]) + StrToFloat(Edit3.Text));
      StringGrid1.Cells[5,n] := FloatToStr(StrToFloat(StringGrid1.Cells[5,n])-StrToFloat(StringGrid1.Cells[4,n]));
      Edit3.Text:= '0';
      end;
      StringGrid1.Cells[3,n] := 'P';
    end;
   Button3.SetFocus;
end;

procedure TRendicionClienteForm.Button3Click(Sender: TObject);
var i,c:integer;
begin
FormatSettings.ShortDateFormat:='mm/dd/yyyy';
Fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss', now));
  // Iniciar la Transaccion

  // Insertar en la tabla de CtaCte Item
        For i := 1 to StringGrid1.RowCount-1 do
        begin
        if  StringGrid1.Cells[3,i] = 'P' Then
         begin
         Query.SQL.Text:= 'Update "CtaCteItem" Set PAGADO = '+StringGrid1.Cells[4,i]+' Where '+
         '"CtaCteItem".CODIGO = '+StringGrid1.Cells[0,i];
         Query.ExecSQL;
         end;
        end;
        For i := 1 to StringGrid1.RowCount-1 do
        begin
        if  StringGrid1.Cells[3,i] = 'P' Then
         begin
         Query.SQL.Text:= 'Insert Into "RendidoCobrador" (VENTA, CUOTA, PAGADO)  Values ('+StringGrid1.Cells[0,i]+', '+StringGrid1.Cells[1,i]+', '+StringGrid1.Cells[4,i]+')';
         Query.ExecSQL;
         end;
         end;


//CONTABILIDAD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 //Insertar en la tabla LibroDiario

         //obtener el numero de asiento
        q.SQL.Text := 'Select Max(ASIENTO) From "LibroDiario"';
        q.Open;
        i := q.Fields[0].AsInteger+1;
        q.Close;

        if strtofloat(TotalAplicadoEdit.Text) > 0.04 then //PAGO DE CUENTA CORRIENTE
        begin
        // renglon  - CAJA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        Query.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cliente '+ClienteLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+TotalAplicadoEdit.Text+', 0, '+QuotedStr(Oculto)+
        ' )';
        Query.ExecSQL;

        // renglon  - DEUDORES POR VENTA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CtaNombre;
        q.Open;
        Query.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cliente '+ClienteLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+TotalAplicadoEdit.Text+', '+QuotedStr(Oculto)+
        ' )';
        Query.ExecSQL;
        end;

//CONTABILIDAD------------------------------------------------------------------------------

  // Completa la Transaccion
        Query.Transaction.CommitRetaining;

Edit3.Text:='';
Query.Close;
BitBtn4.Click;
close;
end;

procedure TRendicionClienteForm.Button4Click(Sender: TObject);
begin
close;
end;

procedure TRendicionClienteForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
end;

procedure TRendicionClienteForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TRendicionClienteForm.StringGrid1Click(Sender: TObject);
begin
Edit3.Text := StringGrid1.Cells[5,StringGrid1.Row];
end;

procedure TRendicionClienteForm.BitBtn1Click(Sender: TObject);
begin
   FBuscaCliente:=TFBuscaCliente.Create(self);
   try
      FBuscaCliente.ShowModal;
   finally
        with FBuscaCliente do
         begin
         Edit5.Text := Tabla.FieldByName('CODIGO').AsString;
         ClienteLabel.Caption := Tabla.FieldByName('NOMBRE').AsString+' - '+Tabla.FieldByName('TITULAR').AsString;
         CtaNombre := Tabla.FieldByName('CtaNombre').AsString;
         end;
       FBuscaCliente.Free;
   end;
end;

procedure TRendicionClienteForm.BitBtn4Click(Sender: TObject);
var i:integer;
begin
i:=0;
StringGrid1.RowCount :=2;
Query.SQL.Text:='SELECT'+
'  "CtaCteItem".CODIGO,'+
'  "CtaCteItem".CUOTA,'+
'  "CtaCteItem".VENCE,'+
'  "CtaCteItem".IMPORTE,'+
'  "CtaCteItem".PAGADO,'+
'  ("CtaCteItem".IMPORTE - "CtaCteItem".PAGADO) AS APAGAR,'+
'  "Cliente".NOMBRE AS CLIENTE,'+
'  "CtaCte".OPERACION,'+
'  "Cobrador".NOMBRE AS COBRADOR '+
' FROM'+
'  "CtaCte" '+
'  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'+
'  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'+
'  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)'+
' WHERE '+
'  ("CtaCteItem".VENCE <= '+QuotedStr(DateToStr(FechaDateTimePicker.Date))+') AND '+
'  ("CtaCteItem".PAGADO <= "CtaCteItem".IMPORTE) AND'+
'  ("CtaCte".OPERACION = '+Edit2.Text+'  ) AND '+
'  ("CtaCte".CLIENTE = '+Edit5.Text+') '+
'  ORDER BY  '+
'  "CtaCteItem".VENCE, '+
'  "CtaCteItem".CODIGO'+
' ';
Query.Open;
   while Query.Eof = False do
    begin
    i:=i+1;
    StringGrid1.RowCount := StringGrid1.RowCount+1;
    StringGrid1.Cells[0,i] :=Query.FieldByName('CODIGO').AsString;
    StringGrid1.Cells[1,i] :=Query.FieldByName('CUOTA').AsString;
    StringGrid1.Cells[2,i] :=Query.FieldByName('VENCE').AsString;
    StringGrid1.Cells[3,i] :=Query.FieldByName('IMPORTE').AsString;
    StringGrid1.Cells[4,i] :=Query.FieldByName('PAGADO').AsString;
    StringGrid1.Cells[5,i] :=Query.FieldByName('APAGAR').AsString;
    StringGrid1.Cells[6,i] :=Query.FieldByName('CLIENTE').AsString;
    StringGrid1.Cells[7,i] :=Query.FieldByName('OPERACION').AsString;
    Query.Next;
    end;

  Edit3.SetFocus;
end;

procedure TRendicionClienteForm.BitBtn3Click(Sender: TObject);
begin
   BuscarPlanFacturadoForm:=TBuscarPlanFacturadoForm.Create(self);
   BuscarPlanFacturadoForm.Edit4.Text:=Edit5.Text;
   try
      BuscarPlanFacturadoForm.ShowModal;
   finally
      Edit2.Text:= BuscarPlanFacturadoForm.Tabla.FieldByName('OPERACION').AsString;
      Label9.Caption:= BuscarPlanFacturadoForm.Tabla.FieldByName('DESCRIPCION').AsString;
      BuscarPlanFacturadoForm.Free;
   end;

end;

procedure TRendicionClienteForm.BitBtn2Click(Sender: TObject);
begin
DetalleCtaCte;
end;

end.
