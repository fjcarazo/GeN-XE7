object FDevoluciones: TFDevoluciones
  Left = 817
  Top = 351
  Caption = 'Devoluciones de Mercader'#237'a'
  ClientHeight = 186
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 39
    Height = 13
    Caption = 'Factura:'
  end
  object Label3: TLabel
    Left = 32
    Top = 56
    Width = 29
    Height = 13
    Caption = 'Pieza:'
  end
  object Label4: TLabel
    Left = 32
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Serie:'
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 24
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 56
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 1
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 80
    Top = 88
    Width = 145
    Height = 22
    Style = csOwnerDrawFixed
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 40
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Procesar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtn4: TBitBtn
    Left = 160
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 4
  end
  object IntEdit1: TEdit
    Left = 81
    Top = 22
    Width = 118
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object qTemp: TADOQuery
    Parameters = <>
    Left = 240
    Top = 16
  end
  object qTemp2: TADOQuery
    Parameters = <>
    Left = 240
    Top = 56
  end
end
