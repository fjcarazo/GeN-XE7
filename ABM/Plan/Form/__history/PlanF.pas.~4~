unit PlanF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, ExtCtrls, DataModule,
  IBCustomDataSet, IBTable, OleCtrls, SHDocVw;

type
  TPlanForm = class(TForm)
    DataSource: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    Panel2: TPanel;
    NoBitBtn: TBitBtn;
    SiBitBtn: TBitBtn;
    DBText1: TDBText;
    Label1: TLabel;
    Label12: TLabel;
    Tabla: TIBTable;
    DBNavigator1: TDBNavigator;
    BuscarBitBtn: TBitBtn;
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanForm: TPlanForm;

implementation

uses BuscarPlan;

{$R *.dfm}

procedure TPlanForm.SiBitBtnClick(Sender: TObject);
begin
  If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
    Tabla.Post;
  Close;
end;

procedure TPlanForm.NoBitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TPlanForm.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
  Tabla.Open;
  Tabla.Insert;
end;

procedure TPlanForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TPlanForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then
    BuscarBitBtn.Click;
end;

procedure TPlanForm.FormShow(Sender: TObject);
begin
  DBEdit2.SetFocus;
end;

procedure TPlanForm.BuscarBitBtnClick(Sender: TObject);
begin
  Tabla.Cancel;
  BuscarPlanForm := TBuscarPlanForm.Create(Self);
  try
    BuscarPlanForm.ShowModal;
  finally
    Tabla.Locate('CODIGO', (BuscarPlanForm.Tabla.FieldByName('CODIGO')
      .AsString), []);
    BuscarPlanForm.Free;
  end;
end;

procedure TPlanForm.TablaAfterCancel(DataSet: TDataSet);
begin
  Tabla.Transaction.RollbackRetaining;
end;

procedure TPlanForm.TablaAfterDelete(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

procedure TPlanForm.TablaAfterPost(DataSet: TDataSet);
begin
  Tabla.Transaction.CommitRetaining;
end;

end.
