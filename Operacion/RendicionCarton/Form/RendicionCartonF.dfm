object RendicionCartonForm: TRendicionCartonForm
  Left = 221
  Top = 161
  Caption = 'Rendici'#243'n de Carton'
  ClientHeight = 330
  ClientWidth = 524
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 101
    Top = 176
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 524
    Height = 145
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label5: TLabel
      Left = 23
      Top = 15
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ClienteLabel: TLabel
      Left = 117
      Top = 13
      Width = 13
      Height = 13
      Alignment = taCenter
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 37
      Top = 46
      Width = 26
      Height = 13
      Caption = 'Plan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PlanLabel: TLabel
      Left = 117
      Top = 44
      Width = 13
      Height = 13
      Alignment = taCenter
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 113
      Width = 34
      Height = 13
      Caption = 'Total '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 123
      Top = 79
      Width = 36
      Height = 13
      Caption = 'Ultima'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 290
      Top = 12
      Width = 52
      Height = 13
      Caption = 'Cobrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CobradorLabel: TLabel
      Left = 396
      Top = 12
      Width = 13
      Height = 13
      Alignment = taCenter
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 291
      Top = 42
      Width = 51
      Height = 13
      Caption = 'Comisi'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 308
      Top = 76
      Width = 34
      Height = 13
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 23
      Top = 79
      Width = 40
      Height = 13
      Caption = 'Cuotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ClienteEdit: TEdit
      Left = 70
      Top = 13
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object PlanEdit: TEdit
      Left = 70
      Top = 44
      Width = 41
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object SeleccionarCartonBitBtn: TBitBtn
      Left = 434
      Top = 84
      Width = 80
      Height = 50
      Caption = 'Seleccionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SeleccionarCartonBitBtnClick
    end
    object TotalEdit: TEdit
      Left = 70
      Top = 113
      Width = 90
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object CuotaEdit: TEdit
      Left = 165
      Top = 79
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object CobradorEdit: TEdit
      Left = 349
      Top = 10
      Width = 41
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object ComisionEdit: TEdit
      Left = 349
      Top = 41
      Width = 86
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object PagarCheckBox: TCheckBox
      Left = 350
      Top = 75
      Width = 17
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CuotasEdit: TEdit
      Left = 70
      Top = 79
      Width = 41
      Height = 21
      TabOrder = 8
      Text = '0'
    end
  end
  object Panel2: TPanel
    Left = 428
    Top = 145
    Width = 96
    Height = 185
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 29
      Top = 85
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
    object Button3: TButton
      Left = 7
      Top = 29
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 7
      Top = 104
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object CBEdit: TEdit
    Left = 101
    Top = 212
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
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 109
    Top = 281
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 157
    Top = 281
  end
end
