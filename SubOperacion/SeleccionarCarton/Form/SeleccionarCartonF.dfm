object SeleccionarCartonForm: TSeleccionarCartonForm
  Left = 0
  Top = 0
  Caption = 'SeleccionarCartonForm'
  ClientHeight = 177
  ClientWidth = 367
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 35
    Width = 170
    Height = 23
    Caption = 'Codigo de Barras:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CBEdit: TEdit
    Left = 32
    Top = 71
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 267
    Top = 0
    Width = 100
    Height = 177
    Align = alRight
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label9: TLabel
      Left = 12
      Top = 81
      Width = 75
      Height = 13
      Caption = 'Seleccionar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SiBitBtn: TBitBtn
      Left = 9
      Top = 23
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = SiBitBtnClick
    end
    object NoBitBtn: TBitBtn
      Left = 9
      Top = 101
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = NoBitBtnClick
    end
  end
end
