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

unit UFCategorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, DB,
  Mask, IBCustomDataSet, IBTable, OleCtrls, SHDocVw;

type
  TFCategorias = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DS: TDataSource;
    Tabla: TIBTable;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  FCategorias: TFCategorias;

implementation

{$R *.dfm}

procedure TFCategorias.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
   Tabla.Active:=true;
end;

procedure TFCategorias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Tabla.Active:=false;
end;

procedure TFCategorias.BitBtn1Click(Sender: TObject);
begin
   desc := DBEdit1.Text;
   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then If DBEdit1.Text <> '' then
   begin
   Tabla.Post;
   end;
   Close;
end;

procedure TFCategorias.FormShow(Sender: TObject);
begin
Tabla.Insert;
end;

procedure TFCategorias.TablaAfterCancel(DataSet: TDataSet);
begin
Tabla.Transaction.RollbackRetaining;
end;

procedure TFCategorias.TablaAfterDelete(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TFCategorias.TablaAfterPost(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

end.
