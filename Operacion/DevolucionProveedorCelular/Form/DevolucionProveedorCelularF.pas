unit DevolucionProveedorCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DB, ADODB, DataModule;

type
  TDevolucionesForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    FechaDBEdit: TDBEdit;
    Label6: TLabel;
    ProveedorDBLookupComboBox: TDBLookupComboBox;
    ArticulosDBLookupComboBox: TDBLookupComboBox;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    Label8: TLabel;
    ObservDBMemo: TDBMemo;
    Tabla: TADOQuery;
    ArticulosTabla: TADOQuery;
    ProveedorTabla: TADOQuery;
    ArticulosDataSource: TDataSource;
    ProveedorDataSource: TDataSource;
    DataSource: TDataSource;
    Query: TADOQuery;
    Label1: TLabel;
    CantidadDBEdit: TDBEdit;
    Label4: TLabel;
    CodigoDBEdit: TDBEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure TablaAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevolucionesForm: TDevolucionesForm;

implementation

{$R *.dfm}

procedure TDevolucionesForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(self);
end;

procedure TDevolucionesForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TDevolucionesForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F8 then SiBitBtn.Click;
end;

procedure TDevolucionesForm.FormShow(Sender: TObject);
begin
ArticulosTabla.Open;
ProveedorTabla.Open;
Tabla.Open;
Tabla.Insert;
Tabla.Edit;
ArticulosDBLookupComboBox.KeyValue:=null;
FechaDBEdit.Text:=DateToStr(Date);
ProveedorDBLookupComboBox.KeyValue:=null;
ObservDBMemo.Text:='';
ArticulosDBLookupComboBox.SetFocus;
end;

procedure TDevolucionesForm.TablaAfterInsert(DataSet: TDataSet);
begin
       Query.SQL.Text:='SELECT Max(Codigo) FROM Devolucion';
       Query.Open;
       CodigoDBEdit.Text := IntToStr(Query.Fields.Fields[0].AsInteger +1);
       CantidadDBEdit.Text:='1';
end;

procedure TDevolucionesForm.SiBitBtnClick(Sender: TObject);
begin
Query.SQL.Text := 'Update Articulos Set Disponible = Disponible - '+CantidadDBEdit.Text+' Where '+
                             'CodParte = '+ArticulosDBLookupComboBox.text;
Query.ExecSQL;
Tabla.Post;
close;
end;

procedure TDevolucionesForm.NoBitBtnClick(Sender: TObject);
begin
Tabla.Cancel;
close;
end;

end.
