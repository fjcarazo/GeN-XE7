unit TipoGastoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, ExtCtrls, DataModule,
  IBQuery, IBCustomDataSet, IBTable, OleCtrls, SHDocVw;

type
  TTipoGastoForm = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    DS: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Tabla: TIBTable;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TipoGastoForm: TTipoGastoForm;

implementation

uses BuscarTipoGastoF;



{$R *.dfm}

procedure TTipoGastoForm.BitBtn1Click(Sender: TObject);
begin
   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then Tabla.Post;
   Close;
end;

procedure TTipoGastoForm.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TTipoGastoForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
Tabla.Open;
Tabla.Insert;
end;

procedure TTipoGastoForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TTipoGastoForm.FormShow(Sender: TObject);
begin
   DBEdit2.SetFocus;
end;

procedure TTipoGastoForm.TablaAfterCancel(DataSet: TDataSet);
begin
Tabla.Transaction.RollbackRetaining;
end;

procedure TTipoGastoForm.TablaAfterDelete(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TTipoGastoForm.TablaAfterPost(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TTipoGastoForm.BitBtn3Click(Sender: TObject);
begin
 Tabla.Cancel;
   BuscarTipoGastoForm:=TBuscarTipoGastoForm.Create(self);
   try
      BuscarTipoGastoForm.ShowModal;
   finally
         Tabla.Locate('CODIGO',(BuscarTipoGastoForm.Tabla.FieldByName('CODIGO').AsString),[]);
      BuscarTipoGastoForm.Free;
   end;
end;

end.
