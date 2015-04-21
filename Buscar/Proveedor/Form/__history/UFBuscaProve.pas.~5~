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

unit UFBuscaProve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, ExtCtrls,
  Buttons, DataModule, IBCustomDataSet, IBQuery, jpeg, ImprimirDM;

type
  TFBuscaProve = class(TForm)
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    SiBitBtn: TBitBtn;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DescripcionEdit: TEdit;
    Tabla: TIBQuery;
    DataSource: TDataSource;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SiBitBtnClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure NoBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DescripcionEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure Buscar;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cod_Prove: string;
  end;

var
  FBuscaProve: TFBuscaProve;

implementation

{$R *.dfm}

Procedure TFBuscaProve.Buscar;
begin
Tabla.SQL.Text:=' select * from "Proveedor" where ("Proveedor".NOMBRE LIKE '+QuotedStr(DescripcionEdit.Text+'%')+')';
Tabla.Open;
end;

procedure TFBuscaProve.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_DOWN then
   DbGrid1.SetFocus;
end;

procedure TFBuscaProve.Image1Click(Sender: TObject);
begin
 ImprimirDataModule := TImprimirDataModule.Create(self);
 ImprimirDataModule.CSV(Tabla.SQL.Text,'ARTICULOS');
 ImprimirDataModule.Free;
end;

procedure TFBuscaProve.SiBitBtnClick(Sender: TObject);
begin
 Close;
end;

procedure TFBuscaProve.DBGrid1DblClick(Sender: TObject);
begin
   SiBitBtnClick(DBGrid1);
end;

procedure TFBuscaProve.NoBitBtnClick(Sender: TObject);
begin
   Close;
end;

procedure TFBuscaProve.DescripcionEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
buscar;
end;

procedure TFBuscaProve.FormCreate(Sender: TObject);
begin
   Tabla.Open;
end;

end.
