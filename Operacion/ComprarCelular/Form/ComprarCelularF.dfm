object ComprarCelularForm: TComprarCelularForm
  Left = 280
  Top = 184
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Comprar Celular'
  ClientHeight = 466
  ClientWidth = 792
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 105
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Proveedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProveedorLabel: TLabel
      Left = 156
      Top = 8
      Width = 68
      Height = 13
      Caption = 'PROVEEDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 75
      Top = 64
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 75
      Top = 80
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Direcci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 568
      Top = 80
      Width = 55
      Height = 13
      Caption = 'Tel'#233'fono:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 360
      Top = 64
      Width = 56
      Height = 13
      Caption = 'Contacto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 576
      Top = 64
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
    object Label11: TLabel
      Left = 360
      Top = 80
      Width = 39
      Height = 13
      Caption = 'Rubro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 624
      Top = 64
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 624
      Top = 80
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 440
      Top = 64
      Width = 85
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 440
      Top = 80
      Width = 85
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 583
      Top = 36
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
    object Label17: TLabel
      Left = 535
      Top = 8
      Width = 107
      Height = 13
      Caption = 'Nro. Comprobante:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 360
      Top = 48
      Width = 41
      Height = 13
      Caption = 'Vence:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 192
      Top = 80
      Width = 73
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label20: TLabel
      Left = 360
      Top = 32
      Width = 76
      Height = 13
      Caption = 'D'#237'as Credito:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 440
      Top = 32
      Width = 73
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 40
      Top = 40
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
    object Label23: TLabel
      Left = 440
      Top = 48
      Width = 73
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 16
      Top = 80
      Width = 34
      Height = 13
      Caption = 'CUIT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 56
      Top = 80
      Width = 19
      Height = 13
      Caption = 'C.F.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GerenteLabel: TLabel
      Left = 360
      Top = 8
      Width = 52
      Height = 13
      Caption = 'GERENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 5
      Width = 33
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object BitBtn1: TBitBtn
      Left = 101
      Top = 3
      Width = 49
      Height = 25
      Caption = 'F1...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object Edit3: TEdit
      Left = 648
      Top = 32
      Width = 89
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 648
      Top = 5
      Width = 130
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object cbTipo: TComboBox
      Left = 72
      Top = 36
      Width = 33
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
      Left = 699
      Top = 76
      Width = 97
      Height = 17
      Caption = 'Realizar Pagare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 327
    Width = 792
    Height = 139
    Align = alBottom
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label10: TLabel
      Left = 573
      Top = 55
      Width = 22
      Height = 29
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label24: TLabel
      Left = 504
      Top = 24
      Width = 62
      Height = 13
      Caption = 'Descuento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 48
      Top = 24
      Width = 200
      Height = 89
      Caption = 'Articulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object BitBtn3: TBitBtn
        Left = 108
        Top = 22
        Width = 80
        Height = 50
        Caption = '- F6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn2: TBitBtn
        Left = 12
        Top = 22
        Width = 80
        Height = 50
        Caption = '+ F4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 282
      Top = 24
      Width = 200
      Height = 89
      Caption = '  Procesar  Compra?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object BitBtn4: TBitBtn
        Left = 10
        Top = 22
        Width = 80
        Height = 50
        Caption = 'F8'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        ModalResult = 6
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 109
        Top = 22
        Width = 80
        Height = 50
        Caption = 'Esc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn5Click
      end
    end
    object SGTotal: TStringGrid
      Left = 614
      Top = 9
      Width = 169
      Height = 121
      BiDiMode = bdRightToLeft
      ColCount = 2
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 2
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
    object FLEPorcDesc: TEdit
      Left = 504
      Top = 50
      Width = 66
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object SGFact: TStringGrid
    Left = 0
    Top = 105
    Width = 792
    Height = 222
    Align = alClient
    Color = clWhite
    ColCount = 10
    FixedColor = clSilver
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 2
    OnDblClick = SGFactDblClick
    ColWidths = (
      64
      336
      57
      60
      93
      84
      36
      64
      64
      64)
    RowHeights = (
      24
      20)
  end
  object QTemp: TADOQuery
    Parameters = <>
    Left = 112
    Top = 208
  end
  object q: TADOQuery
    Parameters = <>
    Left = 168
    Top = 208
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 48
    Top = 208
  end
  object EmpresaQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Empresa')
    Left = 232
    Top = 208
  end
  object ConfigQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Configuracion'
      '')
    Left = 312
    Top = 208
  end
end
