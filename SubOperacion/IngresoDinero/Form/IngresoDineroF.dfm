object IngresoDineroForm: TIngresoDineroForm
  Left = 394
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Modificar Caja'
  ClientHeight = 466
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 480
    Width = 385
    Height = 65
    BevelOuter = bvLowered
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 43
      Height = 13
      Caption = 'SubTotal'
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Impuesto'
    end
    object Label3: TLabel
      Left = 24
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object LbSubTotal: TLabel
      Left = 80
      Top = 8
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbSubTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbImpuesto: TLabel
      Left = 80
      Top = 24
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbImpuesto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbTotal: TLabel
      Left = 80
      Top = 40
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 480
    Top = 212
    Width = 95
    Height = 254
    Align = alRight
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 479
    object Label8: TLabel
      Left = 6
      Top = 16
      Width = 35
      Height = 13
      Alignment = taCenter
      Caption = 'Importe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 6
      Top = 64
      Width = 27
      Height = 13
      Alignment = taCenter
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LbPagado: TLabel
      Left = 6
      Top = 35
      Width = 80
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbSaldo: TLabel
      Left = 6
      Top = 83
      Width = 80
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 7
      Top = 179
      Width = 58
      Height = 13
      Alignment = taCenter
      Caption = 'Procesar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Aceptar: TBitBtn
      Left = 7
      Top = 126
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
      OnClick = AceptarClick
    end
    object Cancelar: TBitBtn
      Left = 7
      Top = 197
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
      OnClick = CancelarClick
    end
  end
  object PagoStringGrid: TStringGrid
    Left = 0
    Top = 212
    Width = 480
    Height = 254
    Align = alClient
    ColCount = 7
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
    Visible = False
    ExplicitLeft = 8
    ExplicitTop = 208
    ExplicitWidth = 385
    ExplicitHeight = 121
    ColWidths = (
      55
      193
      82
      47
      64
      64
      64)
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 212
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
    object Label15: TLabel
      Left = 16
      Top = 16
      Width = 71
      Height = 24
      Caption = 'Detalle:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 33
      Top = 95
      Width = 40
      Height = 13
      Caption = 'Contado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 119
      Width = 37
      Height = 13
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 33
      Top = 143
      Width = 33
      Height = 13
      Caption = 'Tarjeta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 33
      Top = 175
      Width = 20
      Height = 13
      Caption = 'Otro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 217
      Top = 103
      Width = 12
      Height = 13
      Caption = 'N'#186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 281
      Top = 103
      Width = 33
      Height = 13
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 344
      Top = 103
      Width = 23
      Height = 13
      Caption = 'D'#237'as'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 194
      Top = 193
      Width = 138
      Height = 13
      Caption = 'F4: AGREGAR CHEQUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 344
      Top = 193
      Width = 130
      Height = 13
      Caption = 'F6: BORRAR CHEQUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DetalleEdit: TEdit
      Left = 16
      Top = 48
      Width = 385
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 194
      Top = 119
      Width = 56
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 194
      Top = 143
      Width = 56
      Height = 24
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 257
      Top = 119
      Width = 81
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 257
      Top = 143
      Width = 121
      Height = 24
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 338
      Top = 119
      Width = 40
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object FECheque: TEdit
      Left = 79
      Top = 119
      Width = 109
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object FETarjeta: TEdit
      Left = 79
      Top = 142
      Width = 109
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object FEOtro: TEdit
      Left = 79
      Top = 167
      Width = 109
      Height = 21
      TabOrder = 8
      Text = '0'
    end
    object FEContado: TEdit
      Left = 79
      Top = 95
      Width = 109
      Height = 21
      TabOrder = 9
      Text = '0'
    end
  end
  object Query: TADOQuery
    Parameters = <>
    Left = 280
    Top = 256
  end
end
