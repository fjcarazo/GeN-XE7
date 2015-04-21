object CuentasContablesForm: TCuentasContablesForm
  Left = 374
  Top = 161
  Caption = 'Altas Bajas y Modificaciones de Cuentas Contables'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 193
    Width = 696
    Height = 273
    Align = alClient
    DataSource = GrillaDS
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'JERARQUIA'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Width = 283
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUBRO'
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPITULO'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOGASTO'
        Visible = True
      end>
  end
  object Panel5: TPanel
    Left = 696
    Top = 193
    Width = 96
    Height = 273
    Align = alRight
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label7: TLabel
      Left = 24
      Top = 187
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
    object GrabarBitBtn: TBitBtn
      Left = 7
      Top = 135
      Width = 80
      Height = 50
      Hint = '[F8]'
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = GrabarBitBtnClick
    end
    object BitBtn2: TBitBtn
      Left = 7
      Top = 202
      Width = 80
      Height = 50
      Hint = '[ESC]'
      Caption = 'No'
      DoubleBuffered = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object OrdenarJerarquiaBitBtn: TBitBtn
      Left = 7
      Top = 0
      Width = 80
      Height = 50
      Caption = 'Jerarquia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = OrdenarJerarquiaBitBtnClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 193
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 61
      Width = 41
      Height = 13
      Caption = 'Cuenta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 95
      Width = 35
      Height = 13
      Caption = 'Rubro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 15
      Top = 128
      Width = 101
      Height = 13
      Caption = 'Leyenda Deudora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 160
      Width = 111
      Height = 13
      Caption = 'Leyenda Acreedora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 439
      Top = 61
      Width = 47
      Height = 13
      Caption = 'Capitulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 405
      Top = 95
      Width = 81
      Height = 13
      Caption = 'Tipo de Gasto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 714
      Top = 178
      Width = 58
      Height = 13
      Caption = 'Ordenar X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CuentaDBEdit: TDBEdit
      Left = 56
      Top = 60
      Width = 340
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = DS
      TabOrder = 0
    end
    object RubroDBLookupComboBox: TDBLookupComboBox
      Left = 53
      Top = 94
      Width = 340
      Height = 21
      DataField = 'RUBRO'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = RubroTDS
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 122
      Top = 128
      Width = 572
      Height = 21
      DataField = 'LEYENDADEUDORA'
      DataSource = DS
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 123
      Top = 159
      Width = 572
      Height = 21
      DataField = 'LEYENDAHACREEDORA'
      DataSource = DS
      TabOrder = 5
      OnExit = DBEdit3Exit
    end
    object CapitulosDBLookupComboBox: TDBLookupComboBox
      Left = 491
      Top = 60
      Width = 205
      Height = 21
      DataField = 'CAPITULO'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = CapituloTDS
      TabOrder = 1
    end
    object TipoDBLookupComboBox: TDBLookupComboBox
      Left = 492
      Top = 95
      Width = 205
      Height = 21
      DataField = 'TIPOGASTO'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = TipoGastoTDS
      TabOrder = 3
    end
    object CodigoDBEdit: TDBEdit
      Left = 6
      Top = 14
      Width = 89
      Height = 28
      DataField = 'CODIGO'
      DataSource = DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBNavigator1: TDBNavigator
      Left = 103
      Top = 4
      Width = 594
      Height = 50
      DataSource = DS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Hints.Strings = (
        'primero '
        'anterior'
        'siguiente '
        #250'ltimo '
        'nuevo '
        'borrar '
        'modificar '
        'grabar '
        'cancelar '
        'actualizar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = DBNavigator1Click
    end
    object BuscarBitBtn: TBitBtn
      Left = 703
      Top = 4
      Width = 80
      Height = 50
      Hint = '[F2]'
      Caption = '&Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BuscarBitBtnClick
    end
    object OrdenarAZBitBtn: TBitBtn
      Left = 703
      Top = 126
      Width = 80
      Height = 50
      Caption = 'A ... Z'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = OrdenarAZBitBtnClick
    end
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    AfterCancel = TablaAfterCancel
    AfterDelete = TablaAfterDelete
    AfterInsert = TablaAfterInsert
    AfterPost = TablaAfterPost
    BeforePost = TablaBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'RUBRO'
        DataType = ftInteger
      end
      item
        Name = 'CAPITULO'
        DataType = ftInteger
      end
      item
        Name = 'TIPOGASTO'
        DataType = ftInteger
      end
      item
        Name = 'JERARQUIA'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'SALDO'
        DataType = ftFloat
      end
      item
        Name = 'LEYENDADEUDORA'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'LEYENDAHACREEDORA'
        DataType = ftWideString
        Size = 50
      end>
    StoreDefs = True
    TableName = 'Cuenta'
    UniDirectional = False
    Left = 80
    Top = 288
  end
  object DS: TDataSource
    DataSet = Tabla
    Left = 111
    Top = 288
  end
  object GrillaQ: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  "Cuenta".JERARQUIA,'
      '  "Cuenta".DESCRIPCION,'
      '  "RubroContable".DESCRIPCION AS RUBRO,'
      '  "Capitulo".DESCRIPCION AS CAPITULO,'
      '  "TipoGasto".DESCRIPCION AS TIPOGASTO'
      'FROM'
      '  "Cuenta"'
      
        '  INNER JOIN "RubroContable" ON ("Cuenta".RUBRO = "RubroContable' +
        '".CODIGO)'
      
        '  INNER JOIN "Capitulo" ON ("Cuenta".CAPITULO = "Capitulo".CODIG' +
        'O)'
      
        '  LEFT JOIN "TipoGasto" ON ("Cuenta".TIPOGASTO = "TipoGasto".COD' +
        'IGO)')
    Left = 552
    Top = 288
  end
  object GrillaDS: TDataSource
    DataSet = GrillaQ
    Left = 591
    Top = 288
  end
  object CapituloT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "Capitulo"'
      'ORDER BY'
      '  "Capitulo".DESCRIPCION')
    Left = 192
    Top = 288
  end
  object CapituloTDS: TDataSource
    DataSet = CapituloT
    Left = 223
    Top = 288
  end
  object RubroT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "RubroContable"'
      'ORDER BY'
      '  "RubroContable".DESCRIPCION')
    Left = 280
    Top = 288
  end
  object RubroTDS: TDataSource
    DataSet = RubroT
    Left = 311
    Top = 288
  end
  object TipoGastoT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "TipoGasto"'
      'ORDER BY'
      '  "TipoGasto".DESCRIPCION')
    Left = 368
    Top = 288
  end
  object TipoGastoTDS: TDataSource
    DataSet = TipoGastoT
    Left = 399
    Top = 288
  end
end
