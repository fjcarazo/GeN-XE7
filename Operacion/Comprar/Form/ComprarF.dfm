object ComprarForm: TComprarForm
  Left = 280
  Top = 184
  Hint = 'APLICAR DESCUENTO'
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Comprar'
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
  ShowHint = True
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 624
    Top = 25
    Width = 168
    Height = 384
    Align = alRight
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label17: TLabel
      Left = 40
      Top = 22
      Width = 62
      Height = 13
      Caption = 'FACTURA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 64
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SGTotal: TStringGrid
      Left = 0
      Top = 262
      Width = 169
      Height = 121
      BiDiMode = bdRightToLeft
      ColCount = 2
      FixedRows = 0
      ParentBiDiMode = False
      ScrollBars = ssNone
      TabOrder = 1
      ColWidths = (
        64
        100)
      RowHeights = (
        22
        21
        21
        21
        24)
    end
    object CUITEdit: TEdit
      Left = 39
      Top = 41
      Width = 89
      Height = 21
      TabOrder = 0
      OnExit = CUITEditExit
    end
    object cbTipo: TComboBox
      Left = 56
      Top = 115
      Width = 57
      Height = 45
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = cbTipoChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'R'
        'X')
    end
    object PagareCheckBox: TCheckBox
      Left = 40
      Top = 73
      Width = 72
      Height = 17
      Caption = 'Realizar Pagare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object SGFact: TStringGrid
    Left = 0
    Top = 25
    Width = 624
    Height = 384
    Align = alClient
    ColCount = 9
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 1
    OnDblClick = SGFactDblClick
    ColWidths = (
      64
      336
      54
      52
      110
      84
      36
      64
      64)
    RowHeights = (
      24
      20)
  end
  object Panel3: TPanel
    Left = 0
    Top = 409
    Width = 792
    Height = 57
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object SiBitBtn: TBitBtn
      Left = 708
      Top = 3
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
      OnClick = SiBitBtnClick
    end
    object ProveedorBitBtn: TBitBtn
      Left = 3
      Top = 3
      Width = 94
      Height = 50
      Hint = 'F1 SELECCIONAR CLIENTE'
      Caption = 'proveedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ProveedorBitBtnClick
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
      TabOrder = 2
      OnClick = AgregarBitBtnClick
    end
    object NuevoBitBtn: TBitBtn
      Left = 349
      Top = 3
      Width = 80
      Height = 50
      Hint = 'F4 - CREAR ARTICULO'
      Caption = '* nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
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
      TabOrder = 4
      OnClick = QuitarBitBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 25
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 3
      Top = 6
      Width = 82
      Height = 13
      Caption = 'PROVEEDOR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 644
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
    object Label12: TLabel
      Left = 308
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
    object Label25: TLabel
      Left = 472
      Top = 5
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
    object ProveedorLabel: TLabel
      Left = 113
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
    object CodigoEdit: TEdit
      Left = 91
      Top = 2
      Width = 16
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
    object FechaDateTimePicker: TDateTimePicker
      Left = 688
      Top = 2
      Width = 103
      Height = 21
      Date = 42005.475039594910000000
      Time = 42005.475039594910000000
      TabOrder = 1
    end
    object FLEPorcDesc: TEdit
      Left = 539
      Top = 2
      Width = 56
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object VendedorEdit: TEdit
      Left = 369
      Top = 2
      Width = 89
      Height = 21
      TabOrder = 3
    end
    object DescuentoBitBtn: TBitBtn
      Left = 594
      Top = 1
      Width = 31
      Height = 23
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = DescuentoBitBtnClick
    end
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 200
    Top = 240
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 296
    Top = 240
  end
end
