//******************************************************************************
//* DeGsoft GeN                                                                *
//* ===========                                                                *
//* GeN(tm) : ERP Software (http://www.degsoft.com.ar/sistemas/GeN)            *
//* Copyright (c) 2002-2011 by the Degsoft                                     *
//* For more information visit: http://www.degsoft.com.ar                      *
//* This program is free software. You can redistribute it and/or modify       *
//* it under the terms of the GNU General Public License as published by       *
//* the Free Software Foundation; either version 3 of the License.             *
//******************************************************************************

unit RendicionCartonF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, DB, Buttons, ImprimirDM, DataModule,
  ExtCtrls, IBCustomDataSet, IBQuery, OleCtrls, SHDocVw;

type
  TRendicionCartonForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    ClienteLabel: TLabel;
    Label8: TLabel;
    PlanLabel: TLabel;
    ClienteEdit: TEdit;
    PlanEdit: TEdit;
    Label1: TLabel;
    Tabla: TIBQuery;
    SeleccionarCartonBitBtn: TBitBtn;
    Q: TIBQuery;
    Label2: TLabel;
    CBEdit: TEdit;
    Label3: TLabel;
    TotalEdit: TEdit;
    Label6: TLabel;
    CuotaEdit: TEdit;
    Label4: TLabel;
    CobradorEdit: TEdit;
    CobradorLabel: TLabel;
    ComisionEdit: TEdit;
    Label7: TLabel;
    Label10: TLabel;
    PagarCheckBox: TCheckBox;
    Label9: TLabel;
    CuotasEdit: TEdit;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SeleccionarCartonBitBtnClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  CTACLIENTE,
  CTACOBRADOR,
  CTAANTCOBR,
  fecha, Oculto, CB, Plan :string;
    { Public declarations }
  end;

var
  RendicionCartonForm: TRendicionCartonForm;

implementation

{$R *.dfm}

procedure TRendicionCartonForm.SeleccionarCartonBitBtnClick(Sender: TObject);
begin
CB:=CBEdit.text;
PlanEdit.Text:=IntToStr( StrToInt(Format('%8.0f',[ (StrToFloat(CB)/10000000) -100000 ])));
ClienteEdit.Text:=IntToStr( StrToInt(Format('%8.0f',[ ((StrToFloat(CB)/10000)-100000000)-(StrToFloat(PlanEdit.Text)*1000) ])));
CuotaEdit.Text:=IntToStr( StrToInt(Format('%8.0f',[ (StrToFloat(CB)-1000000000000)-(StrToFloat(PlanEdit.Text)*10000000)-(StrToFloat(ClienteEdit.Text)*10000)])));

Q.SQL.Text:='SELECT'+
'  "CtaCteItem".CODIGO,'+
'  "CtaCteItem".CUOTA,'+
'  "CtaCteItem".VENCE,'+
'  "CtaCteItem".IMPORTE,'+
'  "CtaCteItem".PAGADO,'+
'  "CtaCteItem".DESCRIPCION,'+
'  "Cliente".NOMBRE AS CLIENTE,'+
'  "Cliente".CTANOMBRE AS CTACLIENTE,'+
'  "CtaCte".OPERACION,'+
'  "CtaCte".COBRADOR AS CODCOBRADOR,'+
'  "Cobrador".COMISION,'+
'  "Cobrador".NOMBRE AS COBRADOR,'+
'  "Cobrador".CTANOMBRE AS CTACOBRADOR,'+
'  "Cobrador".CTAANTICIPO AS CTAANTCOBR '+
' FROM'+
'  "CtaCte"'+
'  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".OPERACION)'+
'  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'+
'  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIGO)'+
' WHERE'+
'  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND'+
'  ("CtaCteItem".OPERACION = '+PlanEdit.Text+') AND'+
'  ("CtaCteItem".CLIENTE = '+ClienteEdit.Text+' ) AND'+
'  ("CtaCteItem".CUOTA < '+CuotaEdit.Text+')'+
'  ORDER BY'+
'  "CtaCteItem".OPERACION,'+
'  "CtaCteItem".CLIENTE,'+
'  "CtaCteItem".CUOTA'+
'';
Q.Open;
ClienteLabel.Caption:=Q.FieldByName('CLIENTE').AsString;
PlanLabel.Caption:=Q.FieldByName('OPERACION').AsString;
CobradorEdit.Text:=Q.FieldByName('CODCOBRADOR').AsString;
CobradorLabel.Caption:=Q.FieldByName('COBRADOR').AsString;
CTACLIENTE:=Q.FieldByName('CTACLIENTE').AsString;
CTACOBRADOR:=Q.FieldByName('CTACOBRADOR').AsString;
CTAANTCOBR:=Q.FieldByName('CTAANTCOBR').AsString;
while Q.Eof = False do
begin
TotalEdit.Text:= FloatToStr( StrToFloat(TotalEdit.Text) + Q.FieldByName('IMPORTE').AsFloat );
CuotasEdit.Text:= FloatToStr( StrToInt(CuotasEdit.Text) + Q.FieldByName('CUOTA').AsInteger );
Q.Next;
end;
ComisionEdit.Text:=FloatToStr( StrToFloat(TotalEdit.Text) * (Q.FieldByName('COMISION').AsFloat/100) );
CuotaEdit.Text:=Q.FieldByName('CUOTA').AsString;
end;

procedure TRendicionCartonForm.Button3Click(Sender: TObject);
var i:integer;
procesado :string;
begin

Fecha := (FormatDateTime('mm/dd/yyyy hh:mm:ss', now));

  // Insertar en la tabla de CtaCte
