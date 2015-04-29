unit ListadoCuentasF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DataModule;

type
  TListadoCuentasForm = class(TForm)
    LblNombre: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Debe: TLabel;
    Haber: TLabel;
    Saldo: TLabel;
    BitBtn3: TBitBtn;
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
  ListadoCuentasForm: TListadoCuentasForm;
  Compartido: PCompartido;
  FicheroM: THandle;

implementation

{$R *.dfm}

Procedure TListadoCuentasForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TListadoCuentasForm.FormCreate(Sender: TObject);
begin
  DTP2.DateTime := Now;
  { Miramos si existe el fichero }
  FicheroM := OpenFileMapping(FILE_MAP_READ, False, 'Cuentas');
  { Si no existe, Error }
  if FicheroM = 0 then
    LblNombre.Caption := 'Caja'
    // raise Exception.Create('Error');
  else
  begin
    Compartido := MapViewOfFile(FicheroM, FILE_MAP_READ, 0, 0, 0);
    LblNombre.Caption := Compartido^.Cadena;
  end;

  if LblNombre.Caption = 'Caja' then
    Cuenta := 'Caja'
  else if LblNombre.Caption = 'Gan' then
  begin
    Cuenta := 'PerdidasyGanancias';
    LblNombre.Caption := 'Perdidas y Ganancias';
  end;
end;

procedure TListadoCuentasForm.DTP1CloseUp(Sender: TObject);
begin
  If DTP1.Date > DTP2.Date then
  begin
    MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.', mtError,
      [mbOK], 0);
    DTP1.DateTime := DTP2.DateTime;
  end;
end;

procedure TListadoCuentasForm.DTP2CloseUp(Sender: TObject);
begin
  If DTP2.Date < DTP1.Date then
  begin
    MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.', mtError,
      [mbOK], 0);
    DTP2.DateTime := DTP1.DateTime;
  end;
end;

procedure TListadoCuentasForm.BitBtn2Click(Sender: TObject);
begin
  Cancela := true;
  Close;
end;

procedure TListadoCuentasForm.BitBtn1Click(Sender: TObject);
VAR
  i: Integer;
begin
  with FormatSettings do
  begin
    Debe.Caption := '0';
    Haber.Caption := '0';
    Saldo.Caption := '0';

    ADOQuery1.SQL.Text := 'SELECT Debe - Haber As SubTotal,"' + Empresa +
      '" As Empresa,"' + DateToStr(DTP1.Date) + '" As Desde,"' +
      DateToStr(DTP2.Date) + '" As Hasta,* FROM ' + Cuenta;
    ShortDateFormat := '#yyyy/mm/dd#';
    ADOQuery1.SQL.Add(' WHERE Fecha >= ' + DateToStr(DTP1.Date) +
      ' AND Fecha <= ' + DateToStr(DTP2.Date));
    ADOQuery1.SQL.Add(' ORDER BY Fecha');
    ADOQuery1.Open;
    ShortDateFormat := 'dd/mm/yyyy';

    for i := 1 to ADOQuery1.RecordCount do
    begin
      Debe.Caption := FloatToStr(StrToFloat(Debe.Caption) +
        ADOQuery1.FieldByName('Debe').AsFloat);
      Haber.Caption := FloatToStr(StrToFloat(Haber.Caption) +
        ADOQuery1.FieldByName('Haber').AsFloat);
      Saldo.Caption := FloatToStr(StrToFloat(Debe.Caption) -
        StrToFloat(Haber.Caption));
      ADOQuery1.Next;
    end;
  end;

end;

procedure TListadoCuentasForm.FormDestroy(Sender: TObject);
begin
  EnvioRamTerminado;
end;

procedure TListadoCuentasForm.BitBtn3Click(Sender: TObject);
begin
  { RvProject1.ProjectFile := Path + 'Report\Cuentas.rav';
    RvProject1.Execute;
    RvProject1.Close; }
  ADOQuery1.Close;
end;

end.
