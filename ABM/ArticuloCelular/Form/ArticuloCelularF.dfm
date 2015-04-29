object ArticuloCelularForm: TArticuloCelularForm
  Left = 309
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Altas, Bajas y Modificaciones de Articulos'
  ClientHeight = 468
  ClientWidth = 794
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
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
  object Panel3: TPanel
    Left = 703
    Top = 57
    Width = 91
    Height = 411
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label40: TLabel
      Left = 23
      Top = 196
      Width = 46
      Height = 13
      Caption = 'Grabar?'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SiBitBtn: TBitBtn
      Left = 6
      Top = 140
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
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
      OnClick = SiBitBtnClick
    end
    object NoBitBtn: TBitBtn
      Left = 6
      Top = 215
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 57
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 7
      Top = 7
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
    object BitBtn4: TBitBtn
      Left = 709
      Top = 5
      Width = 80
      Height = 50
      Caption = 'Buscar F5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object DBNavigator1: TDBNavigator
      Left = 93
      Top = 4
      Width = 610
      Height = 50
      DataSource = DataSource
      Hints.Strings = (
        'Primer registro'
        'Registro anterior'
        'Registro siguiente'
        #218'ltimo registro'
        'Insertar registro'
        'Eliminar registro'
        'Editar registro'
        'Guardar cambios'
        'Cancelar edici'#243'n'
        'Refrescar datos')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit19: TDBEdit
      Left = 7
      Top = 26
      Width = 80
      Height = 21
      DataField = 'CodParte'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 703
    Height = 411
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Detalles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 10
        Top = 73
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descripci'#243'n'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label14: TLabel
        Left = 38
        Top = 122
        Width = 40
        Height = 13
        Caption = 'Estado'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 19
        Top = 96
        Width = 59
        Height = 13
        Caption = 'Proveedor'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 434
        Top = 68
        Width = 71
        Height = 13
        Caption = 'Tasa de IVA'
        FocusControl = IVADBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 476
        Top = 44
        Width = 29
        Height = 13
        Caption = 'Flete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 582
        Top = 69
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 45
        Top = 258
        Width = 33
        Height = 13
        Caption = 'Costo'
        Color = clBlack
        FocusControl = CostoDBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 425
        Top = 138
        Width = 80
        Height = 13
        Caption = 'Costo + Flete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 511
        Top = 139
        Width = 106
        Height = 17
        DataField = 'cf'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 422
        Top = 178
        Width = 68
        Height = 13
        Caption = 'Costo Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 582
        Top = 45
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 687
        Top = 64
        Width = 3
        Height = 13
      end
      object Label4: TLabel
        Left = 477
        Top = 225
        Width = 28
        Height = 13
        Caption = 'Lista'
        FocusControl = PrecioCtaCteDBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 450
        Top = 97
        Width = 55
        Height = 13
        Caption = 'Ganancia'
        FocusControl = GanaciaDBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 582
        Top = 96
        Width = 8
        Height = 13
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 511
        Top = 173
        Width = 144
        Height = 29
        DataField = 'cfi'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 16
        Top = 42
        Width = 62
        Height = 13
        Caption = 'NSE /IMEI'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label29: TLabel
        Left = 17
        Top = 182
        Width = 61
        Height = 13
        Caption = 'Le quedan'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label35: TLabel
        Left = 163
        Top = 178
        Width = 21
        Height = 13
        Caption = 'd'#237'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 8
        Top = 151
        Width = 70
        Height = 13
        Caption = 'Vencimiento'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label37: TLabel
        Left = 163
        Top = 151
        Width = 73
        Height = 13
        Caption = 'dd/mm/aaaa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 27
        Top = 229
        Width = 51
        Height = 13
        Caption = 'Cantidad'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 83
        Top = 69
        Width = 257
        Height = 21
        DataField = 'Descripcion'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 83
        Top = 96
        Width = 257
        Height = 21
        DataField = 'Proveedor'
        DataSource = DataSource
        KeyField = 'CodProve'
        ListField = 'Nombre'
        ListSource = DSQProve
        TabOrder = 2
      end
      object IVADBEdit: TDBEdit
        Left = 511
        Top = 69
        Width = 65
        Height = 21
        DataField = 'Tasa'
        DataSource = DataSource
        TabOrder = 8
      end
      object FleteDBEdit: TDBEdit
        Left = 511
        Top = 43
        Width = 65
        Height = 21
        DataField = 'ImpOtros'
        DataSource = DataSource
        TabOrder = 7
      end
      object CostoDBEdit: TDBEdit
        Left = 83
        Top = 258
        Width = 113
        Height = 21
        DataField = 'Costo'
        DataSource = DataSource
        TabOrder = 6
      end
      object PrecioCtaCteDBEdit: TDBEdit
        Left = 511
        Top = 223
        Width = 97
        Height = 21
        DataField = 'PrecioCtaCte'
        DataSource = DataSource
        TabOrder = 10
      end
      object GanaciaDBEdit: TDBEdit
        Left = 511
        Top = 96
        Width = 65
        Height = 21
        DataField = 'PorcentajeCtaCte'
        DataSource = DataSource
        TabOrder = 9
        OnExit = GanaciaDBEditExit
      end
      object Edit1: TDBEdit
        Left = 83
        Top = 42
        Width = 257
        Height = 21
        DataField = 'CodigoBarra'
        DataSource = DataSource
        TabOrder = 0
      end
      object diasDBEdit: TDBEdit
        Left = 84
        Top = 178
        Width = 73
        Height = 21
        DataField = 'Vencimiento'
        DataSource = DataSource
        TabOrder = 11
      end
      object VenceDBEdit: TDBEdit
        Left = 84
        Top = 151
        Width = 73
        Height = 21
        DataField = 'Vence'
        DataSource = DataSource
        TabOrder = 4
        OnExit = VenceDBEditExit
      end
      object DBEdit10: TDBEdit
        Left = 83
        Top = 231
        Width = 73
        Height = 21
        DataField = 'Disponible'
        DataSource = DataSource
        TabOrder = 5
      end
      object EstadoDBComboBox: TDBComboBox
        Left = 84
        Top = 124
        Width = 145
        Height = 21
        DataField = 'Estado'
        DataSource = DataSource
        Items.Strings = (
          'Desactivado'
          'Activado'
          'PreActivado'
          'Bloqueado'
          'Liberado'
          'Negado')
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Notas'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 695
        Height = 383
        Align = alClient
        Color = clBlack
        DataField = 'Notas'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Informaci'#243'n Adicional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = 421
        Top = 84
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ubicaci'#243'n'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 400
        Top = 145
        Width = 79
        Height = 13
        Caption = 'Stock M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 399
        Top = 175
        Width = 80
        Height = 13
        Caption = 'Stock M'#225'ximo'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 395
        Top = 205
        Width = 84
        Height = 13
        Caption = 'Stock Vendido'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 358
        Top = 236
        Width = 121
        Height = 13
        Caption = 'Fecha Compra Ultimo'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 438
        Top = 56
        Width = 41
        Height = 13
        Alignment = taRightJustify
        Caption = 'Unidad'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 407
        Top = 113
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Procedencia'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 25
        Top = 85
        Width = 35
        Height = 13
        Caption = 'Rubro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 24
        Top = 117
        Width = 36
        Height = 13
        Caption = 'Marca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 3
        Top = 53
        Width = 57
        Height = 13
        Caption = 'Categor'#237'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 443
        Top = 263
        Width = 36
        Height = 13
        Caption = 'Fecha'
        FocusControl = FechaDBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit6: TDBEdit
        Left = 486
        Top = 83
        Width = 145
        Height = 21
        DataField = 'Ubicacion'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 486
        Top = 144
        Width = 96
        Height = 21
        DataField = 'StockMinimo'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 486
        Top = 175
        Width = 96
        Height = 21
        DataField = 'StockMaximo'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 486
        Top = 205
        Width = 97
        Height = 21
        DataField = 'StockVendido'
        DataSource = DataSource
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 486
        Top = 236
        Width = 97
        Height = 21
        DataField = 'FechaCompUlt'
        DataSource = DataSource
        TabOrder = 9
      end
      object DBEdit9: TDBEdit
        Left = 486
        Top = 55
        Width = 73
        Height = 21
        DataField = 'Unidad'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit21: TDBEdit
        Left = 486
        Top = 112
        Width = 97
        Height = 21
        DataField = 'Procedencia'
        DataSource = DataSource
        TabOrder = 5
      end
      object RubroDBLookupComboBox: TDBLookupComboBox
        Left = 66
        Top = 84
        Width = 170
        Height = 21
        DataField = 'Rubro'
        DataSource = DataSource
        KeyField = 'Descripcion'
        ListField = 'Descripcion'
        ListSource = DSRubro
        TabOrder = 1
      end
      object BitBtn8: TBitBtn
        Left = 233
        Top = 84
        Width = 50
        Height = 21
        Caption = '+ F2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = BitBtn8Click
      end
      object MarcaDBLookupComboBox: TDBLookupComboBox
        Left = 66
        Top = 116
        Width = 170
        Height = 21
        DataField = 'Marca'
        DataSource = DataSource
        KeyField = 'Descripcion'
        ListField = 'Descripcion'
        ListSource = MarcaDataSource
        TabOrder = 2
      end
      object BitBtn10: TBitBtn
        Left = 234
        Top = 116
        Width = 49
        Height = 21
        Caption = '+ F3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = BitBtn10Click
      end
      object CategoriaDBLookupComboBox: TDBLookupComboBox
        Left = 66
        Top = 53
        Width = 170
        Height = 21
        DataField = 'Categoria'
        DataSource = DataSource
        KeyField = 'Categoria'
        ListField = 'Categoria'
        ListSource = CategoriaDataSource
        TabOrder = 0
      end
      object BitBtn11: TBitBtn
        Left = 235
        Top = 53
        Width = 50
        Height = 21
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = BitBtn11Click
      end
      object FechaDBEdit: TDBEdit
        Left = 485
        Top = 263
        Width = 97
        Height = 21
        DataField = 'Fecha'
        DataSource = DataSource
        TabOrder = 13
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Precios'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 42
        Top = 178
        Width = 48
        Height = 13
        Caption = 'Precio 5'
        FocusControl = Precio1DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 42
        Top = 53
        Width = 48
        Height = 13
        Caption = 'Precio 1'
        FocusControl = Precio2DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 42
        Top = 85
        Width = 48
        Height = 13
        Caption = 'Precio 2'
        FocusControl = Precio3DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 42
        Top = 208
        Width = 48
        Height = 13
        Caption = 'Precio 6'
        FocusControl = Precio6DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 42
        Top = 114
        Width = 48
        Height = 13
        Caption = 'Precio 3'
        FocusControl = Precio4DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 42
        Top = 146
        Width = 48
        Height = 13
        Caption = 'Precio 4'
        FocusControl = Precio5DBEdit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 95
        Top = 31
        Width = 38
        Height = 13
        Caption = 'Listas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Precio1DBEdit: TDBEdit
        Left = 96
        Top = 53
        Width = 96
        Height = 21
        DataField = 'Precio1'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Precio2DBEdit: TDBEdit
        Left = 96
        Top = 83
        Width = 96
        Height = 21
        DataField = 'Precio2'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Precio3DBEdit: TDBEdit
        Left = 96
        Top = 113
        Width = 97
        Height = 21
        DataField = 'Precio3'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Precio6DBEdit: TDBEdit
        Left = 95
        Top = 207
        Width = 97
        Height = 21
        DataField = 'Precio6'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnExit = Precio6DBEditExit
      end
      object Precio4DBEdit: TDBEdit
        Left = 95
        Top = 144
        Width = 97
        Height = 21
        DataField = 'Precio4'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Precio5DBEdit: TDBEdit
        Left = 95
        Top = 177
        Width = 97
        Height = 21
        DataField = 'Precio5'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label50: TLabel
        Left = 185
        Top = 51
        Width = 162
        Height = 13
        Caption = 'Cuenta Contable Asociada a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 132
        Top = 203
        Width = 47
        Height = 13
        Caption = 'Anticipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 90
        Top = 163
        Width = 89
        Height = 13
        Caption = 'Ingresos Brutos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 153
        Top = 123
        Width = 26
        Height = 13
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 135
        Top = 83
        Width = 44
        Height = 13
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CuentaDBLookupComboBox: TDBLookupComboBox
        Left = 185
        Top = 83
        Width = 351
        Height = 21
        DataField = 'CtaNombre'
        DataSource = DataSource
        KeyField = 'Codigo'
        ListField = 'Cuenta'
        ListSource = CuentaDataSource
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 185
        Top = 123
        Width = 351
        Height = 21
        DataField = 'CtaTipo'
        DataSource = DataSource
        KeyField = 'Codigo'
        ListField = 'Cuenta'
        ListSource = CuentaDataSource
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 185
        Top = 163
        Width = 351
        Height = 21
        DataField = 'CtaIIBB'
        DataSource = DataSource
        KeyField = 'Codigo'
        ListField = 'Cuenta'
        ListSource = CuentaDataSource
        TabOrder = 2
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 185
        Top = 203
        Width = 351
        Height = 21
        DataField = 'CtaAnticipo'
        DataSource = DataSource
        KeyField = 'Codigo'
        ListField = 'Cuenta'
        ListSource = CuentaDataSource
        TabOrder = 3
      end
    end
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 88
    Top = 377
  end
  object ADOTCat: TADOTable
    CursorType = ctStatic
    TableName = 'Categorias'
    Left = 128
    Top = 377
  end
  object ADOTSubCat: TADOTable
    CursorType = ctStatic
    TableName = 'SubCategorias'
    Left = 200
    Top = 377
  end
  object DSTCat: TDataSource
    DataSet = ADOTCat
    Left = 160
    Top = 377
  end
  object DSTSubCat: TDataSource
    DataSet = ADOTSubCat
    Left = 232
    Top = 377
  end
  object TMateriales: TADOTable
    TableName = 'Materiales'
    Left = 344
    Top = 377
  end
  object DSMateriales: TDataSource
    DataSet = TMateriales
    Left = 376
    Top = 377
  end
  object AQTemp: TADOQuery
    Parameters = <>
    Left = 416
    Top = 377
  end
  object TRubro: TADOTable
    CursorType = ctStatic
    TableName = 'Rubro'
    Left = 272
    Top = 377
  end
  object DSRubro: TDataSource
    DataSet = TRubro
    Left = 312
    Top = 377
  end
  object QProve: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Proveedores ORDER BY Nombre')
    Left = 8
    Top = 88
  end
  object DSQProve: TDataSource
    DataSet = QProve
    Left = 40
    Top = 88
  end
  object CategoriaADOTable: TADOTable
    CursorType = ctStatic
    TableName = 'Categorias'
    Left = 72
    Top = 88
  end
  object CategoriaDataSource: TDataSource
    DataSet = CategoriaADOTable
    Left = 104
    Top = 88
  end
  object MarcaADOTable: TADOTable
    CursorType = ctStatic
    TableName = 'Marca'
    Left = 136
    Top = 88
  end
  object MarcaDataSource: TDataSource
    DataSet = MarcaADOTable
    Left = 168
    Top = 88
  end
  object Tabla: TADOQuery
    CursorType = ctStatic
    AfterInsert = TablaAfterInsert
    Parameters = <>
    SQL.Strings = (
      'SELECT *, (costo + ImpOtros) as cf, '
      '((costo + ImpOtros) * (Tasa/100+1)) as cfi'
      'FROM Articulos Order By CodPArte')
    Left = 56
    Top = 377
  end
  object CuentaQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Cuenta order by Cuenta')
    Left = 200
    Top = 88
  end
  object CuentaDataSource: TDataSource
    DataSet = CuentaQuery
    Left = 238
    Top = 88
  end
  object ConfigQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Configuracion'
      '')
    Left = 16
    Top = 376
  end
end
