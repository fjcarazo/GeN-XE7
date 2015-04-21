object GestionCobranzaForm: TGestionCobranzaForm
  Left = 0
  Top = 0
  Caption = 'Gestion de Cobranza'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 254
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 206
      Top = 6
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
    object Label3: TLabel
      Left = 22
      Top = 6
      Width = 24
      Height = 13
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 333
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 7
      Top = 37
      Width = 39
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 6
      Top = 74
      Width = 40
      Height = 13
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 98
      Width = 32
      Height = 13
      Caption = 'Notas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 501
      Top = 37
      Width = 45
      Height = 13
      Caption = 'Tratado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 552
      Top = 6
      Width = 234
      Height = 25
      DataSource = DS
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 4
    end
    object FechaDBEdit: TDBEdit
      Left = 245
      Top = 6
      Width = 66
      Height = 21
      DataField = 'FECHA'
      DataSource = DS
      TabOrder = 5
    end
    object HoraDBEdit: TDBEdit
      Left = 366
      Top = 6
      Width = 59
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'HORA'
      DataSource = DS
      ParentBiDiMode = False
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 52
      Top = 74
      Width = 733
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = DS
      TabOrder = 0
    end
    object DBMemo1: TDBMemo
      Left = 52
      Top = 101
      Width = 733
      Height = 89
      DataField = 'NOTAS'
      DataSource = DS
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 214
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Respondio'
      DataField = 'respondio'
      DataSource = DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ClienteDBLookupComboBox: TDBLookupComboBox
      Left = 52
      Top = 37
      Width = 145
      Height = 21
      DataField = 'CLIENTE'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'NOMBRE'
      ListSource = ClienteDS
      TabOrder = 7
    end
    object TipoDBLookupComboBox: TDBLookupComboBox
      Left = 52
      Top = 10
      Width = 145
      Height = 21
      DataField = 'COBRANZA'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = CobranzaDataSource
      TabOrder = 8
    end
    object GrabarBitBtn: TBitBtn
      Left = 345
      Top = 196
      Width = 80
      Height = 50
      Caption = 'Grabar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = GrabarBitBtnClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 552
      Top = 37
      Width = 233
      Height = 21
      DataField = 'Tratado'
      DataSource = DS
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = TratadoDataSource
      TabOrder = 9
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 403
    Width = 792
    Height = 63
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object VerCobranzaBitBtn: TBitBtn
      Left = 304
      Top = 6
      Width = 160
      Height = 50
      Caption = 'Buscar Deudor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = VerCobranzaBitBtnClick
    end
    object ExtraJudicialBitBtn: TBitBtn
      Left = 52
      Top = 6
      Width = 160
      Height = 50
      Caption = '> Pasar a ExtraJudicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ExtraJudicialBitBtnClick
    end
    object JudicialBitBtn: TBitBtn
      Left = 568
      Top = 6
      Width = 160
      Height = 50
      Caption = '> Pasar a Judicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = JudicialBitBtnClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = DS
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBRANZA'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTAS'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONDIO'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRATADO'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = DS
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBRANZA'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTAS'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONDIO'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRATADO'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = DS
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBRANZA'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTAS'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONDIO'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TRATADO'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = DS
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid4KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 637
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBRANZA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOTAS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'RESPONDIO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TRATADO'
        Visible = False
      end>
  end
  object DBGrid5: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = GestionCobranzaDataSource
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cobranza'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Notas'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'respondio'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tratado'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid6: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = GestionCobranzaDataSource
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cobranza'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Notas'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'respondio'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tratado'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid7: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = GestionCobranzaDataSource
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cobranza'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Notas'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'respondio'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tratado'
        Width = 53
        Visible = True
      end>
  end
  object DBGrid8: TDBGrid
    Left = 0
    Top = 254
    Width = 792
    Height = 117
    Align = alClient
    DataSource = GestionCobranzaDataSource
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid4KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 637
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cobranza'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Notas'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'respondio'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Tratado'
        Visible = False
      end>
  end
  object DBMemo2: TDBMemo
    Left = 0
    Top = 371
    Width = 792
    Height = 32
    Align = alBottom
    DataField = 'DESCRIPCION'
    DataSource = GestionCobranzaDataSource
    ReadOnly = True
    TabOrder = 10
  end
  object DS: TDataSource
    DataSet = Tabla
    Left = 72
    Top = 312
  end
  object ClienteDS: TDataSource
    DataSet = ClienteT
    Left = 192
    Top = 312
  end
  object CobranzaDataSource: TDataSource
    DataSet = CobranzaT
    Left = 312
    Top = 312
  end
  object TratadoDataSource: TDataSource
    DataSet = TratadoT
    Left = 504
    Top = 312
  end
  object GestionCobranzaDataSource: TDataSource
    DataSet = CobranzaT
    Left = 656
    Top = 312
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end
      item
        Name = 'HORA'
        DataType = ftTime
      end
      item
        Name = 'COBRANZA'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'NOTAS'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'RESPONDIO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'TRATADO'
        DataType = ftInteger
      end
      item
        Name = 'VENTA'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_GestionCobranza'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'GestionCobranza'
    UniDirectional = False
    Left = 40
    Top = 312
  end
  object ClienteT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "Cliente"')
    Left = 160
    Top = 312
  end
  object CobranzaT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "Cobranza"')
    Left = 280
    Top = 312
  end
  object TratadoT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "Tratado"')
    Left = 472
    Top = 312
  end
  object GestionCobranzaT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  "CtaCteItem".VENCE,'
      '  "Cliente".NOMBRE,'
      '  "CtaCteItem".CUOTA,'
      '  "CtaCteItem".PAGADO,'
      '  "CtaCteItem".IMPORTE,'
      '  "CtaCteItem".DESCRIPCION,'
      '  "CtaCte".CLIENTE,'
      '  "CtaCte".COBRANZA,'
      '  "CtaCte".OPERACION'
      'FROM'
      '  "CtaCte"'
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'
      
        '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".' +
        'OPERACION)'
      'WHERE'
      '  ("CtaCteItem".PAGADO < "CtaCteItem".IMPORTE) AND '
      '  (("CtaCte".COBRANZA IS NULL) OR '
      '  ("CtaCte".COBRANZA = 1))'
      'ORDER BY'
      '  "CtaCteItem".VENCE')
    Left = 616
    Top = 312
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 408
    Top = 312
  end
end
