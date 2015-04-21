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

unit incremento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DataModule,
  IBCustomDataSet, IBQuery, ExtCtrls;

type
  TIncrementoForm = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Q: TIBQuery;
    T: TIBQuery;
    Panel1: TPanel;
    SiBitBtn: TBitBtn;
    NoBitBtn: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SiBitBtnClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
      { Private declarations }
  public
    art:array of integer;
      { Public declarations }
  end;

var
  IncrementoForm: TIncrementoForm;

implementation

uses UFBuscaArticulos;

{$R *.dfm}

procedure TIncrementoForm.NoBitBtnClick(Sender: TObject);
begin
Close;
end;

procedure TIncrementoForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
end;

procedure TIncrementoForm.FormShow(Sender: TObject);
var i :integer;
begin
 FBuscaArticulo:=TFBuscaArticulo.Create(self);
  try
   FBuscaArticulo.ShowModal;
  finally
  SetLength(art, FBuscaArticulo.Tabla.RecordCount);
   For i := 1 to FBuscaArticulo.Tabla.RecordCount do
    begin
     art[i]:=(FBuscaArticulo.Tabla.FieldByName('CODIGO').AsInteger);
     FBuscaArticulo.Tabla.Next;
    end;
   FBuscaArticulo.Free;
  end;
end;

procedure TIncrementoForm.SiBitBtnClick(Sender: TObject);
var
 porc:string;
 i:integer;
begin
 porc:=FloatToStr((StrToFloat(Edit1.Text)/100)+1);
 for i:=1 to High(art)+1 do
  begin
   Q.SQL.Text:= 'UPDATE "Articulo" SET ULTPRECIO = PRECIO'+
                ', PRECIO1 = PRECIO1 * '+porc+
                ', PRECIO2 = PRECIO2 * '+porc+
                ', PRECIO3 = PRECIO3 * '+porc+
                ', PRECIO4 = PRECIO4 * '+porc+
                ', PRECIO5 = PRECIO5 * '+porc+
                ', PRECIO6 = PRECIO6 * '+porc+
                ', PRECIO = PRECIO * '+porc+
                ' WHERE CODIGO ='+IntToStr(art[i]);
   Q.ExecSQL;
  end;
 Q.Transaction.CommitRetaining;
 Close;
end;

end.
