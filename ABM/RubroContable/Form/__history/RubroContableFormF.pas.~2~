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

unit RubroContableFormF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, Buttons, ExtCtrls, DataModule,
  IBCustomDataSet, IBTable, OleCtrls, SHDocVw;

type
  TRubroContableForm = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    DS: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Tabla: TIBTable;
    DBNavigator1: TDBNavigator;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TablaAfterCancel(DataSet: TDataSet);
    procedure TablaAfterDelete(DataSet: TDataSet);
    procedure TablaAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RubroContableForm: TRubroContableForm;

implementation

uses BuscarRubroContableF;



{$R *.dfm}

procedure TRubroContableForm.BitBtn1Click(Sender: TObject);
begin
   If (Tabla.State = dsEdit) or (Tabla.State = dsInsert) then
      Tabla.Post;
   Close;
end;

procedure TRubroContableForm.BitBtn2Click(Sender: TObject);
begin
   Close;
end;

procedure TRubroContableForm.FormCreate(Sender: TObject);
begin
DM:=TDM.Create(Self);
Tabla.Open;
Tabla.Insert;
end;

procedure TRubroContableForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TRubroContableForm.FormShow(Sender: TObject);
begin
DBEdit2.SetFocus;
end;

procedure TRubroContableForm.BitBtn3Click(Sender: TObject);
begin
   Tabla.Cancel;
   BuscarRubroContableForm:=TBuscarRubroContableForm.Create(self);
   try
      BuscarRubroContableForm.ShowModal;
   finally
      Tabla.Locate('CODIGO',(BuscarRubroContableForm.Tabla.FieldByName('CODIGO').AsString),[]);
      BuscarRubroContableForm.Free;
   end;
end;

procedure TRubroContableForm.TablaAfterCancel(DataSet: TDataSet);
begin
Tabla.Transaction.RollbackRetaining;
end;

procedure TRubroContableForm.TablaAfterDelete(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

procedure TRubroContableForm.TablaAfterPost(DataSet: TDataSet);
begin
Tabla.Transaction.CommitRetaining;
end;

end.
