unit UFClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, ExtCtrls, StdCtrls, Mask, DBCtrls, ComCtrls, DB, ADODB,
  Buttons, ImprimirDM, OleCtrls, SHDocVw, IBX.IBCustomDataSet, IBX.IBTable;

type
  TFClientes = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DataSource: TDataSource;
    DSUsuarios: TDataSource;
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
    CuentaDataSource: TDataSource;
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
    TabSheet5: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    VendedorDBEdit: TDBEdit;
    VendedorBitBtn: TBitBtn;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Label38: TLabel;
    IVALabel: TLabel;
    IVADBComboBox: TDBComboBox;
    CuentaDBLookupComboBox: TDBLookupComboBox;
    Label54: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label52: TLabel;
    Label51: TLabel;
    Label20: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    DBEdit27: TDBEdit;
    Label32: TLabel;
    GaranteDBEdit: TDBEdit;
    Label33: TLabel;
    BuscarGaranteBitBtn: TBitBtn;
    GaranteLabel: TLabel;
    Panel1: TPanel;
    Label34: TLabel;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    DBNavigator1: TDBNavigator;
    ImprimirBitBtn: TBitBtn;
    BuscarBitBtn: TBitBtn;
    Tabla: TIBTable;
    UsuarioT: TIBTable;
    CuentaT: TIBTable;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TablaAfterInsert(DataSet: TDataSet);
    procedure VendedorBitBtnClick(Sender: TObject);
    procedure IVADBComboBoxChange(Sender: TObject);
    procedure BuscarGaranteBitBtnClick(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    desc: string;
    { Public declarations }
  end;

var
  FClientes: TFClientes;

implementation

uses UFBuscaCliente, BuscarVendedor;

{$R *.dfm}

procedure TFClientes.SiBitBtnClick(Sender: TObject);
begin
  desc := CodigoDBEdit.text;
  If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
    Tabla.Post;
  Close;
end;

procedure TFClientes.BuscarBitBtnClick(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  Tabla.Cancel;
  FBuscaCliente := TFBuscaCliente.Create(self);
  try
    FBuscaCliente.ShowModal;
  finally
    Tabla.Locate('CODIGO', (FBuscaCliente.Tabla.FieldByName('CODIGO')
      .AsString), []);
    FBuscaCliente.Free;
  end;
  Tabla.Edit;
  DBEdit2.SetFocus;
end;

procedure TFClientes.FormCreate(Sender: TObject);
begin
//  DM := TDM.Create(self);
  UsuarioT.Open;
  CuentaT.Open;
  Tabla.Open;
  Tabla.Insert;
end;

procedure TFClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TFClientes.FormShow(Sender: TObject);
begin
  TabSheet1.PageControl.ActivePageIndex := 0;
  DBEdit2.SetFocus;
end;

procedure TFClientes.ImprimirBitBtnClick(Sender: TObject);
begin
  ImprimirDataModule := TImprimirDataModule.Create(self);
  ImprimirDataModule.SImpr('Select * From "Cliente" WHERE CODIGO=' +
    CodigoDBEdit.text, 'Clientes');
  ImprimirDataModule.Free;
end;

procedure TFClientes.IVADBComboBoxChange(Sender: TObject);
begin
  if IVADBComboBox.ItemIndex = 0 then
    IVALabel.Caption := 'Consumidor Final'
  else if IVADBComboBox.ItemIndex = 1 then
    IVALabel.Caption := 'Responsable Monotributo'
  else if IVADBComboBox.ItemIndex = 2 then
    IVALabel.Caption := 'Responsable Inscripto'
  else if IVADBComboBox.ItemIndex = 3 then
    IVALabel.Caption := 'Exento'
  else
    IVALabel.Caption := 'No Responsable';
end;

procedure TFClientes.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TFClientes.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_F3 then
    VendedorBitBtn.Click;
  IF Key = VK_F5 then
    BuscarBitBtn.Click;
end;

procedure TFClientes.BuscarGaranteBitBtnClick(Sender: TObject);
begin
  FBuscaCliente := TFBuscaCliente.Create(self);
  try
    FBuscaCliente.ShowModal;
  finally
    GaranteDBEdit.text := FBuscaCliente.Tabla.FieldByName('CODIGO').AsString;
    GaranteLabel.Caption := FBuscaCliente.Tabla.FieldByName('NOMBRE').AsString;
    FBuscaCliente.Free;
  end;
  SiBitBtn.SetFocus;
end;

procedure TFClientes.TablaAfterCancel(DataSet: TDataSet);
begin
  Tabla.Transaction.RollbackRetaining;
end;

procedure TFClientes.TablaAfterDelete(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

procedure TFClientes.TablaAfterInsert(DataSet: TDataSet);
begin
  Tabla.FieldByName('CtaNombre').AsString := '9';
  Tabla.FieldByName('CtaTipo').AsString := '9';
  Tabla.FieldByName('CtaAnticipo').AsString := '9';
  VendedorDBEdit.text := '0';
end;

procedure TFClientes.TablaAfterPost(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

procedure TFClientes.VendedorBitBtnClick(Sender: TObject);
begin
  BuscarVendedorForm := TBuscarVendedorForm.Create(self);
  try
    BuscarVendedorForm.ShowModal;
  finally
    VendedorDBEdit.text := BuscarVendedorForm.Tabla.FieldByName
      ('Codigo').AsString;
    VendedorLabel.Caption := BuscarVendedorForm.Tabla.FieldByName
      ('Nombre').AsString;
    BuscarVendedorForm.Free;
  end;
end;

end.
