unit ArticuloCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, Grids, DBGrids, DB, ADODB, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, ComCtrls;

const
  EAN_izqA: array [0 .. 9] of PChar = ('0001101', '0011001', '0010011',
    '0111101', '0100011', '0110001', '0101111', '0111011', '0110111',
    '0001011');
  EAN_izqB: array [0 .. 9] of PChar = ('0100111', '0110011', '0011011',
    '0100001', '0011101', '0111001', '0000101', '0010001', '0001001',
    '0010111');
  EAN_dcha: array [0 .. 9] of PChar = ('1110010', '1100110', '1101100',
    '1000010', '1011100', '1001110', '1010000', '1000100', '1001000',
    '1110100');
  CodificaIzq: array [0 .. 9] of PChar = ('AAAAA', 'ABABB', 'ABBAB', 'ABBBA',
    'BAABB', 'BBAAB', 'BBBAA', 'BABAB', 'BABBA', 'BBABA');

type
  TArticuloCelularForm = class(TForm)
    DataSource: TDataSource;
    ADOTCat: TADOTable;
    ADOTSubCat: TADOTable;
    DSTCat: TDataSource;
    DSTSubCat: TDataSource;
    TMateriales: TADOTable;
    DSMateriales: TDataSource;
    AQTemp: TADOQuery;
    TRubro: TADOTable;
    DSRubro: TDataSource;
    QProve: TADOQuery;
    DSQProve: TDataSource;
    CategoriaADOTable: TADOTable;
    CategoriaDataSource: TDataSource;
    MarcaADOTable: TADOTable;
    MarcaDataSource: TDataSource;
    Tabla: TADOQuery;
    Panel3: TPanel;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit19: TDBEdit;
    CuentaQuery: TADOQuery;
    CuentaDataSource: TDataSource;
    ConfigQuery: TADOQuery;
    Label40: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label30: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label16: TLabel;
    Label28: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBText2: TDBText;
    Label24: TLabel;
    Label29: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit2: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    IVADBEdit: TDBEdit;
    FleteDBEdit: TDBEdit;
    CostoDBEdit: TDBEdit;
    PrecioCtaCteDBEdit: TDBEdit;
    GanaciaDBEdit: TDBEdit;
    Edit1: TDBEdit;
    diasDBEdit: TDBEdit;
    VenceDBEdit: TDBEdit;
    DBEdit10: TDBEdit;
    EstadoDBComboBox: TDBComboBox;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label9: TLabel;
    Label32: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label39: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit21: TDBEdit;
    RubroDBLookupComboBox: TDBLookupComboBox;
    BitBtn8: TBitBtn;
    MarcaDBLookupComboBox: TDBLookupComboBox;
    BitBtn10: TBitBtn;
    CategoriaDBLookupComboBox: TDBLookupComboBox;
    BitBtn11: TBitBtn;
    FechaDBEdit: TDBEdit;
    TabSheet4: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label31: TLabel;
    Label3: TLabel;
    Label22: TLabel;
    Precio1DBEdit: TDBEdit;
    Precio2DBEdit: TDBEdit;
    Precio3DBEdit: TDBEdit;
    Precio6DBEdit: TDBEdit;
    Precio4DBEdit: TDBEdit;
    Precio5DBEdit: TDBEdit;
    TabSheet5: TTabSheet;
    Label50: TLabel;
    Label54: TLabel;
    Label53: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    CuentaDBLookupComboBox: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure NewCodeBar;
    procedure BitBtn9Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Precio6DBEditExit(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure TablaBeforePost(DataSet: TDataSet);
    procedure TablaAfterInsert(DataSet: TDataSet);
    procedure GanaciaDBEditExit(Sender: TObject);
    procedure BitBtn13Exit(Sender: TObject);
    procedure VenceDBEditExit(Sender: TObject);
  private
    { Private declarations }
  public
    desc: string;
    Precio1, Precio2, Precio3, Precio4, Precio5, Precio6, PrecioCtaCte: Double;
    { Public declarations }
    // procedimiento que codifica el número en un nº binario
    // procedure Codifica(num : string);
    // procedimiento para dibujar el cód. de barras a partir del nº binario
    // procedure Dibujar(matrix : string);
    // procedimiento para validar-corregir los códigos
    // procedure EANCorrecto(var num : string);
    Procedure nuevo;
  end;

var
  ArticuloCelularForm: TArticuloCelularForm;

implementation

uses UFCategorias, UFSubCategorias, Color, MarcaF, IngresosBrutosF, RubroF,
  BuscarArticulosCelularF;

{$R *.dfm}

procedure TArticuloCelularForm.NewCodeBar;
var
  i: integer;
begin
  if Tabla.State = dsInsert then
  begin
    AQTemp.Close;
    AQTemp.SQL.Text := 'SELECT max(CodPArte) FROM Articulos';
    AQTemp.Open;
    DBEdit19.Text := IntToStr(AQTemp.Fields.Fields[0].AsInteger + 1);
  end;
  { If (Tabla.State <> dsEdit) or (Tabla.State <> dsInsert) then Tabla.Edit;
    //codigo de barras
    i:= 100000 + StrToInt(DBEdit19.Text);       //agrego el codigo
    Edit1.Text := '1'+inttostr(i)+'2';       //lo incluyo en el codigo de barra
    Codifica(Edit1.Text);
    Edit1.SelStart:=0;
    Edit1.SelLength:=Length(Edit1.Text);
    Tabla.FieldByName('CodigoBarra').AsString := Edit1.Text; }
end;

{ procedure TFProductos.EANCorrecto(var num : string);
  var
  i,N : byte;
  sum : integer;
  flag : byte;
  begin
  sum:=0;
  N:=Length(num)-1; //13-1=12
  for i:=1 to N do    //desde 1 hasta 12
  begin
  if (i mod 2)=0 then         //  x mod y = x – (x div y) * y = 1-(0.5)*2
  begin
  if N=12 then
  sum:=sum+StrToInt(num[i])*3
  else
  sum:=sum+StrToInt(num[i]);
  end
  else
  begin
  if N=12 then
  sum:=sum+StrToInt(num[i])
  else
  sum:=sum+StrToInt(num[i])*3;
  end;
  end;
  if sum>99 then
  Flag:=10-(sum mod 100)
  else
  Flag:=10-(sum mod 10);
  if Flag=10 then Flag:=0;
  if not(StrToInt(num[N+1])=flag) then
  num:=copy(num,1,length(num)-1)+IntToStr(Flag);
  end;

  procedure TFProductos.Codifica(num : string);
  var
  matrix : string;
  i : integer;
  begin
  num:=Edit1.Text; //numero
  matrix:='';
  case Length(num) of    //mientras sean 13 caracteres
  13: begin
  EANCorrecto(num);  //
  Edit1.Text:=num;
  matrix:=matrix+'x0x'; // barra inicio
  matrix:=matrix+EAN_izqA[StrToInt(num[2])];
  for i:=3 to 7 do
  if CodificaIzq[StrToInt(num[1])][i-3]='A' then
  matrix:=matrix+EAN_izqA[StrToInt(num[i])]
  else
  matrix:=matrix+EAN_izqB[StrToInt(num[i])];
  matrix:=matrix+'0x0x0'; // barra central
  matrix:=matrix+EAN_dcha[StrToInt(num[8])];
  matrix:=matrix+EAN_dcha[StrToInt(num[9])];
  matrix:=matrix+EAN_dcha[StrToInt(num[10])];
  matrix:=matrix+EAN_dcha[StrToInt(num[11])];
  matrix:=matrix+EAN_dcha[StrToInt(num[12])];
  matrix:=matrix+EAN_dcha[StrToInt(num[13])];
  matrix:=matrix+'x0x'; // barra final
  //      Dibujar(Matrix);
  end;
  8: begin
  EANCorrecto(num);
  Edit1.Text:=num;
  matrix:=matrix+'x0x';
  matrix:=matrix+EAN_izqA[StrToInt(num[1])];
  matrix:=matrix+EAN_izqA[StrToInt(num[2])];
  matrix:=matrix+EAN_izqA[StrToInt(num[3])];
  matrix:=matrix+EAN_izqA[StrToInt(num[4])];
  matrix:=matrix+'0x0x0';
  matrix:=matrix+EAN_dcha[StrToInt(num[5])];
  matrix:=matrix+EAN_dcha[StrToInt(num[6])];
  matrix:=matrix+EAN_dcha[StrToInt(num[7])];
  matrix:=matrix+EAN_dcha[StrToInt(num[8])];
  matrix:=matrix+'x0x';
  //Dibujar(Matrix);
  end
  else
  ShowMessage('LONGITUD DE CODIGO NO VALIDA');
  end;
  end; }

procedure TArticuloCelularForm.SiBitBtnClick(Sender: TObject);
begin
  desc := DBEdit19.Text;
  If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) And
    (Tabla.FieldByName('descripcion').Value <> '') then
    Tabla.Post;
  Tabla.Insert;
  Edit1.SetFocus;