Tabla.SQL.Text:='Update "CtaCte" Set RENDIDAS = RENDIDAS + '+CuotasEdit.Text+
'  WHERE'+
'  ("CtaCte".OPERACION = '+PlanEdit.Text+') AND'+
'  ("CtaCte".CLIENTE = '+ClienteEdit.Text+' )'+
'';
Tabla.ExecSQL;

  // Actualizar en la tabla de CtaCte Item
Tabla.SQL.Text:='Update "CtaCteItem" Set PAGADO = IMPORTE'+
'  WHERE'+
'  ("CtaCteItem".OPERACION = '+PlanEdit.Text+') AND'+
'  ("CtaCteItem".CLIENTE = '+ClienteEdit.Text+' ) AND'+
'  ("CtaCteItem".CUOTA = '+CuotaEdit.Text+')'+
'';
Tabla.ExecSQL;

if PagarCheckBox.Checked =TRUE then procesado:='SI' else procesado:='NO';
 // Insertar en Rendido Cobrador
 Tabla.SQL.Text:= 'Insert Into "RendidoCobrador" (VENTA, CUOTA, COBRADOR, FECHA , RENDIDO, PAGADO, PROCESADO)'+
 ' Values ('+PlanEdit.Text+', '+CuotaEdit.Text+', '+CobradorEdit.Text+', '+QuotedStr(Fecha)+','+TotalEdit.Text+', '+ComisionEdit.Text+', '+QuotedStr(procesado)+')';
 Tabla.ExecSQL;

//CONTABILIDAD++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

 //Insertar en la tabla LibroDiario

         //obtener el numero de asiento
        q.SQL.Text := 'Select Max(ASIENTO) From "LibroDiario"';
        q.Open;
        i := q.Fields[0].AsInteger+1;
        q.Close;

        if strtofloat(TotalEdit.Text) > 0.04 then //PAGO DE CUENTA CORRIENTE
        begin
        // renglon  - CAJA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+dm.ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cliente '+ClienteLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+TotalEdit.Text+', 0, '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;

        // renglon  - DEUDORES POR VENTA
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CTACLIENTE;
        q.Open;
        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cliente '+ClienteLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+TotalEdit.Text+', '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;
        end;

//
        i:=i+1;
        if PagarCheckBox.Checked = TRUE then  //COMISION COBRADOR
        begin
        // renglon  - COMISION COBRADOR
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CTACOBRADOR;
        q.Open;

        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cobrador '+CobradorLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+ComisionEdit.Text+', 0, '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;

        // renglon  - COMISION COBRADOR A PAGAR

        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CTAANTCOBR;
        q.Open;
        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cobrador '+CobradorLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+ComisionEdit.Text+', '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;


//PAGO DE COMISION

        // renglon  - COMISION COBRADOR A PAGAR
        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+CTAANTCOBR;
        q.Open;

        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cobrador '+CobradorLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', '+ComisionEdit.Text+', 0, '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;

        // renglon  - CAJA

        q.SQL.Text:='select * from "Cuenta" where "Cuenta".CODIGO='+DM.ConfigQuery.FieldByName('CtaCaja').AsString;
        q.Open;
        Tabla.SQL.Text := 'Insert Into "LibroDiario" (ASIENTO, FECHA, LEYENDA, JERARQUIA, CUENTA, DEBE, HABER, OCULTO)'+
        ' Values '+
        '( '+IntToStr(i)+', '+QuotedStr(Fecha)+', '+QuotedStr('Rendicion Cobrador '+CobradorLabel.Caption+'')+', '+QuotedStr(q.FieldByName('Jerarquia').AsString)+', '+QuotedStr(q.FieldByName('DESCRIPCION').AsString)+', 0, '+ComisionEdit.Text+', '+QuotedStr(Oculto)+
        ' )';
        Tabla.ExecSQL;
        end;


//CONTABILIDAD------------------------------------------------------------------------------

  // Completa la Transaccion
        Tabla.Transaction.CommitRetaining;
 if PagarCheckBox.Checked = TRUE then  //COMISION COBRADOR
  begin
   Q.SQL.Text:='SELECT * FROM "RendidoCobrador"';
   Q.Open;
   Q.Last;
  ImprimirDataModule:=TImprimirDataModule.Create(self);
  ImprimirDataModule.SImpr('SELECT'+
'  "Cobrador".NOMBRE,'+
'  "RendidoCobrador".VENTA,'+
'  "RendidoCobrador".CODIGO,'+
'  "RendidoCobrador".COBRADOR,'+
'  "RendidoCobrador".CUOTA,'+
'  "RendidoCobrador".FECHA,'+
'  "RendidoCobrador".RENDIDO,'+
'  "RendidoCobrador".PAGADO,'+
'  "RendidoCobrador".PROCESADO'+
' FROM'+
'  "RendidoCobrador"'+
'  INNER JOIN "Cobrador" ON ("RendidoCobrador".COBRADOR = "Cobrador".CODIGO)'+
' WHERE "RendidoCobrador".Codigo='+Q.FieldByName('Codigo').AsString, 'PagoCobrador');
  ImprimirDataModule.Free;
  end
 else ShowMessage('PROCESO TERMINADO CON EXITO!!!');

//CBEdit.Text:='';
close;
end;

procedure TRendicionCartonForm.Button4Click(Sender: TObject);
begin
close;
end;

procedure TRendicionCartonForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
end;

procedure TRendicionCartonForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      SeleccionarCartonBitBtn.Click;
  end;
end;

end.
