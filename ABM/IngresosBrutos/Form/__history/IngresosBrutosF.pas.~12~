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

unit IngresosBrutosF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DataModule, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  IBCustomDataSet, IBTable;

type
  TIngresosBrutosForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    SiBitBtn: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DSIngresosBrutos: TDataSource;
    Label1: TLabel;
    Tabla: TIBTable;
    procedure SiBitBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
  desc:string;
    { Public declarations }
  end;

var
  IngresosBrutosForm: TIngresosBrutosForm;

implementation

{$R *.dfm}

procedure TIngresosBrutosForm.SiBitBtnClick(Sender: TObject);
begin
   desc := DBEdit2.Text;
   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
      Tabla.Post;
   Close;
end;

procedure TIngresosBrutosForm.TablaAfterCancel(DataSet: TDataSet);
begin
 Tabla.Transaction.RollbackRetaining;
end;

procedure TIngresosBrutosForm.TablaAfterDelete(DataSet: TDataSet);
begin
 Tabla.Transaction.CommitRetaining;
end;

procedure TIngresosBrutosForm.TablaAfterPost(DataSet: TDataSet);
begin
 Tabla.Transaction.CommitRetaining;
end;

procedure TIngresosBrutosForm.FormShow(Sender: TObject);
begin
 dm:=tdm.create(self);
 Tabla.Active:=true;
 Tabla.Insert;
 DBEdit2.SetFocus;
end;

procedure TIngresosBrutosForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
  begin
   Key := #0;                                 { eat enter key }
   Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TIngresosBrutosForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_Escape then Close;
end;

end.