end;

procedure TArticuloCelularForm.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TArticuloCelularForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(self);
  Tabla.Active := True;
  ADOTCat.Active := True;
  ADOTSubCat.Active := True;
  QProve.Active := True;
  TRubro.Active := True;
  MarcaADOTable.Active := True;
  CategoriaADOTable.Active := True;
  ConfigQuery.Open;
  Precio1 := ConfigQuery.FieldByName('PP1').AsFloat / 100 + 1;
  Precio2 := ConfigQuery.FieldByName('PP2').AsFloat / 100 + 1;
  Precio3 := ConfigQuery.FieldByName('PP3').AsFloat / 100 + 1;
  Precio4 := ConfigQuery.FieldByName('PP4').AsFloat / 100 + 1;
  Precio5 := ConfigQuery.FieldByName('PP5').AsFloat / 100 + 1;
  Precio6 := ConfigQuery.FieldByName('PP6').AsFloat / 100 + 1;
  PrecioCtaCte := ConfigQuery.FieldByName('PPCtaCte').AsFloat / 100 + 1;
  AQTemp.Close;
end;

procedure TArticuloCelularForm.BitBtn4Click(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  Tabla.Cancel;
  BuscaArticuloCelularForm := TBuscaArticuloCelularForm.Create(self);
  try
    BuscaArticuloCelularForm.ShowModal;
  finally
    If BuscaArticuloCelularForm.ATArticulos.Active = True then
      Tabla.Locate('CodParte', BuscaArticuloCelularForm.ATArticulos.FieldByName
        ('CodParte').AsInteger, []);
    BuscaArticuloCelularForm.Free;
  end;
  Tabla.Edit;
end;

procedure TArticuloCelularForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TArticuloCelularForm.FormShow(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  Tabla.Insert;
end;

procedure TArticuloCelularForm.GanaciaDBEditExit(Sender: TObject);
var
  costo, flete, iva: Double;
begin
  if CostoDBEdit.Text = '' then
    CostoDBEdit.Text := '0';
  if FleteDBEdit.Text = '' then
    FleteDBEdit.Text := '0';
  if IVADBEdit.Text = '' then
    IVADBEdit.Text := '0';
  if GanaciaDBEdit.Text = '' then
    GanaciaDBEdit.Text := '0';

  costo := StrToFloat(CostoDBEdit.Text);
  flete := costo * (StrToFloat(FleteDBEdit.Text) / 100);
  iva := costo * (StrToFloat(IVADBEdit.Text) / 100);
  Precio1DBEdit.Text := FloatToStr((costo * Precio1) + flete + iva);
  Precio2DBEdit.Text := FloatToStr((costo * Precio2) + flete + iva);
  Precio3DBEdit.Text := FloatToStr((costo * Precio3) + flete + iva);
  Precio4DBEdit.Text := FloatToStr((costo * Precio4) + flete + iva);
  Precio5DBEdit.Text := FloatToStr((costo * Precio5) + flete + iva);
  Precio6DBEdit.Text := FloatToStr((costo * Precio6) + flete + iva);
  if GanaciaDBEdit.Text = '0' then
    PrecioCtaCteDBEdit.Text := FloatToStr((costo * PrecioCtaCte) + flete + iva)
  else
    PrecioCtaCteDBEdit.Text :=
      FloatToStr((costo * (StrToFloat(GanaciaDBEdit.Text) / 100 + 1) +
      flete + iva));
  Label21.Caption := '= ' + FloatToStr(iva);
  DBText1.Caption := FloatToStr(costo + flete);
  DBText2.Caption := FloatToStr(costo + flete + iva);
  SiBitBtn.SetFocus;

end;

Procedure TArticuloCelularForm.nuevo;
begin

  Tabla.FieldByName('CtaNombre').AsString := '13';
  Tabla.FieldByName('CtaTipo').AsString := '13';
  Tabla.FieldByName('CtaAnticipo').AsString := '13';
  Tabla.FieldByName('CtaIIBB').AsString := '66';

  Tabla.FieldByName('Color').AsString := 'Otros';
  Tabla.FieldByName('Categoria').AsString := 'Otros';
  Tabla.FieldByName('SubCategoria').AsString := 'Otros';
  Tabla.FieldByName('Rubro').AsString := 'Otros';
  Tabla.FieldByName('Marca').AsString := 'Otros';
  Tabla.FieldByName('Proveedor').Value := 0;
  DBLookupComboBox4.KeyValue := 0;
  DBEdit9.Field.AsString := 'c/u';
  Tabla.FieldByName('Descripcion').AsString := '.';
  DBEdit17.Field.AsDateTime := Date;
  Tabla.FieldByName('Costo').AsInteger := 0;
  CostoDBEdit.Field.AsFloat := 0;
  Tabla.FieldByName('ImpOtros').AsInteger := 0;
  FleteDBEdit.Field.AsFloat := 0;
  Tabla.FieldByName('Tasa').AsInteger := 0;
  IVADBEdit.Field.AsFloat := 0;
  Tabla.FieldByName('PrecioCtaCte').AsInteger := 0;
  PrecioCtaCteDBEdit.Field.AsFloat := 0;
  Tabla.FieldByName('Fecha').AsDateTime := Date;
  FechaDBEdit.Text := datetostr(Date);
  EstadoDBComboBox.ItemIndex := 0;
  // BitBtn9.Click;
  GanaciaDBEdit.Text := FloatToStr((PrecioCtaCte - 1) * 100);
  NewCodeBar;
end;

procedure TArticuloCelularForm.BitBtn8Click(Sender: TObject);
begin
  RubroForm := TRubroForm.Create(self);
  try
    RubroForm.ShowModal;
  finally
    If RubroForm.desc <> '' then
      RubroDBLookupComboBox.KeyValue := RubroForm.desc;
    Tabla.FieldByName('Rubro').AsString := RubroForm.desc;
    RubroForm.Free;
  end;
  TRubro.Close;
  TRubro.Open;
  MarcaDBLookupComboBox.SetFocus;
end;

procedure TArticuloCelularForm.BitBtn9Click(Sender: TObject);
begin
  NewCodeBar;
end;

procedure TArticuloCelularForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F2 then
    BitBtn8.Click;
  IF Key = VK_F3 then
    BitBtn10.Click;
  IF Key = VK_F5 then
    BitBtn4.Click;
  IF Key = VK_F8 then
    SiBitBtn.Click;
end;

procedure TArticuloCelularForm.Precio6DBEditExit(Sender: TObject);
begin
  IVADBEdit.SetFocus;
end;

procedure TArticuloCelularForm.BitBtn11Click(Sender: TObject);
begin
  FCategorias := TFCategorias.Create(self);
  try
    FCategorias.ShowModal;
  finally
    If FCategorias.desc <> '' then
    begin
      CategoriaDBLookupComboBox.KeyValue := FCategorias.desc;
      Tabla.FieldByName('Categoria').AsString := FCategorias.desc;
    end;
    FCategorias.Free;
  end;
  CategoriaADOTable.Close;
  CategoriaADOTable.Open;
  RubroDBLookupComboBox.SetFocus;
end;

procedure TArticuloCelularForm.BitBtn10Click(Sender: TObject);
begin
  MarcaForm := TMarcaForm.Create(self);
  try
    MarcaForm.ShowModal;
  finally
    If MarcaForm.desc <> '' then
    begin
      MarcaDBLookupComboBox.KeyValue := MarcaForm.desc;
      If (Tabla.State <> dsEdit) and (Tabla.State <> dsInsert) then
        Tabla.Edit;
      Tabla.FieldByName('Marca').AsString := MarcaForm.desc;
    end;
    MarcaForm.Free;
  end;
  MarcaADOTable.Close;
  MarcaADOTable.Open;
  DBEdit9.SetFocus;
end;

procedure TArticuloCelularForm.DBEdit14Exit(Sender: TObject);
begin
  SiBitBtn.SetFocus;
end;

procedure TArticuloCelularForm.VenceDBEditExit(Sender: TObject);
  function DifFech(Fecha: string): integer;
  var
    dTemp: TDate;
  begin
    dTemp := StrToDate(Fecha);
    Result := trunc(dTemp - StrToDate(FormatDateTime(datetostr(Date), dTemp)));
  end;

begin
  diasDBEdit.Text := IntToStr(DifFech(VenceDBEdit.Text));
end;

procedure TArticuloCelularForm.BitBtn13Exit(Sender: TObject);
begin
  QProve.Close;
  QProve.Open;
end;

procedure TArticuloCelularForm.TablaBeforePost(DataSet: TDataSet);
begin
  If Tabla.FieldByName('descripcion').Value = '' then
    Tabla.FieldByName('descripcion').Value := '.';
end;

procedure TArticuloCelularForm.TablaAfterInsert(DataSet: TDataSet);
begin
  If Cancelar then
    Tabla.Cancel
  else
    nuevo;
end;

end.
