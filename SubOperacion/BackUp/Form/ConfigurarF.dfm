object ConfigurarForm: TConfigurarForm
  Left = 518
  Top = 408
  BorderStyle = bsSingle
  Caption = 'Configurar destino'
  ClientHeight = 275
  ClientWidth = 270
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 32
    Width = 261
    Height = 20
    Caption = 'Escriba la unidad de su pendrive'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 120
    Width = 41
    Height = 20
    Caption = 'ej.: F'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 113
    Top = 227
    Width = 46
    Height = 13
    Caption = 'Grabar?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 28
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 27
    Top = 210
    Width = 80
    Height = 50
    Caption = 'Si'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkYes
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 210
    Width = 80
    Height = 50
    Caption = 'No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkNo
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
