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

unit main;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg, ShellApi, UrlMon, OleCtrls, SHDocVw, GIFImg;

type
  TmainForm = class(TForm)
    Panel1: TPanel;
    FondoImage: TImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormShow(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure emailLabelClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mainForm: TmainForm;

implementation

{$R *.dfm}

procedure TmainForm.FormShow(Sender: TObject);
begin
//FondoImage.Picture.LoadFromFile(Path+'\img\logo.gif');
end;

procedure TmainForm.OKButtonClick(Sender: TObject);
begin
Close;
end;

procedure TmainForm.Label4Click(Sender: TObject);
begin
close;
end;

procedure TmainForm.emailLabelClick(Sender: TObject);
begin
 ShellExecute(GetDesktopWindow(),
                nil,
                pChar('mailto:'+
                TLabel(Sender).Caption),
                nil,
                nil,
                SW_SHOWNORMAL);
end;

procedure TmainForm.Label3Click(Sender: TObject);
begin
HlinkNavigateString(Nil, pChar(TLabel(Sender).Caption));
end;

end.
 
