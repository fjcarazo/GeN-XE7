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

unit LoginF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DataModule, DB, Buttons, IBCustomDataSet, IBQuery,
  OleCtrls, SHDocVw, ExtCtrls, UrLMon;

type
  TFLogin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    nombreEdit: TEdit;
    passwordEdit: TEdit;
    AceptarBitBtn: TBitBtn;
    CancelarBitBtn: TBitBtn;
    Query: TIBQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AceptarBitBtnClick(Sender: TObject);
    procedure CancelarBitBtnClick(Sender: TObject);
    procedure passwordEditExit(Sender: TObject);
    procedure WebBrowser1StatusTextChange(ASender: TObject;
      const Text: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;
  Cuenta : integer;

implementation

{$R *.dfm}

procedure TFLogin.AceptarBitBtnClick(Sender: TObject);
begin
LoginOK :=False;
   Query.SQL.Text:='select * from "Usuario" where NOMBRE='+QuotedStr(nombreEdit.Text);
   Query.Open;
    If Query.RecordCount < 1 then
    Begin
       Cuenta := Cuenta + 1;
       MessageDlg('Usuario no encontrado',mtError, [mbOK], 0);
       nombreEdit.Text := '';
       passwordEdit.Text := '';
       Query.Active := False;
       If Cuenta = 3 then Close;
    end
   else
       If Query.FieldByName('password').AsString = passwordEdit.Text then
        Begin
           LoginOk := True;
           Usuario := Query.FieldByName('CODIGO').AsString;
           Permiso := Query.FieldByName('PERMISO').AsInteger;
           Query.Active := False;
           Query.SQL.Text:='insert into "Control" (USUARIO, MAQUINA) values ('+Usuario+', '+QuotedStr(Maquina)+')';
           Query.ExecSQL;
           Query.Transaction.Commit;
           Close;
        end
     else
         Begin
           Cuenta := Cuenta + 1;
           MessageDlg('Clave Inválida',mtError, [mbOK], 0);
           passwordEdit.Text := '';
           Query.Active := False;
           If Cuenta = 3 then Close;
         end;
end;

procedure TFLogin.CancelarBitBtnClick(Sender: TObject);
begin
   LoginOK :=False;
   Close;
end;

procedure TFLogin.FormCreate(Sender: TObject);
begin
Usuario := 'L';
Cuenta := 0;
end;

procedure TFLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then                          { if it's an enter key }
 begin
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
  end;
end;

procedure TFLogin.passwordEditExit(Sender: TObject);
begin
AceptarBitBtn.Click;
end;

procedure TFLogin.WebBrowser1StatusTextChange(ASender: TObject;
  const Text: WideString);
begin
{if (text <> 'Buscando www.degsoft.com.ar') and (text <> '') then
begin
ShowMessage(text);
HlinkNavigateString(Nil, PChar(text) );
end;  }

end;

end.




