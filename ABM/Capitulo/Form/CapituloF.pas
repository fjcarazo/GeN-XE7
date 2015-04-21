unit CapituloF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ADODB, DB, Buttons, ExtCtrls, DataModule,
  IBCustomDataSet, IBTable, OleCtrls, SHDocVw;

type
  TCapituloForm = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    DataSource: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Tabla: TIBTable;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
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
  CapituloForm: TCapituloForm;

implementation

uses BuscarCapituloF;



{$R *.dfm}

procedure TCapituloForm.BitBtn1Click(Sender: TObject);
begin
   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
      Tabla.Post;
   Close;
end;

procedure TCapituloForm.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TCapituloForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
Tabla.Open;
Tabla.Insert;
end;

procedure TCapituloForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TCapituloForm.FormShow(Sender: TObject);
begin
DBEdit2.SetFocus;
end;

procedure TCapituloForm.BitBtn3Click(Sender: TObject);
begin
 Tabla.Cancel;
   BuscarCapituloForm:=TBuscarCapituloForm.Create(self);
   try
      BuscarCapituloForm.ShowModal;
   finally
         Tabla.Locate('CODIGO',(BuscarCapituloForm.Tabla.FieldByName('CODIGO').AsString),[]);
      BuscarCapituloForm.Free;
   end;
end;

procedure TCapituloForm.TablaAfterCancel(DataSet: TDataSet);
begin
Tabla.Transaction.RollbackRetaining;
end;

procedure TCapituloForm.TablaAfterDelete(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TCapituloForm.TablaAfterPost(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

end.
