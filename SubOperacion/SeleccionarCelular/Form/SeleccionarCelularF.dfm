object SeleccionarCelularForm: TSeleccionarCelularForm
  Left = 429
  Top = 172
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ingrese el NSE '#243' IMEI'
  ClientHeight = 256
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 279
    Height = 176
    Align = alClient
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 25
      Width = 40
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 80
      Top = 55
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 19
      Top = 55
      Width = 64
      Height = 13
      Caption = 'NSE - IMEI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 46
      Top = 86
      Width = 37
      Height = 13
      Caption = 'Precio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 121
      Width = 51
      Height = 13
      Caption = 'Cantidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CodigoEdit: TEdit
      Left = 88
      Top = 24
      Width = 105
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 185
      Top = 22
      Width = 25
      Height = 25
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object CodigoBarraEdit: TEdit
      Left = 89
      Top = 55
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0'
      Visible = False
    end
    object FloatEdit1: TEdit
      Left = 89
      Top = 86
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object CantidadEdit: TEdit
      Left = 89
      Top = 121
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '1'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 176
    Width = 279
    Height = 80
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label6: TLabel
      Left = 112
      Top = 19
      Width = 58
      Height = 13
      Caption = 'Procesar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SiBitBtn: TBitBtn
      Left = 16
      Top = 16
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
      TabOrder = 0
      OnClick = SiBitBtnClick
    end
    object NoBitBtn: TBitBtn
      Left = 184
      Top = 16
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
      TabOrder = 1
      OnClick = NoBitBtnClick
    end
  end
  object Query: TADOQuery
    Parameters = <>
    Left = 216
    Top = 56
  end
end
