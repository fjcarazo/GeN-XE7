unit CalculoCuotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls, Buttons, ExtCtrls;

type
  TCalculoCuotasForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LbSubTotal: TLabel;
    LbImpuesto: TLabel;
    LbTotal: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    LbPagado: TLabel;
    LbSaldo: TLabel;
    Aceptar: TBitBtn;
    Cancelar: TBitBtn;
    Query: TADOQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    CantidadEdit: TEdit;
    ImporteEdit: TEdit;
    InteresEdit: TEdit;
    TotalEdit: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    EntregaFloatEdit: TEdit;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EntregaFloatEditChange(Sender: TObject);
    procedure CalculaSaldo;
    procedure AceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure TotalEditExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CantidadEditExit(Sender: TObject);
    procedure ImporteEditExit(Sender: TObject);
    procedure InteresEditExit(Sender: TObject);
    procedure EntregaFloatEditExit(Sender: TObject);
  private
    { Private declarations }
  public
    CuotasTotal: Integer;
    Saldo, Total, Pagado, SubTotal, Impuesto, Interes, Cantidad,
      Importe: Double;
    OK: Boolean;
    procedure Valores(SubT, Imp, Tot: Double);
    { Public declarations }
  end;

var
  CalculoCuotasForm: TCalculoCuotasForm;

implementation

{$R *.dfm}

procedure TCalculoCuotasForm.CalculaSaldo;
begin
  if (CantidadEdit.Text <> '') and (ImporteEdit.Text <> '') and
    (LbSaldo.Caption <> '') and (InteresEdit.Text <> '') and
    (TotalEdit.Text <> '') and (EntregaFloatEdit.Text <> '') then
  begin
    // Calcula el Total
    SubTotal := 0;
    Saldo := 0;
    Pagado := 0;

    Pagado := StrToFloat(EntregaFloatEdit.Text);
    Cantidad := StrToFloat(CantidadEdit.Text);
    Importe := StrToFloat(ImporteEdit.Text);

    if Importe > 0 then
    begin
      Saldo := round(Importe * Cantidad);
      if Saldo < Importe * Cantidad then
        Saldo := Saldo + 1;
    end;

    LbPagado.Caption := Format('%8.2n', [Pagado]);
    LbSaldo.Caption := Format('%8.2n', [Saldo]);
  end;
end;

procedure TCalculoCuotasForm.Valores(SubT, Imp, Tot: Double);
begin
  SubTotal := SubT;
  Impuesto := Imp;
  Total := Tot;
  LbSubTotal.Caption := Format('%8.2n', [SubTotal]);
  LbImpuesto.Caption := Format('%8.2n', [Impuesto]);
  LbTotal.Caption := Format('%8.2n', [Total]);
  CalculaSaldo;
end;

procedure TCalculoCuotasForm.FormShow(Sender: TObject);
begin
  CantidadEdit.Text := IntToStr(CuotasTotal);
  ImporteEdit.Text := '0';
  InteresEdit.Text := FloatToStr(Interes);
  TotalEdit.Text := FloatToStr(Total); // LbTotal.Caption;

  Pagado := StrToFloat(EntregaFloatEdit.Text);
  Saldo := Total - StrToFloat(EntregaFloatEdit.Text);
  Interes := 1 + (StrToFloat(InteresEdit.Text)) / 100;
  Cantidad := StrToFloat(CantidadEdit.Text);
  Importe := StrToFloat(ImporteEdit.Text);

  ImporteEdit.Text :=
    FloatToStr(round(((Total - Pagado) * Interes) / Cantidad));
  if StrToFloat(ImporteEdit.Text) < (((Total - Pagado) * Interes) / Cantidad)
  then
    ImporteEdit.Text := FloatToStr(StrToFloat(ImporteEdit.Text) + 1);

  CalculaSaldo;

  Aceptar.SetFocus;
end;

procedure TCalculoCuotasForm.EntregaFloatEditChange(Sender: TObject);
begin
  CalculaSaldo;
end;

