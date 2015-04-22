unit UFSelOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, StdCtrls, DB, Buttons, Grids, DBGrids, ADODB;

type
  TFSelOrden = class(TForm)
    AQOrdenes: TADOQuery;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DSOrdenes: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    AQOrdenesCodOrden: TIntegerField;
    AQOrdenesCodCliente: TIntegerField;
    AQOrdenesNombreCliente: TWideStringField;
    AQOrdenesEstado: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cancela: boolean;
  end;

var
  FSelOrden: TFSelOrden;

implementation

{$R *.dfm}

procedure TFSelOrden.BitBtn1Click(Sender: TObject);
begin
  Cancela := False;
  Close;
end;

procedure TFSelOrden.BitBtn2Click(Sender: TObject);
begin
  Cancela := True;
  Close;
end;

procedure TFSelOrden.Edit1Change(Sender: TObject);
begin
  If (Edit1.Text <> '') then
  begin
    AQOrdenes.Filtered := False;
    AQOrdenes.Filter := 'NombreCliente Like ''' + Edit1.Text + '*''';
    AQOrdenes.Filtered := True;
  end
  else
    AQOrdenes.Filtered := False;
end;

procedure TFSelOrden.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN then
    DBGrid1.SetFocus;
end;

procedure TFSelOrden.FormShow(Sender: TObject);
begin
  AQOrdenes.Open;
end;

end.
