object FCategorias: TFCategorias
  Left = 450
  Top = 246
  Caption = 'Categor'#237'as'
  ClientHeight = 415
  ClientWidth = 359
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 415
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 36
      Top = 208
      Width = 57
      Height = 13
      Caption = 'Categor'#237'a'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 99
      Top = 208
      Width = 227
      Height = 21
      DataField = 'DESCRIPCION'
      DataSource = DS
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 36
      Top = 66
      Width = 290
      Height = 124
      DataSource = DS
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 36
      Top = 242
      Width = 290
      Height = 50
      DataSource = DS
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
    object BitBtn1: TBitBtn
      Left = 139
      Top = 305
      Width = 80
      Height = 50
      Caption = 'Cerrar'
      DoubleBuffered = True
      Kind = bkOK
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DS: TDataSource
    DataSet = Tabla
    Left = 67
    Top = 350
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    AfterCancel = TablaAfterCancel
    AfterDelete = TablaAfterDelete
    AfterPost = TablaAfterPost
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRIPCION'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'PK_Categoria'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'Categoria'
    Left = 35
    Top = 350
  end
end
