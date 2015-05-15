object PagoIVAForm: TPagoIVAForm
  Left = 0
  Top = 0
  Caption = 'Pago de IVA'
  ClientHeight = 362
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 65
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 546
    object Label1: TLabel
      Left = 19
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 28
      Width = 35
      Height = 13
      Caption = 'Desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 232
      Top = 28
      Width = 33
      Height = 13
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CalcularBitBtn: TBitBtn
      Left = 437
      Top = 9
      Width = 80
      Height = 50
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = CalcularBitBtnClick
    end
    object DesdeDateTimePicker: TDateTimePicker
      Left = 117
      Top = 24
      Width = 81
      Height = 21
      Date = 42005.914764351850000000
      Time = 42005.914764351850000000
      TabOrder = 1
    end
    object HastaDateTimePicker: TDateTimePicker
      Left = 269
      Top = 24
      Width = 82
      Height = 21
      Date = 42156.914837233790000000
      Time = 42156.914837233790000000
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 290
    Width = 537
    Height = 72
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 546
    object AceptarBitBtn: TBitBtn
      Left = 233
      Top = 12
      Width = 80
      Height = 50
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = AceptarBitBtnClick
    end
    object SalirBitBtn: TBitBtn
      Left = 437
      Top = 12
      Width = 80
      Height = 50
      Caption = 'Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 537
    Height = 225
    Align = alClient
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 546
    object Label4: TLabel
      Left = 139
      Top = 41
      Width = 71
      Height = 13
      Caption = 'Debito Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 324
      Top = 41
      Width = 75
      Height = 13
      Caption = 'Credito Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 238
      Top = 121
      Width = 75
      Height = 13
      Caption = 'Total a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CreditoEdit: TEdit
      Left = 96
      Top = 60
      Width = 166
      Height = 21
      Alignment = taCenter
      TabOrder = 0
      Text = '0'
    end
    object DebitoEdit: TEdit
      Left = 277
      Top = 60
      Width = 166
      Height = 21
      Alignment = taCenter
      TabOrder = 1
      Text = '0'
    end
    object SaldoEdit: TEdit
      Left = 193
      Top = 140
      Width = 166
      Height = 21
      Alignment = taCenter
      TabOrder = 2
      Text = '0'
    end
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 472
    Top = 88
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 472
    Top = 176
  end
end
