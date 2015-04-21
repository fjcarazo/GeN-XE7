object UsuariosForm: TUsuariosForm
  Left = 296
  Top = 248
  Caption = 'Altas, Bajas y Modificaciones de Usuarios'
  ClientHeight = 346
  ClientWidth = 423
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 46
    Width = 40
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = CodigoDBEdit
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 38
    Top = 88
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
    Left = 49
    Top = 168
    Width = 33
    Height = 13
    Caption = 'Clave'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 125
    Width = 34
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 31
    Top = 208
    Width = 51
    Height = 13
    Caption = 'Permisos'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 191
    Top = 269
    Width = 46
    Height = 13
    Caption = 'Grabar?'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CodigoDBEdit: TDBEdit
    Left = 90
    Top = 46
    Width = 39
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 90
    Top = 88
    Width = 284
    Height = 21
    DataField = 'Nombre'
    DataSource = DataSource
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 90
    Top = 165
    Width = 105
    Height = 21
    DataField = 'password'
    DataSource = DataSource
    PasswordChar = '*'
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 135
    Top = 44
    Width = 240
    Height = 25
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
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 90
    Top = 252
    Width = 80
    Height = 50
    Caption = 'Si'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkYes
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object DBEdit4: TDBEdit
    Left = 90
    Top = 125
    Width = 284
    Height = 21
    DataField = 'DESCRIPCION'
    DataSource = DataSource
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 90
    Top = 208
    Width = 284
    Height = 21
    DataField = 'PERMISO'
    DataSource = DataSource
    KeyField = 'CODIGO'
    ListField = 'DESCRIPCION'
    ListSource = PermisosDataSource
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 255
    Top = 252
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
    TabOrder = 7
    OnClick = BitBtn2Click
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 250
    Top = 160
  end
  object PermisosDataSource: TDataSource
    DataSet = PermisoT
    Left = 330
    Top = 160
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
        Name = 'password'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'PERMISO'
        DataType = ftInteger
      end
      item
        Name = 'EMPRESA'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_Usuario'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'Usuario'
    UniDirectional = False
    Left = 216
    Top = 158
  end
  object PermisoT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * from "Permiso"')
    Left = 297
    Top = 160
  end
end
