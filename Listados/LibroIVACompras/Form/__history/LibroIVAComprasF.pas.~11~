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

unit LibroIVAComprasF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ImprimirDM, ComCtrls, StdCtrls, Buttons, ExtCtrls, RpCon,
  RpConDS, RpBase, RpSystem, RpDefine, RpRave, RpRender, RpRenderCanvas,
  RpRenderPrinter, DataModule, Grids, DBGrids, IBCustomDataSet, IBQuery,
  OleCtrls, SHDocVw, jpeg;

type
  TCuentasForm = class(TForm)
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
  Cancela :Boolean;
  Reporte, Cuenta :String;
    { Public declarations }
  end;

type
 TCompartido = record
   Numero: Integer;
   Cadena: String[20];
 end;
 PCompartido   =^TCompartido;

var
  CuentasForm: TCuentasForm;
  Compartido  : PCompartido;
  FicheroM    : THandle;  

implementation

{$R *.dfm}

Procedure TCuentasForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TCuentasForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
DTP2.DateTime := Now;
end;

procedure TCuentasForm.DTP1CloseUp(Sender: TObject);
begin
   If DTP1.Date > DTP2.Date then
   begin
      MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.',mtError,[mbOK],0);
      DTP1.DateTime := DTP2.DateTime;
   end;
end;

procedure TCuentasForm.DTP2CloseUp(Sender: TObject);
begin
   If DTP2.Date < DTP1.Date then
   begin
      MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.',mtError,[mbOK],0);
      DTP2.DateTime := DTP1.DateTime;
   end;
end;

procedure TCuentasForm.BitBtn2Click(Sender: TObject);
begin
   Cancela := true;
   Close;
end;

procedure TCuentasForm.BitBtn1Click(Sender: TObject);
begin
 Tabla.SQL.Text:='SELECT '+
 '  '+QuotedStr(dm.ConfigQuery.FieldByName('Nombre').AsString)+' AS Empresa, '+
 '  '+QuotedStr(DateToStr(DTP1.Date))+' AS Desde,  '+
 '  '+QuotedStr(DateToStr(DTP2.Date))+' AS Hasta, '+
 '  "LibroIVAcompra".CODIGO,  '+
 '  "LibroIVAcompra".FECHA,    '+
 '  "LibroIVAcompra".FACTURA,   '+
 '  "LibroIVAcompra".PROVEEDOR,  '+
'  "LibroIVAcompra".CUIT,      '+
'  "LibroIVAcompra".CONDICION, '+
'  "LibroIVAcompra".NG1,      '+
'  "LibroIVAcompra".NG2,      '+
'  "LibroIVAcompra".NG3,     '+
'  "LibroIVAcompra".IVA1,    '+
'  "LibroIVAcompra".IVA2,    '+
'  "LibroIVAcompra".IVA3,     '+
'  "LibroIVAcompra".OEIIBB,    '+
'  "LibroIVAcompra".IDERPYPAC,  '+
'  "LibroIVAcompra".ITF     '+
'FROM                    '+
'  "LibroIVAcompra"    '+
'WHERE                '+
'  ("LibroIVAcompra".FECHA >= '+QuotedStr(DateToStr(DTP1.Date))+' ) AND '+
'  ("LibroIVAcompra".FECHA <= '+QuotedStr(DateToStr(DTP2.Date))+' )   '+
'ORDER BY  '+
'  "LibroIVAcompra".CODIGO'+
'';
Tabla.Open;
end;



procedure TCuentasForm.FormDestroy(Sender: TObject);
begin
EnvioRamTerminado;
end;

procedure TCuentasForm.BitBtn3Click(Sender: TObject);
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 ImprimirDataModule.SImpr(Tabla.SQL.Text, 'LibroIVACompras');
 ImprimirDataModule.Free;
end;

end.
