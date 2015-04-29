unit ActivarCelularF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DataModule, DB, ADODB;

type
  TVendedorActivaForm = class(TForm)
    Label2: TLabel;
    IMEIDBLookupComboBox: TDBLookupComboBox;
    Label3: TLabel;
    VendedorDBLookupComboBox: TDBLookupComboBox;
    Label4: TLabel;
    NSEDBLookupComboBox: TDBLookupComboBox;
    ArticulosTabla: TADOQuery;
    VendedorTabla: TADOQuery;
    ArticulosDataSource: TDataSource;
    VendedorDataSource: TDataSource;
    Query: TADOQuery;
    Tabla: TADOQuery;
    DataSource: TDataSource;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendedorActivaForm: TVendedorActivaForm;

implementation

{$R *.dfm}

procedure TVendedorActivaForm.NoBitBtnClick(Sender: TObject);
begin
  Tabla.Cancel;
  Close;
end;

procedure TVendedorActivaForm.SiBitBtnClick(Sender: TObject);
begin
  Query.SQL.Text := 'UPDATE Vendedor SET Puntos=Puntos+1 WHERE Codigo=' +
    VarToStr(VendedorDBLookupComboBox.KeyValue);
  Query.ExecSQL;
  Query.SQL.Text :=
    'UPDATE Articulos SET Estado=''Activado'' WHERE CodigoBarra=' +
    QuotedStr(VarToStr(IMEIDBLookupComboBox.KeyValue));
  Query.ExecSQL;
  Query.SQL.Text :=
    'UPDATE Articulos SET Estado=''Activado'' WHERE CodigoBarra=' +
    QuotedStr(VarToStr(NSEDBLookupComboBox.KeyValue));
  Query.ExecSQL;
  Tabla.Post;
  Close;
end;

procedure TVendedorActivaForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(self);
end;

procedure TVendedorActivaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TVendedorActivaForm.FormShow(Sender: TObject);
begin
  ArticulosTabla.SQL.Text :=
    'Select *  From Articulos Where (Estado is null ) or  (Estado <> ''Activado'')';
  ArticulosTabla.Open;
  VendedorTabla.Open;
  Tabla.Open;
  Tabla.Insert;
end;

end.
