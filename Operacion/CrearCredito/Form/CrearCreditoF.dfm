object CrearCreditoForm: TCrearCreditoForm
  Left = 396
  Top = 183
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Crear Credito'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 611
    Top = 161
    Width = 181
    Height = 248
    Align = alRight
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object SGTotal: TStringGrid
      Left = 0
      Top = 133
      Width = 182
      Height = 115
      BiDiMode = bdRightToLeft
      ColCount = 2
      FixedRows = 0
      ParentBiDiMode = False
      ScrollBars = ssNone
      TabOrder = 0
      ColWidths = (
        64
        100)
      RowHeights = (
        22
        21
        21
        21
        21)
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 1
      Width = 171
      Height = 129
      Caption = 'Saldo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object LbSaldo: TLabel
        Left = 3
        Top = 23
        Width = 161
        Height = 43
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 72
        Width = 66
        Height = 62
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object cbTipo: TComboBox
          Left = 6
          Top = 16
          Width = 54
          Height = 37
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'C'
          OnChange = cbTipoChange
          Items.Strings = (
            'A'
            'B'
            'C'
            'R'
            'X'
            'P')
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 792
    Height = 136
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 381
      Top = 100
      Width = 48
      Height = 13
      Caption = 'Pagare?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 375
      Top = 67
      Width = 78
      Height = 13
      Caption = 'Presupuesto?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 381
      Top = 13
      Width = 62
      Height = 13
      Caption = 'Descuento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 443
      Top = 36
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = -3
      Width = 241
      Height = 137
      Caption = 'Cuotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label12: TLabel
        Left = 10
        Top = 103
        Width = 88
        Height = 24
        Caption = 'Importe $'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 15
        Top = 63
        Width = 83
        Height = 24
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 34
        Top = 23
        Width = 64
        Height = 24
        Caption = 'Interes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 174
        Top = 23
        Width = 15
        Height = 24
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 170
        Top = 63
        Width = 55
        Height = 24
        Caption = 'cuotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CuotaCantidadEdit: TEdit
        Left = 103
        Top = 59
        Width = 65
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1'
        OnKeyUp = CuotaCantidadEditKeyUp
      end
      object CuotaImporteEdit: TEdit
        Left = 104
        Top = 97
        Width = 122
        Height = 32
        Color = clMenuBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '0'
        OnKeyUp = CuotaImporteEditKeyUp
      end
      object InteresEdit: TEdit
        Left = 103
        Top = 19
        Width = 65
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0'
        OnKeyUp = InteresEditKeyUp
      end
    end
    object EntregaGroupBox: TGroupBox
      Left = 627
      Top = 16
      Width = 161
      Height = 97
      Caption = 'Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label28: TLabel
        Left = 10
        Top = 44
        Width = 12
        Height = 24
        Caption = '$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EntregaEdit: TEdit
        Left = 25
        Top = 41
        Width = 120
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0'
        OnExit = EntregaEditExit
        OnKeyUp = CuotaCantidadEditKeyUp
      end
    end
    object PagareCheckBox: TCheckBox
      Left = 435
      Top = 98
      Width = 14
      Height = 17
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object Presupuesto: TCheckBox
      Left = 459
      Top = 65
      Width = 17
      Height = 17
      TabOrder = 3
    end
    object FLEPorcDesc: TEdit
      Left = 381
      Top = 32
      Width = 56
      Height = 21
      TabOrder = 4
      Text = '0'
      OnEnter = FLEPorcDescEnter
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 25
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 6
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ClienteLabel: TLabel
      Left = 69
      Top = 6
      Width = 9
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 661
      Top = 6
      Width = 40
      Height = 13
      Caption = 'Fecha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 360
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label39: TLabel
      Left = 450
      Top = 6
      Width = 9
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object InteresLabel: TLabel
      Left = 233
      Top = 6
      Width = 9
      Height = 13
      Alignment = taRightJustify
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 178
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Plan:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 502
      Top = 6
      Width = 56
      Height = 13
      Caption = 'Cobrador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 581
      Top = 6
      Width = 9
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PlanLabel: TLabel
      Left = 250
      Top = 6
      Width = 9
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ClienteEdit: TEdit
      Left = 49
      Top = 2
      Width = 14
      Height = 21
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object VendedorEdit: TEdit
      Left = 425
      Top = 2
      Width = 19
      Height = 21
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object PlanEdit: TEdit
      Left = 211
      Top = 2
      Width = 14
      Height = 21
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
    object CobradorEdit: TEdit
      Left = 562
      Top = 2
      Width = 13
      Height = 21
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
    object FechaDateTimePicker: TDateTimePicker
      Left = 705
      Top = 2
      Width = 85
      Height = 21
      Date = 42005.475039594910000000
      Time = 42005.475039594910000000
      TabOrder = 4
    end
  end
  object SGFact: TStringGrid
    Left = 0
    Top = 161
    Width = 611
    Height = 248
    Align = alClient
    ColCount = 10
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 3
    ColWidths = (
      64
      274
      73
      52
      93
      84
      40
      64
      64
      64)
    RowHeights = (
      24
      20)
  end
  object Panel4: TPanel
    Left = 0
    Top = 409
    Width = 792
    Height = 57
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 4
    object ProcesarBitBtn: TBitBtn
      Left = 709
      Top = 4
      Width = 80
      Height = 50
      Hint = 'F12 - PROCESAR VENTA'
      Caption = 'GRABAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ModalResult = 6
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ProcesarBitBtnClick
    end
    object ClienteBitBtn: TBitBtn
      Left = 3
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F1 SELECCIONAR CLIENTE'
      Caption = 'cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ClienteBitBtnClick
    end
    object VendedorBitBtn: TBitBtn
      Left = 83
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F3 SELECCIONAR VENDEDOR'
      Caption = 'vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = VendedorBitBtnClick
    end
    object AgregarBitBtn: TBitBtn
      Left = 271
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F5 - AGREGAR ARTICULO'
      Caption = '+ articulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = AgregarBitBtnClick
    end
    object NuevoBitBtn: TBitBtn
      Left = 349
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F8 - CREAR ARTICULO'
      Caption = '* nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = NuevoBitBtnClick
    end
    object QuitarBitBtn: TBitBtn
      Left = 427
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F6 - QUITAR ARTICULO'
      Caption = '- quitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = QuitarBitBtnClick
    end
    object CantidadBitBtn: TBitBtn
      Left = 505
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F7 - AUMENTAR CANTIDAD DE ARTICULO'
      Caption = 'cantidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = CantidadBitBtnClick
    end
    object PlanBitBtn: TBitBtn
      Left = 602
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F2 - PLAN DE CUOTAS'
      Caption = 'plan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = PlanBitBtnClick
    end
    object CobradorBitBtn: TBitBtn
      Left = 162
      Top = 4
      Width = 80
      Height = 50
      Hint = 'F4 - SELECCIONAR COBRADOR'
      Caption = 'cobrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = CobradorBitBtnClick
    end
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 192
    Top = 232
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 288
    Top = 232
  end
end
