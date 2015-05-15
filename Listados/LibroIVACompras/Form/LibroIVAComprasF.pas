unit LibroIVAComprasF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImprimirDM, ComCtrls, StdCtrls, Buttons, ExtCtrls, DataModule,
  Grids, DBGrids, OleCtrls, SHDocVw, jpeg, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TLibroIVAComprasForm = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DataSource: TDataSource;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    Tabla: TIBQuery;
    TablaEMPRESA: TIBStringField;
    TablaDESDE: TIBStringField;
    TablaHASTA: TIBStringField;
    TablaCODIGO: TIntegerField;
    TablaFECHA: TDateTimeField;
    TablaFACTURA: TIBStringField;
    TablaPROVEEDOR: TIBStringField;
    TablaCUIT: TIBStringField;
    TablaCONDICION: TIBStringField;
    TablaNG1: TFloatField;
    TablaNG2: TFloatField;
    TablaNG3: TFloatField;
    TablaIVA1: TFloatField;
    TablaIVA2: TFloatField;
    TablaIVA3: TFloatField;
    TablaOEIIBB: TFloatField;
    TablaIDERPYPAC: TFloatField;
    TablaITF: TFloatField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure DTP1CloseUp(Sender: TObject);
    procedure DTP2CloseUp(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    Procedure EnvioRamTerminado;
    { Private declarations }
  public
    Cancela: Boolean;
    Reporte, Cuenta: String;
    { Public declarations }
  end;

type
  TCompartido = record
    Numero: Integer;
    Cadena: String[20];
  end;

  PCompartido = ^TCompartido;

var
  LibroIVAComprasForm: TLibroIVAComprasForm;
  Compartido: PCompartido;
  FicheroM: THandle;

implementation

{$R *.dfm}

Procedure TLibroIVAComprasForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TLibroIVAComprasForm.FormCreate(Sender: TObject);
begin
  // DM := TDM.Create(Self);
  DTP2.DateTime := Now;
  DM.ConfigQuery.Open;
end;

procedure TLibroIVAComprasForm.DTP1CloseUp(Sender: TObject);
begin
  If DTP1.Date > DTP2.Date then
  begin
    MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.', mtError,
      [mbOK], 0);
    DTP1.DateTime := DTP2.DateTime;
  end;
end;

procedure TLibroIVAComprasForm.DTP2CloseUp(Sender: TObject);
begin
  If DTP2.Date < DTP1.Date then
  begin
    MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.', mtError,
      [mbOK], 0);
    DTP2.DateTime := DTP1.DateTime;
  end;
end;

procedure TLibroIVAComprasForm.BitBtn2Click(Sender: TObject);
begin
  Cancela := true;
  Close;
end;

procedure TLibroIVAComprasForm.BitBtn1Click(Sender: TObject);
begin
  Tabla.SQL.Text := 'SELECT ' + '  ' +
    QuotedStr(DM.ConfigQuery.FieldByName('Nombre').AsString) + ' AS Empresa, ' +
    '  ' + QuotedStr(DateToStr(DTP1.Date)) + ' AS Desde,  ' + '  ' +
    QuotedStr(DateToStr(DTP2.Date)) + ' AS Hasta, ' +
    '  "LibroIVAcompra".CODIGO,  ' + '  "LibroIVAcompra".FECHA,    ' +
    '  "LibroIVAcompra".FACTURA,   ' + '  "LibroIVAcompra".PROVEEDOR,  ' +
    '  "LibroIVAcompra".CUIT,      ' + '  "LibroIVAcompra".CONDICION, ' +
    '  "LibroIVAcompra".NG1,      ' + '  "LibroIVAcompra".NG2,      ' +
    '  "LibroIVAcompra".NG3,     ' + '  "LibroIVAcompra".IVA1,    ' +
    '  "LibroIVAcompra".IVA2,    ' + '  "LibroIVAcompra".IVA3,     ' +
    '  "LibroIVAcompra".OEIIBB,    ' + '  "LibroIVAcompra".IDERPYPAC,  ' +
    '  "LibroIVAcompra".ITF     ' + 'FROM                    ' +
    '  "LibroIVAcompra"    ' + 'WHERE                ' +
    '  ("LibroIVAcompra".FECHA >= ' + QuotedStr(DateToStr(DTP1.Date)) +
    ' ) AND ' + '  ("LibroIVAcompra".FECHA <= ' + QuotedStr(DateToStr(DTP2.Date)
    ) + ' )   ' + 'ORDER BY  ' + '  "LibroIVAcompra".CODIGO' + '';
  Tabla.Open;
end;

procedure TLibroIVAComprasForm.FormDestroy(Sender: TObject);
begin
  EnvioRamTerminado;
end;

procedure TLibroIVAComprasForm.BitBtn3Click(Sender: TObject);
begin
  if Tabla.Active = true then
  begin
    ImprimirDataModule := TImprimirDataModule.Create(Self);
    ImprimirDataModule.SImpr(Tabla.SQL.Text, 'LibroIVACompras');
    ImprimirDataModule.Free;
  end;
end;

end.
