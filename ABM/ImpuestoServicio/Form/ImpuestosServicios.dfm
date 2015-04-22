object ImpuestosServiciosFrom: TImpuestosServiciosFrom
  Left = 247
  Top = 180
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Altas, Bajas y Modificaciones de Impuestos y Servicios'
  ClientHeight = 468
  ClientWidth = 794
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
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 50
    Width = 701
    Height = 418
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informaci'#243'n General'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 90
        Top = 237
        Width = 40
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 79
        Top = 261
        Width = 51
        Height = 13
        Caption = 'Tel'#233'fono'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 235
        Top = 261
        Width = 57
        Height = 13
        Caption = 'Extenci'#243'n'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 109
        Top = 285
        Width = 21
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 99
        Top = 309
        Width = 31
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 42
        Top = 213
        Width = 88
        Height = 13
        Caption = 'Codigo de Area'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 68
        Top = 333
        Width = 62
        Height = 13
        Caption = 'Messenger'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 86
        Top = 20
        Width = 44
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 75
        Top = 44
        Width = 55
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 76
        Top = 116
        Width = 54
        Height = 13
        Caption = 'Provincia'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 50
        Top = 140
        Width = 80
        Height = 13
        Caption = 'Departamento'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 90
        Top = 164
        Width = 40
        Height = 13
        Caption = 'Ciudad'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 55
        Top = 188
        Width = 75
        Height = 13
        Caption = 'CodigoPostal'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 105
        Top = 92
        Width = 25
        Height = 13
        Caption = 'Pais'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 405
        Top = 65
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'T'#233'rminos'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 387
        Top = 89
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias Cr'#233'dito'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 405
        Top = 17
        Width = 52
        Height = 13
        Caption = 'Contacto'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 411
        Top = 41
        Width = 46
        Height = 13
        Caption = 'Gerente'
        FocusControl = DBEdit18
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 392
        Top = 114
        Width = 65
        Height = 13
        Caption = 'Documento'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 368
        Top = 162
        Width = 89
        Height = 13
        Caption = 'Ingresos Brutos'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 427
        Top = 138
        Width = 30
        Height = 13
        Caption = 'CUIT'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 422
        Top = 186
        Width = 35
        Height = 13
        Caption = 'Rubro'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 436
        Top = 213
        Width = 21
        Height = 13
        Caption = 'IVA'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit9: TDBEdit
        Left = 136
        Top = 234
        Width = 209
        Height = 21
        DataField = 'Celular'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 258
        Width = 97
        Height = 21
        DataField = 'Telefono'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 296
        Top = 258
        Width = 49
        Height = 21
        DataField = 'Extencion'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 136
        Top = 282
        Width = 209
        Height = 21
        DataField = 'Fax'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit13: TDBEdit
        Left = 136
        Top = 306
        Width = 209
        Height = 21
        DataField = 'Email'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit16: TDBEdit
        Left = 136
        Top = 210
        Width = 97
        Height = 21
        DataField = 'CodigoArea'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBEdit24: TDBEdit
        Left = 136
        Top = 330
        Width = 209
        Height = 21
        DataField = 'Messenger'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 17
        Width = 209
        Height = 21
        DataField = 'Nombre'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 41
        Width = 209
        Height = 21
        DataField = 'Direccion1'
        DataSource = DataSource
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 65
        Width = 209
        Height = 21
        DataField = 'Direccion2'
        DataSource = DataSource
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 113
        Width = 97
        Height = 21
        DataField = 'Provincia'
        DataSource = DataSource
        TabOrder = 10
      end
      object DBEdit6: TDBEdit
        Left = 136
        Top = 137
        Width = 97
        Height = 21
        DataField = 'Departamento'
        DataSource = DataSource
        TabOrder = 11
      end
      object DBEdit7: TDBEdit
        Left = 136
        Top = 161
        Width = 97
        Height = 21
        DataField = 'Ciudad'
        DataSource = DataSource
        TabOrder = 12
      end
      object DBEdit8: TDBEdit
        Left = 136
        Top = 185
        Width = 97
        Height = 21
        DataField = 'CodigoPostal'
        DataSource = DataSource
        TabOrder = 13
      end
      object DBEdit15: TDBEdit
        Left = 136
        Top = 89
        Width = 97
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 14
      end
      object DBEdit14: TDBEdit
        Left = 461
        Top = 62
        Width = 145
        Height = 21
        DataField = 'Terminos'
        DataSource = DataSource
        TabOrder = 15
      end
      object DBEdit1: TDBEdit
        Left = 461
        Top = 86
        Width = 145
        Height = 21
        DataField = 'DiasCredito'
        DataSource = DataSource
        TabOrder = 16
      end
      object DBEdit17: TDBEdit
        Left = 461
        Top = 14
        Width = 209
        Height = 21
        DataField = 'Contacto'
        DataSource = DataSource
        TabOrder = 17
      end
      object DBEdit18: TDBEdit
        Left = 461
        Top = 38
        Width = 209
        Height = 21
        DataField = 'Gerente'
        DataSource = DataSource
        TabOrder = 18
      end
      object DBEdit19: TDBEdit
        Left = 461
        Top = 111
        Width = 209
        Height = 21
        DataField = 'Documento'
        DataSource = DataSource
        TabOrder = 19
      end
      object DBEdit20: TDBEdit
        Left = 461
        Top = 159
        Width = 209
        Height = 21
        DataField = 'IngresoBruto'
        DataSource = DataSource
        TabOrder = 20
      end
      object DBEdit22: TDBEdit
        Left = 461
        Top = 135
        Width = 209
        Height = 21
        DataField = 'CUIT'
        DataSource = DataSource
        TabOrder = 21
      end
      object DBEdit21: TDBEdit
        Left = 461
        Top = 183
        Width = 209
        Height = 21
        DataField = 'Rubro'
        DataSource = DataSource
        TabOrder = 22
      end
      object DBComboBox2: TDBComboBox
        Left = 461
        Top = 210
        Width = 145
        Height = 21
        DataField = 'IVA'
        DataSource = DataSource
        Items.Strings = (
          'CF'
          'MT'
          'RI'
          'EX'
          'NR')
        TabOrder = 23
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 693
        Height = 390
        Align = alClient
        DataField = 'Notas'
        DataSource = DataSource
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label50: TLabel
        Left = 201
        Top = 83
        Width = 162
        Height = 13
        Caption = 'Cuenta Contable Asociada a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 118
        Top = 155
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label52: TLabel
        Left = 118
        Top = 115
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label53: TLabel
        Left = 118
        Top = 195
        Width = 73
        Height = 13
        Caption = 'Ingresos Brutos'
      end
      object Label54: TLabel
        Left = 118
        Top = 235
        Width = 38
        Height = 13
        Caption = 'Anticipo'
      end
      object CuentaDBLookupComboBox: TDBLookupComboBox
        Left = 201
        Top = 115
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
        Left = 201
        Top = 155
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
        Left = 201
        Top = 195
        Width = 351
        Height = 21
        DataField = 'CtaIIBB'
        DataSource = DataSource
        KeyField = 'Codigo'
        ListField = 'Cuenta'
        ListSource = CuentaDataSource
        TabOrder = 2
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 201
        Top = 235
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 50
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = -1
      Width = 700
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
        'Refrescar datos'
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 707
      Top = 0
      Width = 80
      Height = 50
      Caption = 'Buscar F5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object Panel11: TPanel
    Left = 701
    Top = 50
    Width = 93
    Height = 418
    Align = alRight
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label55: TLabel
      Left = 23
      Top = 341
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'Grabar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 135
      Width = 40
      Height = 13
      Alignment = taCenter
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 6
      Top = 154
      Width = 80
      Height = 17
      Alignment = taCenter
      DataField = 'CodImpuestoServicio'
      DataSource = DataSource
    end
    object AceptarBitBtn: TBitBtn
      Left = 6
      Top = 282
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
    end
    object BitBtn2: TBitBtn
      Left = 6
      Top = 361
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
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 6
      Top = 6
      Width = 80
      Height = 50
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object Tabla: TADOTable
    CursorType = ctStatic
    AfterInsert = TablaAfterInsert
    IndexName = 'PrimaryKey'
    TableName = 'ImpuestosServicios'
    Left = 110
    Top = 453
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 150
    Top = 453
  end
  object TUsuarios: TADOTable
    CursorType = ctStatic
    TableName = 'Usuarios'
    Left = 246
    Top = 453
  end
  object DSUsuarios: TDataSource
    DataSet = TUsuarios
    Left = 278
    Top = 453
  end
  object Query: TADOQuery
    Parameters = <>
    Left = 358
    Top = 453
  end
  object CuentaQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Cuenta order by Cuenta')
    Left = 480
    Top = 448
  end
  object CuentaDataSource: TDataSource
    DataSet = CuentaQuery
    Left = 518
    Top = 448
  end
end
