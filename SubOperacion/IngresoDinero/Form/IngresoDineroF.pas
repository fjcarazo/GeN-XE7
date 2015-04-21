unit IngresoDineroF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls, Buttons, ExtCtrls, DataModule;

type
  TIngresoDineroForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LbSubTotal: TLabel;
    LbImpuesto: TLabel;
    LbTotal: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    LbPagado: TLabel;
    LbSaldo: TLabel;
    PagoStringGrid: TStringGrid;
    Query: TADOQuery;
    Panel2: TPanel;
    Label15: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DetalleEdit: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    FECheque: TEdit;
    FETarjeta: TEdit;
    FEOtro: TEdit;
    FEContado: TEdit;
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure CalculaSaldo;
    procedure FEContadoChange(Sender: TObject);
    procedure FEChequeChange(Sender: TObject);
    procedure FETarjetaChange(Sender: TObject);
    procedure FEOtroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PagoStringGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Quicksort(Grid:TStringGrid; var List:array of integer;
      min, max,sortcol,datatype: Integer);
    procedure Sortgrid(Grid : TStringGrid; sortcol,datatype:integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
     ChequeCodCheque,ChequeNumero,ChequeDetalle,ChequeCodFactura,ChequeMntCheque,ChequeFecha,ChequeDias :string;
    { Public declarations }
      OK, Retiro : Boolean;
      Pagado, Saldo : Double;
      procedure Valores (SubT, Imp, Tot: Double);
      procedure BuscarCheques;
      procedure TraerCheque;
      procedure QuitarCheque;
  end;

var
  IngresoDineroForm: TIngresoDineroForm;
  SubTotal, Impuesto, Total  : Double;
  Cuenta:Integer;
implementation

uses BuscarCheques;

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

procedure TIngresoDineroForm.Quicksort(Grid:TStringGrid; var List:array of integer;
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

procedure TIngresoDineroForm.Sortgrid(Grid : TStringGrid; sortcol,datatype:integer);
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

procedure TIngresoDineroForm.Valores (SubT, Imp, Tot: Double);
begin
   SubTotal := SubT;
   Impuesto := Imp;
   Total    := Tot;
   LbSubTotal.Caption := Format('%8.2n',[SubTotal]);
   LbImpuesto.Caption := Format('%8.2n',[Impuesto]);
   LbTotal.Caption    := Format('%8.2n',[Total]);
   CalculaSaldo;
end;

procedure TIngresoDineroForm.CalculaSaldo;
var i:integer;
begin
   SubTotal := 0;
   // Calcula el Total
   For i:=1 to PagoStringGrid.RowCount-1 do begin
   IF (PagoStringGrid.Cells[2,i] = '') then PagoStringGrid.Cells[2,i] := '0';
      SubTotal := SubTotal + StrToFloat(PagoStringGrid.Cells[2,i]);//TOTAL
      end;
   Saldo  := 0;
   Pagado := 0;
   Pagado := Pagado + StrToFloat(FEContado.Text)+ StrToFloat(FECheque.Text) +
             StrToFloat(FETarjeta.Text) + StrToFloat(FEOtro.Text) + SubTotal;
   Saldo := Total - Pagado;
   LbPagado.Caption := Format('%8.2n',[Pagado]);
   LbSaldo.Caption  := Format('%8.2n',[Saldo]);
end;

procedure TIngresoDineroForm.AceptarClick(Sender: TObject);
var i:integer;
begin
   OK := True;
if Label13.Visible = True Then if PagoStringGrid.Cells[1,1] <> '' then begin
 // Iniciar la Transaccion
     DM.Transaccion.StartTransaction;
     try
 // PASAR LOS DATOS A CHEQUES ENTREGADOS
     For i := 1 to PagoStringGrid.RowCount-1 do
     begin
     Query.SQL.Text:='INSERT INTO ChequeEntregado (CodCheque,Numero,Detalle,CodFactura,MntCheque,Fecha,Dias) VALUES '+
     '('+PagoStringGrid.Cells[6,i]+','+PagoStringGrid.Cells[0,i]+','+QuotedStr(PagoStringGrid.Cells[1,i])+','+PagoStringGrid.Cells[4,i]+','+PagoStringGrid.Cells[2,i]+','+QuotedStr(PagoStringGrid.Cells[5,i])+','+PagoStringGrid.Cells[3,i]+')';
     Query.ExecSQL;
     end;
 // ELIMINAR CHEQUE DE CARTERA
     For i := 1 to PagoStringGrid.RowCount-1 do
     begin
    Query.SQL.Text:='DELETE * FROM Cheque WHERE CodCheque='+PagoStringGrid.Cells[6,i];
    Query.ExecSQL;
    end;
  // Completa la Transaccion
        DM.Transaccion.Commit;
   except
        on E:Exception do
        begin
           DM.Transaccion.RollbackRetaining;
           MessageDlg('No fue posible completar la transacción, por favor contacte al administrador',mtError,[mbOK],0);
        end;
      end;
   end;
   Close;
end;

procedure TIngresoDineroForm.CancelarClick(Sender: TObject);
begin
   OK := False;
   Close;
end;

procedure TIngresoDineroForm.FEContadoChange(Sender: TObject);
begin
   CalculaSaldo;
end;

procedure TIngresoDineroForm.FEChequeChange(Sender: TObject);
begin
   CalculaSaldo;
end;

procedure TIngresoDineroForm.FETarjetaChange(Sender: TObject);
begin
   CalculaSaldo;
end;

procedure TIngresoDineroForm.FEOtroChange(Sender: TObject);
begin
   CalculaSaldo;
end;

procedure TIngresoDineroForm.BuscarCheques;
begin
      BuscarChequesForm:=TBuscarChequesForm.Create(self);
      try
         BuscarChequesForm.ShowModal;
      finally
         ChequeCodCheque:=BuscarChequesForm.Codigo;
         BuscarChequesForm.Free;
      end;
      if ChequeCodCheque <> '' then TraerCheque;
end;

procedure TIngresoDineroForm.TraerCheque;
Begin
   If Cuenta > 1 then PagoStringGrid.RowCount := PagoStringGrid.RowCount + 1;
   Query.SQL.Text:='SELECT * FROM Cheque WHERE CodCheque='+ChequeCodCheque;
   Query.Open;
   PagoStringGrid.Cells[0,cuenta] := Query.FieldByName('Numero').AsString;//NUMERO DEL CHEQUE;
   PagoStringGrid.Cells[1,cuenta] := Query.FieldByName('Detalle').AsString;//DETALLE DEL CHEQUE;
   PagoStringGrid.Cells[2,cuenta] := Query.FieldByName('MntCheque').AsString;//IMPORTE DEL CHEQUE
   PagoStringGrid.Cells[3,cuenta] := Query.FieldByName('Dias').AsString;//A CUANTOS DIAS ESTA EL CHEQUE

   PagoStringGrid.Cells[4,cuenta] := Query.FieldByName('CodFactura').AsString;//CODIGO DE FACTURA DEL CHEQUE;
   PagoStringGrid.Cells[5,cuenta] := Query.FieldByName('Fecha').AsString;//FECHA DE EMISION DEL CHEQUE
   PagoStringGrid.Cells[6,cuenta] := Query.FieldByName('CodCheque').AsString;//FECHA DE EMISION DEL CHEQUE

   Cuenta := Cuenta +1;
   Query.Close;
   SortGrid(PagoStringGrid,0,0);
   CalculaSaldo;
end;

procedure TIngresoDineroForm.QuitarCheque;
begin
   GridRemoveRow(PagoStringGrid,PagoStringGrid.Row);
   If Cuenta > 1 then Cuenta := Cuenta - 1;
   CalculaSaldo;
end;

procedure TIngresoDineroForm.PagoStringGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
Var
   X:Integer;
begin
   x:=0;
   With Sender As TStringGrid do begin
   Case Acol of
   0: Begin
      SetTextAlign(Canvas.Handle,TA_LEFT);
      X:= rect.left+5;
      end;
   1: Begin
      SetTextAlign(Canvas.Handle,TA_LEFT);
      X:= rect.left+5;
      end;
   2: Begin
      SetTextAlign(Canvas.Handle,TA_LEFT);
      X:= rect.left+5;
      end;
   3: Begin
      SetTextAlign(Canvas.Handle,TA_CENTER);
      X:=(rect.right+rect.left) div 2;
      end;
   4: Begin
      SetTextAlign(Canvas.Handle,TA_RIGHT);
      X:= rect.right-5;
      end;
   5: Begin
      SetTextAlign(Canvas.Handle,TA_RIGHT);
      X:= rect.right-5;
      end;
   6: Begin
      SetTextAlign(Canvas.Handle,TA_CENTER);
      X:=(rect.right+rect.left) div 2;
      end;
   end;{CASE}
   if Arow=0 then
   begin
      SetTextAlign(Canvas.Handle,TA_CENTER);
      X:=(rect.right+rect.left) div 2;
   end;
   Canvas.textrect(rect,X,rect.top+2,Cells[Acol,Arow]);
   end;{with}
end;


procedure TIngresoDineroForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F4 then BuscarCheques;
IF Key = VK_F6 then QuitarCheque;
IF Key = VK_F8 then Aceptar.Click;
end;

procedure TIngresoDineroForm.FormShow(Sender: TObject);
begin
FEContado.Text:='0.00';
FECheque.Text:='0.00';
FETarjeta.Text:='0.00';
FEOtro.Text:='0.00';
if Retiro = True then
 begin
IngresoDineroForm.Caption:='Retiro de dinero';
Label13.Visible := True;
Label14.Visible := True;
PagoStringGrid.Visible := True;
PagoStringGrid.Cells[0,0] := 'Numero';
PagoStringGrid.Cells[1,0] := 'Detalle';
PagoStringGrid.Cells[2,0] := 'Importe';
PagoStringGrid.Cells[3,0] := 'Días';
PagoStringGrid.Cells[4,0] := 'Factura';
PagoStringGrid.Cells[5,0] := 'Fecha';
PagoStringGrid.Cells[6,0] := 'Cheque';
Cuenta := 1;
 end;
end;

procedure TIngresoDineroForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          // if it's an enter key
 begin
      Key := #0;                                 // eat enter key
      Perform(WM_NEXTDLGCTL, 0, 0);            // move to next control 
  end;
end;

end.
