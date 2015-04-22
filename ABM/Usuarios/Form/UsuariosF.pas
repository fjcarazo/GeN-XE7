unit UsuariosF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, Mask,
  IBCustomDataSet, IBTable, IBQuery, OleCtrls, SHDocVw;

type
  TUsuariosForm = class(TForm)
    Label1: TLabel;
    CodigoDBEdit: TDBEdit;
    DataSource: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    PermisosDataSource: TDataSource;
    Label5: TLabel;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Tabla: TIBTable;
    PermisoT: TIBQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    i: integer;
    { Public declarations }
  end;

var
  UsuariosForm: TUsuariosForm;

implementation

{$R *.dfm}

procedure TUsuariosForm.BitBtn1Click(Sender: TObject);
begin
  Tabla.Post;
  Close;
end;

procedure TUsuariosForm.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TUsuariosForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(self);
  PermisoT.Open;
  Tabla.Open;
  Tabla.Last;
end;

procedure TUsuariosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TUsuariosForm.TablaAfterCancel(DataSet: TDataSet);
begin
  Tabla.Transaction.RollbackRetaining;
end;

procedure TUsuariosForm.TablaAfterDelete(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

procedure TUsuariosForm.TablaAfterPost(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

end.
