unit CuentaContableF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, Mask, DB,
  DataModule, IBCustomDataSet, IBTable, IBQuery, OleCtrls, SHDocVw;

type
  TCuentasContablesForm = class(TForm)
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    GrabarBitBtn: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CuentaDBEdit: TDBEdit;
    RubroDBLookupComboBox: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    CapitulosDBLookupComboBox: TDBLookupComboBox;
    TipoDBLookupComboBox: TDBLookupComboBox;
    CodigoDBEdit: TDBEdit;
    DBNavigator1: TDBNavigator;
    BuscarBitBtn: TBitBtn;
    Label7: TLabel;
    OrdenarAZBitBtn: TBitBtn;
    Label8: TLabel;
    OrdenarJerarquiaBitBtn: TBitBtn;
    Tabla: TIBTable;
    DS: TDataSource;
    GrillaQ: TIBQuery;
    GrillaDS: TDataSource;
    CapituloT: TIBQuery;
    CapituloTDS: TDataSource;
    RubroT: TIBQuery;
    RubroTDS: TDataSource;
    TipoGastoT: TIBQuery;
    TipoGastoTDS: TDataSource;
    procedure SalirBitBtnClick(Sender: TObject);
    procedure GrabarBitBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure TablaBeforePost(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBEdit3Exit(Sender: TObject);
    procedure OrdenarAZBitBtnClick(Sender: TObject);
    procedure OrdenarJerarquiaBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
    procedure TablaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuentasContablesForm: TCuentasContablesForm;

implementation

uses BuscarCuentaF;

{$R *.dfm}

procedure TCuentasContablesForm.SalirBitBtnClick(Sender: TObject);
begin
Close;
end;

procedure TCuentasContablesForm.TablaAfterCancel(DataSet: TDataSet);
begin
Tabla.Transaction.RollbackRetaining;
end;

procedure TCuentasContablesForm.TablaAfterDelete(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TCuentasContablesForm.TablaAfterInsert(DataSet: TDataSet);
begin
GrillaQ.SQL.Text:='SELECT MAX(CODIGO) FROM "Cuenta"';
GrillaQ.Open;
CodigoDBEdit.Text:= IntToStr(GrillaQ.Fields[0].AsInteger+1);
OrdenarJerarquiaBitBtn.Click;
end;

procedure TCuentasContablesForm.TablaAfterPost(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TCuentasContablesForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
GrillaQ.Open;
RubroT.Open;
CapituloT.Open;
TipoGastoT.Open;
Tabla.Open;
Tabla.Insert;
end;

procedure TCuentasContablesForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TCuentasContablesForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F2 then BuscarBitBtn.Click;
IF Key = VK_F8 then GrabarBitBtn.Click;
end;

procedure TCuentasContablesForm.GrabarBitBtnClick(Sender: TObject);
begin
IF CuentaDBEdit.Text <>'' THEN
BEGIN
Tabla.Post;
Tabla.Insert;
END;
CuentaDBEdit.SetFocus;
end;

procedure TCuentasContablesForm.OrdenarAZBitBtnClick(Sender: TObject);
begin
GrillaQ.SQL.Text:= 'SELECT '+
'  "Cuenta".JERARQUIA,'+
'  "Cuenta".DESCRIPCION,'+
'  "RubroContable".DESCRIPCION AS RUBRO,'+
'  "Capitulo".DESCRIPCION AS CAPITULO,'+
'  "TipoGasto".DESCRIPCION AS TIPOGASTO '+
' FROM '+
'  "Cuenta" '+
'  INNER JOIN "RubroContable" ON ("Cuenta".RUBRO = "RubroContable".CODIGO)'+
'  INNER JOIN "Capitulo" ON ("Cuenta".CAPITULO = "Capitulo".CODIGO)'+
'  LEFT JOIN "TipoGasto" ON ("Cuenta".TIPOGASTO = "TipoGasto".CODIGO) '+
' ORDER BY'+
'  "Cuenta".DESCRIPCION';
GrillaQ.Open;
end;

procedure TCuentasContablesForm.OrdenarJerarquiaBitBtnClick(Sender: TObject);
begin
GrillaQ.SQL.Text:= 'SELECT '+
'  "Cuenta".JERARQUIA,'+
'  "Cuenta".DESCRIPCION,'+
'  "RubroContable".DESCRIPCION AS RUBRO,'+
'  "Capitulo".DESCRIPCION AS CAPITULO,'+
'  "TipoGasto".DESCRIPCION AS TIPOGASTO '+
' FROM '+
'  "Cuenta" '+
'  INNER JOIN "RubroContable" ON ("Cuenta".RUBRO = "RubroContable".CODIGO)'+
'  INNER JOIN "Capitulo" ON ("Cuenta".CAPITULO = "Capitulo".CODIGO)'+
'  LEFT JOIN "TipoGasto" ON ("Cuenta".TIPOGASTO = "TipoGasto".CODIGO) '+
' ORDER BY'+
'  "Cuenta".JERARQUIA';
GrillaQ.Open;
end;

procedure TCuentasContablesForm.BitBtn2Click(Sender: TObject);
begin
Tabla.Cancel;
Close;
end;

procedure TCuentasContablesForm.BuscarBitBtnClick(Sender: TObject);
begin
Tabla.Cancel;
 BuscarCuentaForm:=TBuscarCuentaForm.Create(self);
 try
   BuscarCuentaForm.ShowModal;
   finally
         Tabla.Locate('CODIGO',(BuscarCuentaForm.Tabla.FieldByName('CODIGO').AsString),[]);
      BuscarCuentaForm.Free;
   end;
end;

procedure TCuentasContablesForm.TablaBeforePost(DataSet: TDataSet);
var r:string;
begin
if RubroDBLookupComboBox.KeyValue < 100 then
if RubroDBLookupComboBox.KeyValue < 10 then r:= '00'+VarToStr(RubroDBLookupComboBox.KeyValue)
else r:= '0'+VarToStr(RubroDBLookupComboBox.KeyValue);
Tabla.FieldByName('JERARQUIA').AsString := VarToStr(CapitulosDBLookupComboBox.KeyValue) + r + (CodigoDBEdit.Text);
end;

procedure TCuentasContablesForm.DBEdit3Exit(Sender: TObject);
begin
GrabarBitBtn.SetFocus;
end;

procedure TCuentasContablesForm.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
GrillaQ.Close;
GrillaQ.Open;
end;

end.
