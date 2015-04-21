object PlanForm: TPlanForm
  Left = 429
  Top = 300
  BorderStyle = bsSingle
  Caption = 'Plan de Cuotas'
  ClientHeight = 326
  ClientWidth = 456
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 22
    Top = 26
    Width = 44
    Height = 13
    Caption = 'Nombre'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 25
    Top = 53
    Width = 41
    Height = 13
    Caption = 'Detalle'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 26
    Top = 101
    Width = 40
    Height = 13
    Caption = 'Interes'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 123
    Top = 105
    Width = 8
    Height = 13
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 26
    Top = 133
    Width = 28
    Height = 13
    Caption = 'D'#237'as'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 38
    Top = 176
    Width = 33
    Height = 13
    Caption = 'habiles'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 126
    Top = 176
    Width = 48
    Height = 13
    Caption = 'no habiles'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 38
    Top = 152
    Width = 74
    Height = 13
    Caption = 'cobranza cada '
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 165
    Top = 151
    Width = 26
    Height = 13
    Caption = 'd'#237'a/s'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 29
    Top = 225
    Width = 30
    Height = 13
    Caption = 'Total'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit2: TDBEdit
    Left = 72
    Top = 27
    Width = 209
    Height = 21
    DataField = 'Nombre'
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 72
    Top = 53
    Width = 209
    Height = 41
    AutoSize = False
    DataField = 'DESCRIPCION'
    DataSource = DataSource
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 72
    Top = 101
    Width = 49
    Height = 21
    DataField = 'Interes'
    DataSource = DataSource
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 73
    Top = 173
    Width = 49
    Height = 21
    DataField = 'NumeroHabil'
    DataSource = DataSource
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 177
    Top = 173
    Width = 49
    Height = 21
    DataField = 'NumeroNoHabil'
    DataSource = DataSource
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 113
    Top = 149
    Width = 49
    Height = 21
    DataField = 'DiasCalculo'
    DataSource = DataSource
    TabOrder = 3
  end
  object DBEdit7: TDBEdit
    Left = 72
    Top = 221
    Width = 208
    Height = 21
    DataField = 'Total'
    DataSource = DataSource
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 310
    Top = 0
    Width = 146
    Height = 326
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 7
    object DBText1: TDBText
      Left = 42
      Top = 101
      Width = 57
      Height = 17
      DataField = 'Codigo'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 54
      Top = 82
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 47
      Top = 188
      Width = 46
      Height = 13
      Caption = 'Grabar?'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NoBitBtn: TBitBtn
      Left = 30
      Top = 207
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
      OnClick = NoBitBtnClick
    end
    object SiBitBtn: TBitBtn
      Left = 30
      Top = 126
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
      OnClick = SiBitBtnClick
    end
    object DBNavigator1: TDBNavigator
      Left = 13
      Top = 281
      Width = 120
      Height = 32
      DataSource = DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete]
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
      TabOrder = 2
    end
    object BuscarBitBtn: TBitBtn
      Left = 30
      Top = 11
      Width = 80
      Height = 50
      Hint = 'F5'
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BuscarBitBtnClick
    end
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 144
    Top = 269
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    AfterCancel = TablaAfterCancel
    AfterDelete = TablaAfterDelete
    AfterPost = TablaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'INTERES'
        DataType = ftInteger
      end
      item
        Name = 'NUMEROHABIL'
        DataType = ftInteger
      end
      item
        Name = 'NUMERONOHABIL'
        DataType = ftInteger
      end
      item
        Name = 'DIASCALCULO'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_Plan'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'Plan'
    UniDirectional = False
    Left = 88
    Top = 272
  end
end
