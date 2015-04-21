object MigrarForm: TMigrarForm
  Left = 0
  Top = 0
  Caption = 'Migrar'
  ClientHeight = 206
  ClientWidth = 339
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ProcesarButton: TButton
    Left = 120
    Top = 88
    Width = 80
    Height = 50
    Caption = 'PROCESAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ProcesarButtonClick
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 168
    Width = 323
    Height = 30
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 40
    Top = 32
    Width = 178
    Height = 21
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 224
    Top = 30
    Width = 49
    Height = 25
    Caption = 'desde'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object AC1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Ci' +
      'veLoo\Gen\Gen.DeG;Mode=Share Deny None;Extended Properties="";Pe' +
      'rsist Security Info=False;Jet OLEDB:System database="";Jet OLEDB' +
      ':Registry Path="";Jet OLEDB:Database Password=ThtJ9C9t49vDmpq;Je' +
      't OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLED' +
      'B:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1' +
      ';Jet OLEDB:New Database Password="";Jet OLEDB:Create System Data' +
      'base=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy' +
      ' Locale on Compact=False;Jet OLEDB:Compact Without Replica Repai' +
      'r=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object O: TADOQuery
    Connection = AC1
    Parameters = <>
    Left = 8
    Top = 48
  end
  object D: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 304
    Top = 8
  end
  object T: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 304
    Top = 48
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Sistema GeN|*.DeG'
    Left = 8
    Top = 88
  end
end