procedure TCalculoCuotasForm.AceptarClick(Sender: TObject);
begin
  OK := True;
  Close;
end;

procedure TCalculoCuotasForm.CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TCalculoCuotasForm.TotalEditExit(Sender: TObject);
begin
  { Total:=StrToFloat(TotalEdit.Text);
    CalculaSaldo; }
end;

procedure TCalculoCuotasForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then { if it's an enter key }
  begin
    Key := #0; { eat enter key }
    Perform(WM_NEXTDLGCTL, 0, 0); { move to next control }
  end;
end;

procedure TCalculoCuotasForm.CantidadEditExit(Sender: TObject);
begin
  if StrToFloat(CantidadEdit.Text) > 0 then
  begin
    ImporteEdit.Text :=
      FloatToStr
      (round(((StrToFloat(TotalEdit.Text) - StrToFloat(EntregaFloatEdit.Text) *
      (1 + StrToFloat(InteresEdit.Text)) / 100)) /
      StrToFloat(CantidadEdit.Text)));
    if StrToFloat(ImporteEdit.Text) <
      ((StrToFloat(TotalEdit.Text) - StrToFloat(EntregaFloatEdit.Text) *
      (1 + StrToFloat(InteresEdit.Text)) / 100)) / StrToFloat(CantidadEdit.Text)
    then
      ImporteEdit.Text := FloatToStr(StrToFloat(ImporteEdit.Text) + 1);
  end;
  CalculaSaldo;

  Aceptar.SetFocus;
end;

procedure TCalculoCuotasForm.ImporteEditExit(Sender: TObject);
begin
  if StrToFloat(ImporteEdit.Text) > 0 then
  begin
    CantidadEdit.Text :=
      FloatToStr
      (round(((StrToFloat(TotalEdit.Text) - StrToFloat(EntregaFloatEdit.Text)) *
      (1 + StrToFloat(InteresEdit.Text) / 100)) /
      StrToFloat(ImporteEdit.Text)));
    if StrToFloat(CantidadEdit.Text) <
      (Saldo * (1 + StrToFloat(InteresEdit.Text) / 100)) /
      StrToFloat(ImporteEdit.Text) then
      CantidadEdit.Text := FloatToStr(StrToFloat(CantidadEdit.Text) + 1);
  end;
  CalculaSaldo;
end;

procedure TCalculoCuotasForm.InteresEditExit(Sender: TObject);
begin
  if StrToFloat(CantidadEdit.Text) > 0 then
  begin
    ImporteEdit.Text :=
      FloatToStr
      (round(((StrToFloat(TotalEdit.Text) - StrToFloat(EntregaFloatEdit.Text)) *
      (1 + StrToFloat(InteresEdit.Text) / 100)) /
      StrToFloat(CantidadEdit.Text)));
    if StrToFloat(ImporteEdit.Text) <
      ((StrToFloat(TotalEdit.Text) - StrToFloat(EntregaFloatEdit.Text)) *
      (1 + StrToFloat(InteresEdit.Text) / 100)) / StrToFloat(CantidadEdit.Text)
    then
      ImporteEdit.Text := FloatToStr(StrToFloat(ImporteEdit.Text) + 1);
  end;
  CalculaSaldo;
end;

procedure TCalculoCuotasForm.EntregaFloatEditExit(Sender: TObject);
begin
  { Pagado := StrToFloat(EntregaFloatEdit.Text);
    Saldo  := Total - StrToFloat(EntregaFloatEdit.Text);
    Interes:= 1+(StrToFloat(InteresEdit.Text))/100;
    Cantidad:= StrToFloat(CantidadEdit.Text);
    Importe:= StrToFloat(ImporteEdit.Text);

    ImporteEdit.Text:=FloatToStr(round(    ( (Total-Pagado)*Interes)      /Cantidad ));
    if StrToFloat(ImporteEdit.Text) < (((Total-Pagado)*Interes)/Cantidad) then
    ImporteEdit.Text:=FloatToStr(StrToFloat(ImporteEdit.Text)+1);

    CalculaSaldo;

    Aceptar.SetFocus; }
end;

end.
