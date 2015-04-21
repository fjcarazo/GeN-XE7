unit ProveedorF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, ImprimirDM,
  Buttons, IBQuery, IBCustomDataSet, IBTable, DB, OleCtrls, SHDocVw;

type
  TProveedorForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    CodigoDBEdit: TDBEdit;
    Label1: TLabel;
    VendedorLabel: TLabel;
    TabSheet3: TTabSheet;
    Label15: TLabel;
    Label24: TLabel;
    DBEdit20: TDBEdit;
    TabSheet4: TTabSheet;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    Label28: TLabel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    Label26: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label10: TLabel;
    DBEdit17: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit18: TDBEdit;
    Label4: TLabel;
    DBEdit9: TDBEdit;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label38: TLabel;
    IVALabel: TLabel;
    IVADBComboBox: TDBComboBox;
    CtaNombreDBLookupComboBox: TDBLookupComboBox;
    Label54: TLabel;
    CtaAnticipoDBLookupComboBox: TDBLookupComboBox;
    CtaTipoDBLookupComboBox: TDBLookupComboBox;
    Label52: TLabel;
    Label51: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Label18: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Label33: TLabel;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    ImprimirBitBtn: TBitBtn;
    Tabla: TIBTable;
    DataSource: TDataSource;
    UsuarioT: TIBQuery;
    DSUsuarios: TDataSource;
    CuentaT: TIBQuery;
    CuentaDataSource: TDataSource;
    EmpresaQuery: TIBQuery;
    Query: TIBQuery;
    DBNavigator1: TDBNavigator;
    BuscarBitBtn: TBitBtn;
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure TablaAfterInsert(DataSet: TDataSet);
    procedure IVADBComboBoxChange(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterPost(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
  desc:string;
    { Public declarations }
  end;

var
  ProveedorForm: TProveedorForm;

implementation

uses UFBuscaProve;

{$R *.dfm}

procedure TProveedorForm.SiBitBtnClick(Sender: TObject);
begin
 desc:=CodigoDBEdit.text;

   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
      Tabla.Post;
   Close;
end;

procedure TProveedorForm.NoBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TProveedorForm.BuscarBitBtnClick(Sender: TObject);
begin
 TabSheet1.PageControl.ActivePageIndex:=0;
Tabla.Cancel;
  FBuscaProve:=TFBuscaProve.Create(self);
   try
      FBuscaProve.ShowModal;
   finally
         Tabla.Locate('CODIGO',(FBuscaProve.Tabla.FieldByName('CODIGO').AsString),[]);
      FBuscaProve.Free;
   end;
   DBEdit2.SetFocus;
end;

procedure TProveedorForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
 If (Tabla.Active = True) then Tabla.Close;
UsuarioT.Open;
CuentaT.open;
Tabla.Open;
Tabla.Insert;
end;

procedure TProveedorForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TProveedorForm.FormShow(Sender: TObject);
begin
 DBEdit2.SetFocus;
end;

procedure TProveedorForm.IVADBComboBoxChange(Sender: TObject);
begin
if IVADBComboBox.ItemIndex = 0 then IVALabel.Caption := 'Consumidor Final'
else if IVADBComboBox.ItemIndex = 1 then IVALabel.Caption := 'Responsable Monotributo'
else if IVADBComboBox.ItemIndex = 2 then IVALabel.Caption := 'Responsable Inscripto'
else if IVADBComboBox.ItemIndex = 3 then IVALabel.Caption := 'Exento'
else IVALabel.Caption := 'No Responsable';
end;

procedure TProveedorForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_F5 then BuscarBitBtn.Click;
end;

procedure TProveedorForm.ImprimirBitBtnClick(Sender: TObject);
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 ImprimirDataModule.SImpr('SELECT '+
  ' "Proveedor".CODIGO,'+
  ' "Proveedor".NOMBRE,'+
  ' "Proveedor".TITULAR,'+
  ' "Proveedor".DIRECCION,'+
  ' "Proveedor".DIRECCIONCOMERCIAL,'+
  ' "Proveedor".PAIS,'+
  ' "Proveedor".PROVINCIA,'+
  ' "Proveedor".DEPARTAMENTO,'+
  ' "Proveedor".CIUDAD,'+
  ' "Proveedor".CP,'+
  ' "Proveedor".CODIGOAREA,'+
  ' "Proveedor".CELULAR,'+
  ' "Proveedor".TELEFONO,'+
  ' "Proveedor".EXTENCION,'+
  ' "Proveedor".FAX,'+
  ' "Proveedor".EMAIL,'+
  ' "Proveedor".TERMINOS,'+
  ' "Proveedor".VENDEDOR,'+
  ' "Proveedor".PRECIO,'+
  ' "Proveedor".SUSPENDIDO,'+
  ' "Proveedor".EXCENTO,'+
  ' "Proveedor".FECHAINGRESO,'+
  ' "Proveedor".LIMITECREDITO,'+
  ' "Proveedor".NOTAS,'+
  ' "Proveedor".DIASCREDITO,'+
  ' "Proveedor".DOCUMENTO,'+
  ' "Proveedor".CUIT,'+
  ' "Proveedor".IIBB,'+
  ' "Proveedor".RUBRO,'+
  ' "Proveedor".IVA,'+
  ' "Proveedor".MSN,'+
  ' "Proveedor".CONTACTO,'+
  ' "Proveedor".GERENTE,'+
  ' "Proveedor".BANCO,'+
  ' "Proveedor".CTACTE,'+
  ' "Proveedor".FORMADEPAGO,'+
  ' "Proveedor".VENCIMIENTO,'+
  ' "Proveedor".ZONA,'+
  ' "Proveedor".CTA,'+
  ' "Proveedor".CTANOMBRE,'+
  ' "Proveedor".CTATIPO,'+
  ' "Proveedor".CTAANTICIPO,'+
  ' "Proveedor".PAGARE'+
  ' FROM'+
  ' "Proveedor"'+
  ' WHERE CODIGO='+CodigoDBEdit.Text, 'ProveedoresDetalle');
 ImprimirDataModule.Free;
end;

procedure TProveedorForm.DBEdit24Exit(Sender: TObject);
begin
SiBitBtn.SetFocus;
end;

procedure TProveedorForm.TablaAfterCancel(DataSet: TDataSet);
begin
    Tabla.Transaction.RollbackRetaining;
end;

procedure TProveedorForm.TablaAfterDelete(DataSet: TDataSet);
begin
    Tabla.Transaction.CommitRetaining;
end;

procedure TProveedorForm.TablaAfterInsert(DataSet: TDataSet);
begin
       Tabla.FieldByName('CtaNombre').AsString:='76';
       Tabla.FieldByName('CtaTipo').AsString:='13';
       Tabla.FieldByName('CtaAnticipo').AsString:='36';
end;

procedure TProveedorForm.TablaAfterPost(DataSet: TDataSet);
begin
    Tabla.Transaction.CommitRetaining;
end;

end.
