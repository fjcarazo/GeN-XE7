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

unit RendicionCobradorLF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, Buttons, ExtCtrls, DataModule, Grids, DBGrids, IBQuery,
  IBCustomDataSet, OleCtrls, SHDocVw, jpeg;

type
  TRendicionCobradorLForm = class(TForm)
    DataSource: TDataSource;
    Panel1: TPanel;
    Label3: TLabel;
    NombreLabel: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CodigoEdit: TEdit;
    BuscarBitBtn: TBitBtn;
    Panel2: TPanel;
    ImprimirBitBtn: TBitBtn;
    ConsultarBitBtn: TBitBtn;
    DBGrid1: TDBGrid;
    Tabla: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure DTP1CloseUp(Sender: TObject);
    procedure DTP2CloseUp(Sender: TObject);
    procedure SalirBitBtnClick(Sender: TObject);
    procedure ConsultarBitBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirBitBtnClick(Sender: TObject);
    procedure BuscarBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  RendicionCobradorLForm: TRendicionCobradorLForm;
  Compartido  : PCompartido;
  FicheroM    : THandle;  

implementation

uses ImprimirDM, BuscarCobrador;

{$R *.dfm}

Procedure TRendicionCobradorLForm.EnvioRamTerminado;
begin
  UnmapViewOfFile(Compartido);
  CloseHandle(FicheroM);
end;

procedure TRendicionCobradorLForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
   DTP2.DateTime := Now;
end;

procedure TRendicionCobradorLForm.DTP1CloseUp(Sender: TObject);
begin
   If DTP1.Date > DTP2.Date then
   begin
      MessageDlg('Fecha de inicio no puede ser mayor que fecha de fin.',mtError,[mbOK],0);
      DTP1.DateTime := DTP2.DateTime;
   end;
end;

procedure TRendicionCobradorLForm.DTP2CloseUp(Sender: TObject);
begin
   If DTP2.Date < DTP1.Date then
   begin
      MessageDlg('Fecha de fin no puede ser menor que fecha de inicio.',mtError,[mbOK],0);
      DTP2.DateTime := DTP1.DateTime;
   end;
end;

procedure TRendicionCobradorLForm.SalirBitBtnClick(Sender: TObject);
begin
   Cancela := true;
   Close;
end;

procedure TRendicionCobradorLForm.ConsultarBitBtnClick(Sender: TObject);
VAR i: INTEGER;
begin
Tabla.SQL.Text:='SELECT '+QuotedStr(DM.ConfigQuery.FieldByName('Nombre').AsString)+' As Empresa, '+
   QuotedStr(DateToStr(DTP1.Date))+' As Desde, '+QuotedStr(DateToStr(DTP2.Date))+' As Hasta, '+
'  "RendidoCobrador".CODIGO,        '+
'  "RendidoCobrador".VENTA,        '+
'  "RendidoCobrador".CUOTA,    '+
'  "RendidoCobrador".FECHA,       '+
'  "RendidoCobrador".RENDIDO,      '+
'  "RendidoCobrador".PAGADO,     '+
'  "RendidoCobrador".PROCESADO,  '+
'  "Cobrador".NOMBRE    '+
' FROM                   '+
'  "RendidoCobrador"   '+
'  INNER JOIN "Cobrador" ON ("RendidoCobrador".COBRADOR = "Cobrador".CODIGO) '+
' WHERE                                '+
'  ("RendidoCobrador".FECHA >= '+QuotedStr( DateToStr(DTP1.Date))+' ) AND'+
'  ("RendidoCobrador".FECHA <= '+QuotedStr(DateToStr(DTP2.Date))+' ) AND '+
'  ("RendidoCobrador".COBRADOR = '+QuotedStr(CodigoEdit.Text)+' )'+
'';
Tabla.Open;
end;

procedure TRendicionCobradorLForm.FormDestroy(Sender: TObject);
begin
EnvioRamTerminado;
end;

procedure TRendicionCobradorLForm.FormShow(Sender: TObject);
begin
BuscarBitBtn.Click;
ConsultarBitBtn.Click;
end;

procedure TRendicionCobradorLForm.ImprimirBitBtnClick(Sender: TObject);
begin
 ImprimirDataModule:=TImprimirDataModule.Create(self);
 ImprimirDataModule.SImpr(Tabla.SQL.Text, 'RendicionCobrador');
 ImprimirDataModule.Free;
end;

procedure TRendicionCobradorLForm.BuscarBitBtnClick(Sender: TObject);
begin
   BuscarCobradorForm:=TBuscarCobradorForm.Create(self);
   try
      BuscarCobradorForm.ShowModal;
   finally
      with BuscarCobradorForm do
     begin
      CodigoEdit.Text:= BuscarCobradorForm.Tabla.FieldByName('CODIGO').AsString;
      NombreLabel.Caption:= BuscarCobradorForm.Tabla.FieldByName('NOMBRE').AsString;
      end;
      BuscarCobradorForm.Free;
   end;
end;

end.
