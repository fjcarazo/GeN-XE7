unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  shellapi,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    RadioGroup1: TRadioGroup;
    {
      procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);
      procedure XlsEndStream(XlsStream: TStream);
      procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word;
      const AValue: string);
      procedure XlsWriteCellNumber(XlsStream: TStream; const ACol,
      ARow: Word; const AValue: Double);
      procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word;
      const AValue: Integer);
    }
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  CXlsBof: array [0 .. 5] of Word = (
    $809,
    8,
    00,
    $10,
    0,
    0
  );
  CXlsEof: array [0 .. 1] of Word = (
    $0A,
    00
  );
  CXlsLabel: array [0 .. 5] of Word = (
    $204,
    0,
    0,
    0,
    0,
    0
  );
  CXlsNumber: array [0 .. 4] of Word = (
    $203,
    14,
    0,
    0,
    0
  );
  CXlsRk: array [0 .. 4] of Word = (
    $27E,
    10,
    0,
    0,
    0
  );

implementation

{$R *.dfm}

procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);
begin
  // CXlsBof[4] := BuildNumber;
  XlsStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
end;

procedure XlsEndStream(XlsStream: TStream);
begin
  XlsStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
end;

procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Integer);
var
  V: Integer;
begin
  CXlsRk[2] := ARow;
  CXlsRk[3] := ACol;
  XlsStream.WriteBuffer(CXlsRk, SizeOf(CXlsRk));
  V := (AValue shl 2) or 2;
  XlsStream.WriteBuffer(V, 4);
end;

procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: Double);
begin
  CXlsNumber[2] := ARow;
  CXlsNumber[3] := ACol;
  XlsStream.WriteBuffer(CXlsNumber, SizeOf(CXlsNumber));
  XlsStream.WriteBuffer(AValue, 8);
end;

procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: string);
var
  L: Word;
begin

  L := Length(AValue);
  CXlsLabel[1] := 8 + L;
  CXlsLabel[2] := ARow;
  CXlsLabel[3] := ACol;
  CXlsLabel[5] := L;
  XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
  XlsStream.WriteBuffer(Pointer(AValue)^, L);

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  aa: string;
  FStream: TFileStream;
  I, J: Integer;
begin

  aa := ExtractFilePath(Application.ExeName) + trim(Edit3.Text) + '.xls';

  FStream := TFileStream.Create(aa, fmCreate);
  // FStream := TFileStream.Create('J:\e.xls', fmCreate);
  try

    XlsBeginStream(FStream, 0);

    for I := 1 to strtoint(Edit2.Text) do // Columnas
      for J := 1 to strtoint(Edit1.Text) do // Filas
      begin

        case RadioGroup1.ItemIndex of
          0:
            XlsWriteCellNumber(FStream, I, J, 34.34);
          1:
            XlsWriteCellRk(FStream, I, J, 3434);
          2:
            XlsWriteCellLabel(FStream, I, J, Format('Cell: %d,%d', [I, J]));
        else
          ;
        end;

      end;

    XlsEndStream(FStream);

  finally
    FStream.Free;
  end;

  ShellExecute(Handle, nil, PChar(aa), '', '', SW_SHOWNORMAL);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin

  close;

end;

end.
