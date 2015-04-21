object PresupuestoForm: TPresupuestoForm
  Left = 321
  Top = 220
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'PRESUPUESTO'
  ClientHeight = 468
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
  object Panel4: TPanel
    Left = 0
    Top = 350
    Width = 792
    Height = 118
    Align = alBottom
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label40: TLabel
      Left = 28
      Top = 126
      Width = 60
      Height = 13
      Caption = 'Impresora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 4
      Top = 13
      Width = 48
      Height = 13
      Caption = 'Contado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 8
      Top = 37
      Width = 44
      Height = 13
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 11
      Top = 61
      Width = 41
      Height = 13
      Caption = 'Tarjeta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 27
      Top = 85
      Width = 25
      Height = 13
      Caption = 'Otro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 182
      Top = 21
      Width = 15
      Height = 13
      Caption = 'N'#186
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 232
      Top = 21
      Width = 41
      Height = 13
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label34: TLabel
      Left = 313
      Top = 21
      Width = 37
      Height = 13
      Caption = 'Vence'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 88
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
      Left = 272
      Top = 89
      Width = 78
      Height = 13
      Caption = 'Presupuesto?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object TipoRadioGroup: TRadioGroup
      Left = 819
      Top = 42
      Width = 137
      Height = 104
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Venta'
        'Presupuesto'
        'Financiaci'#243'n')
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object ComboBox1: TComboBox
      Left = 90
      Top = 126
      Width = 321
      Height = 21
      TabOrder = 1
    end
    object NroChequeEdit: TEdit
      Left = 161
      Top = 37
      Width = 49
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object NroTarjetaEdit: TEdit
      Left = 161
      Top = 61
      Width = 49
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DetChequeEdit: TEdit
      Left = 209
      Top = 37
      Width = 84
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DetTarjetaEdit: TEdit
      Left = 209
      Top = 61
      Width = 165
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object FECheque: TEdit
      Left = 56
      Top = 37
      Width = 106
      Height = 21
      TabOrder = 6
      Text = '0'
      OnChange = FEChequeChange
    end
    object FETarjeta: TEdit
      Left = 56
      Top = 61
      Width = 106
      Height = 21
      TabOrder = 7
      Text = '0'
      OnChange = FETarjetaChange
    end
    object FEOtro: TEdit
      Left = 56
      Top = 85
      Width = 106
      Height = 21
      TabOrder = 8
      Text = '0'
      OnChange = FEOtroChange
    end
    object DiaChequeDateTimePicker: TDateTimePicker
      Left = 292
      Top = 37
      Width = 82
      Height = 21
      Date = 40148.506836111110000000
      Time = 40148.506836111110000000
      TabOrder = 9
    end
    object FEContado: TEdit
      Left = 56
      Top = 13
      Width = 106
      Height = 21
      TabOrder = 10
      Text = '0'
      OnChange = FEContadoChange
      OnExit = FEContadoExit
    end
    object SGTotal: TStringGrid
      Left = 584
      Top = 1
      Width = 207
      Height = 119
      BiDiMode = bdRightToLeft
      ColCount = 2
      DefaultColWidth = 100
      FixedRows = 0
      ParentBiDiMode = False
      ScrollBars = ssNone
      TabOrder = 11
    end
    object GroupBox2: TGroupBox
      Left = 379
      Top = 0
      Width = 94
      Height = 118
      Caption = '  Procesar  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object NoBitBtn: TBitBtn
        Left = 7
        Top = 62
        Width = 80
        Height = 50
        Caption = 'Esc'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = bkCancel
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = NoBitBtnClick
      end
      object ProcesarBitBtn: TBitBtn
        Left = 7
        Top = 14
        Width = 80
        Height = 50
        Caption = 'F12'
        DoubleBuffered = True
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
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnClick = ProcesarBitBtnClick
      end
    end
    object PagareCheckBox: TCheckBox
      Left = 222
      Top = 88
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
      TabOrder = 13
    end
    object GroupBox5: TGroupBox
      Left = 472
      Top = 33
      Width = 113
      Height = 51
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      object LbSaldo: TLabel
        Left = 3
        Top = 13
        Width = 109
        Height = 35
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Presupuesto: TCheckBox
      Left = 356
      Top = 88
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 15
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 97
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 25
      Top = 5
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
      Left = 75
      Top = 30
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
    object Label3: TLabel
      Left = 75
      Top = 60
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
    object DireccionLabel: TLabel
      Left = 75
      Top = 44
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
    object Label5: TLabel
      Left = 10
      Top = 44
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
      Left = 646
      Top = 78
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
      Left = 464
      Top = 62
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
      Left = 661
      Top = 54
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
      Left = 479
      Top = 78
      Width = 41
      Height = 13
      Caption = 'Precio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 705
      Top = 78
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
    object Label14: TLabel
      Left = 528
      Top = 62
      Width = 65
      Height = 13
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PrecioLabel: TLabel
      Left = 528
      Top = 78
      Width = 85
      Height = 13
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 479
      Top = 46
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
      Top = 76
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
      Left = 444
      Top = 30
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
      Left = 528
      Top = 30
      Width = 73
      Height = 13
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 528
      Top = 46
      Width = 73
      Height = 13
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 35
      Top = 76
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
    object CUITLabel: TLabel
      Left = 75
      Top = 76
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
    object Label16: TLabel
      Left = 642
      Top = 7
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
    object VendedorLabel: TLabel
      Left = 705
      Top = 30
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
    object DocumentoLabel: TLabel
      Left = 101
      Top = 76
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
      Left = 75
      Top = 1
      Width = 60
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object ClienteBitBtn: TBitBtn
      Left = 133
      Top = -1
      Width = 49
      Height = 24
      Caption = 'F1...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = ClienteBitBtnClick
    end
    object VendedorBitBtn: TBitBtn
      Left = 743
      Top = 1
      Width = 49
      Height = 24
      Caption = 'F3...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = VendedorBitBtnClick
    end
    object VendedorEdit: TEdit
      Left = 705
      Top = 3
      Width = 38
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object FechaDateTimePicker: TDateTimePicker
      Left = 705
      Top = 50
      Width = 87
      Height = 21
      Date = 40179.475039594910000000
      Time = 40179.475039594910000000
      TabOrder = 4
    end
    object GroupBox4: TGroupBox
      Left = 351
      Top = -1
      Width = 58
      Height = 97
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object cbTipo: TComboBox
        Left = 3
        Top = 29
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
  object SGFact: TStringGrid
    Left = 0
    Top = 97
    Width = 687
    Height = 253
    Align = alClient
    ColCount = 11
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ScrollBars = ssVertical
    TabOrder = 2
    ColWidths = (
      64
      274
      73
      52
      93
      84
      36
      64
      64
      64
      64)
    RowHeights = (
      24
      20)
  end
  object Panel2: TPanel
    Left = 687
    Top = 97
    Width = 105
    Height = 253
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 3
    object Label37: TLabel
      Left = 27
      Top = 117
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
    object Label38: TLabel
      Left = 124
      Top = 118
      Width = 37
      Height = 13
      Caption = 'Precio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label24: TLabel
      Left = 20
      Top = 182
      Width = 66
      Height = 13
      Caption = 'Descuento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 76
      Top = 200
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
    object GroupBox1: TGroupBox
      Left = 8
      Top = 2
      Width = 89
      Height = 113
      Caption = '  Items  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object QuitarBitBtn: TBitBtn
        Left = 4
        Top = 61
        Width = 80
        Height = 50
        Caption = '- F6'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnClick = QuitarBitBtnClick
      end
      object AgregarBitBtn: TBitBtn
        Left = 4
        Top = 13
        Width = 80
        Height = 50
        Caption = '+ F5'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnClick = AgregarBitBtnClick
      end
    end
    object CantidadBitBtn: TBitBtn
      Left = 12
      Top = 130
      Width = 80
      Height = 50
      Caption = '^ F7'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = CantidadBitBtnClick
    end
    object BitBtn7: TBitBtn
      Left = 106
      Top = 137
      Width = 75
      Height = 25
      Caption = '^ F7'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object FLEPorcDesc: TEdit
      Left = 20
      Top = 197
      Width = 50
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object BitBtn10: TBitBtn
      Left = 20
      Top = 219
      Width = 66
      Height = 30
      Caption = 'Calc.'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn10Click
    end
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 192
    Top = 232
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 288
    Top = 232
  end
end
