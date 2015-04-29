unit ImpuestosServicios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, DB, ADODB,
  Buttons, DataModule;

type
  TImpuestosServiciosFrom = class(TForm)
    Tabla: TADOTable;
    DataSource: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TUsuarios: TADOTable;
    DSUsuarios: TDataSource;
    Query: TADOQuery;
    CuentaQuery: TADOQuery;
    CuentaDataSource: TDataSource;
    Panel10: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    Panel11: TPanel;
    Label55: TLabel;
    AceptarBitBtn: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit24: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    Label13: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    CuentaDBLookupComboBox: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TablaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    desc: string;
    { Public declarations }
  end;

var
  ImpuestosServiciosFrom: TImpuestosServiciosFrom;

implementation

uses BuscarImpuestosServicios;

{$R *.dfm}

procedure TImpuestosServiciosFrom.BitBtn1Click(Sender: TObject);
begin
  desc := DBText1.Caption;
  If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
    Tabla.Post;
  Close;
end;

procedure TImpuestosServiciosFrom.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TImpuestosServiciosFrom.TablaAfterInsert(DataSet: TDataSet);
begin
  { QTemp.SQL.Text := 'Select Max(CodImpuestoServicio) From ImpuestosServicios';
    QTemp.Active := true;
    DBText1.Field.AsInteger := QTemp.Fields[0].AsInteger+1;
    QTemp.Active :=False;
    DBEdit1.Field.AsInteger := 0; }
  Query.SQL.Text := 'Select Max(CodImpuestoServicio) From ImpuestosServicios';
  Query.Open;
  DBText1.Field.AsInteger := Query.Fields[0].AsInteger + 1;

  Tabla.FieldByName('CtaNombre').AsString := '81';
  Tabla.FieldByName('CtaTipo').AsString := '81';
  Tabla.FieldByName('CtaAnticipo').AsString := '28';
  Tabla.FieldByName('CtaIIBB').AsString := '66';

end;

procedure TImpuestosServiciosFrom.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(Self);
  CuentaQuery.Open;
  Tabla.Active := True;
  TUsuarios.Active := True;
end;

procedure TImpuestosServiciosFrom.FormDestroy(Sender: TObject);
begin
  Tabla.Active := False;
  TUsuarios.Active := False;
end;

procedure TImpuestosServiciosFrom.BitBtn3Click(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  Tabla.Cancel;
  BuscarImpuestosServiciosForm := TBuscarImpuestosServiciosForm.Create(Self);
  try
    BuscarImpuestosServiciosForm.ShowModal;
  finally
    If BuscarImpuestosServiciosForm.Cod_ImpuestosServicios <> '' then
      Tabla.Locate('CodImpuestoServicio',
        QuotedStr(BuscarImpuestosServiciosForm.Cod_ImpuestosServicios), []);
    BuscarImpuestosServiciosForm.Free;
  end;
end;

procedure TImpuestosServiciosFrom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TImpuestosServiciosFrom.FormShow(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  Tabla.Insert;
  DBEdit2.SetFocus;
end;

procedure TImpuestosServiciosFrom.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F5 then
    BitBtn3.Click;
end;

end.
