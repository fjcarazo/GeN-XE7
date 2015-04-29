unit GestionCobranzaF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DataModule, DB, ADODB, Mask, DBCtrls, Grids, DBGrids,
  ExtCtrls, Buttons, OleCtrls, SHDocVw, IBX.IBQuery, IBX.IBCustomDataSet,
  IBX.IBTable;

type
  TGestionCobranzaForm = class(TForm)
    DS: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    FechaDBEdit: TDBEdit;
    HoraDBEdit: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    ClienteDS: TDataSource;
    DBGrid2: TDBGrid;
    ClienteDBLookupComboBox: TDBLookupComboBox;
    DBGrid3: TDBGrid;
    CobranzaDataSource: TDataSource;
    DBGrid4: TDBGrid;
    TipoDBLookupComboBox: TDBLookupComboBox;
    VerCobranzaBitBtn: TBitBtn;
    ExtraJudicialBitBtn: TBitBtn;
    JudicialBitBtn: TBitBtn;
    GrabarBitBtn: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    TratadoDataSource: TDataSource;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    GestionCobranzaDataSource: TDataSource;
    DBMemo2: TDBMemo;
    Tabla: TIBTable;
    ClienteT: TIBQuery;
    CobranzaT: TIBQuery;
    TratadoT: TIBQuery;
    GestionCobranzaT: TIBQuery;
    Q: TIBQuery;
    procedure FormShow(Sender: TObject);
    procedure QueryAfterInsert(DataSet: TDataSet);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure VerCobranzaBitBtnClick(Sender: TObject);
    procedure ExtraJudicialBitBtnClick(Sender: TObject);
    procedure JudicialBitBtnClick(Sender: TObject);
    procedure GrabarBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QueryAfterPost(DataSet: TDataSet);
    procedure QueryAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure nuevo;
    { Public declarations }
  end;

var
  GestionCobranzaForm: TGestionCobranzaForm;

implementation

uses VerCobranza;

{$R *.dfm}

procedure TGestionCobranzaForm.QueryAfterDelete(DataSet: TDataSet);
begin
  GestionCobranzaT.Close;
  GestionCobranzaT.Open;
end;

procedure TGestionCobranzaForm.QueryAfterInsert(DataSet: TDataSet);
begin
  nuevo;
end;

procedure TGestionCobranzaForm.QueryAfterPost(DataSet: TDataSet);
begin
  GestionCobranzaT.Close;
  GestionCobranzaT.Open;
end;

procedure TGestionCobranzaForm.nuevo;
begin
  FechaDBEdit.Text := DateToStr(now);
  HoraDBEdit.Text := TimeToStr(now);

end;

procedure TGestionCobranzaForm.VerCobranzaBitBtnClick(Sender: TObject);
begin
  VerCobranzaForm := TVerCobranzaForm.Create(self);
  with VerCobranzaForm do
  begin
    DiasEdit.Text := '1';
    Fecha := FormatDateTime('mm/dd/yyyy', (now - StrToInt(DiasEdit.Text)));
    GrillaQ.SQL.Text := 'SELECT' + '  "CtaCteItem".VENCE,' +
      '  "Cliente".NOMBRE,' + '  "CtaCteItem".CUOTA,' + '  "CtaCteItem".PAGADO,'
      + '  "CtaCteItem".IMPORTE,' + '  "CtaCteItem".DESCRIPCION,' +
      '  "CtaCte".CLIENTE,' + '  "CtaCte".COBRANZA,' + '  "CtaCte".OPERACION' +
      ' FROM' + '  "CtaCte"' +
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)' +
      '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'
      + ' WHERE' + '  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND' +
      '  ("CtaCteItem".VENCE < ' + QuotedStr(Fecha) + ') AND' +
      '  (("CtaCte".COBRANZA is null) OR ("CtaCte".COBRANZA=1))' + ' ORDER BY' +
      '  "CtaCteItem".VENCE' + '';
    GrillaQ.Open;
  end;
  try
    VerCobranzaForm.ShowModal;
  finally
    with VerCobranzaForm do
    begin
      if GrillaQ.FieldByName('CLIENTE').AsString <> '' then
      begin
        Tabla.Insert;
        Tabla.FieldByName('OPERACION').AsInteger :=
          GrillaQ.FieldByName('OPERACION').AsInteger;
        Tabla.FieldByName('CLIENTE').AsInteger := GrillaQ.FieldByName('CLIENTE')
          .AsInteger;
        if GrillaQ.FieldByName('COBRANZA').AsInteger = 0 then
        begin
          Q.SQL.Text := 'Update "CtaCte" Set Cobranza = 1 Where ' +
            '(CLIENTE = ' + GrillaQ.FieldByName('CLIENTE').AsString +
            ') and (OPERACION = ' + GrillaQ.FieldByName('OPERACION')
            .AsString + ')';
          Q.ExecSQL;
          Tabla.FieldByName('COBRANZA').AsInteger := 1;
        end
        else
          Tabla.FieldByName('COBRANZA').AsInteger :=
            GrillaQ.FieldByName('COBRANZA').AsInteger;
        FechaDBEdit.Text := DateToStr(now);
        HoraDBEdit.Text := TimeToStr(now);

        GestionCobranzaT.SQL.Text := 'Select * From "GestionCobranza"' +
          ' WHERE CLIENTE=' + (GrillaQ.FieldByName('CLIENTE').AsString) + '';
        GestionCobranzaT.Open;
      end;
    end;
    VerCobranzaForm.Free;
  end;
end;

procedure TGestionCobranzaForm.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TGestionCobranzaForm.ExtraJudicialBitBtnClick(Sender: TObject);
begin
  Q.SQL.Text := 'Update "CtaCte" Set COBRANZA = 2 Where ' +
    '("CtaCte".CLIENTE = ' + Tabla.FieldByName('CLIENTE').AsString +
    ') and ("CtaCte".OPERACION = ' + Tabla.FieldByName('OPERACION')
    .AsString + ')';
  Q.ExecSQL;
  Q.Transaction.CommitRetaining;
  Close;
end;

procedure TGestionCobranzaForm.FormCreate(Sender: TObject);
begin
  //DM := TDM.Create(self);
  Tabla.Open;
  ClienteT.Open;
  CobranzaT.Open;
  TratadoT.Open;
end;

procedure TGestionCobranzaForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TGestionCobranzaForm.FormShow(Sender: TObject);
begin
  VerCobranzaBitBtn.Click;
end;

procedure TGestionCobranzaForm.GrabarBitBtnClick(Sender: TObject);
begin
  Tabla.Post;
  GestionCobranzaT.Close;
  GestionCobranzaT.Open;
  VerCobranzaBitBtn.Click;
end;

procedure TGestionCobranzaForm.JudicialBitBtnClick(Sender: TObject);
begin
  Q.SQL.Text := 'Update "CtaCte" Set COBRANZA = 3 Where ' +
    '("CtaCte".CLIENTE = ' + Tabla.FieldByName('CLIENTE').AsString +
    ') and ("CtaCte".OPERACION = ' + Tabla.FieldByName('OPERACION')
    .AsString + ')';
  Q.ExecSQL;
  Q.Transaction.CommitRetaining;
  Close;
end;

end.
