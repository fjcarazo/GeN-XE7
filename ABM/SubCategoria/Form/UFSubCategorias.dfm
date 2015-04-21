object FSubCategorias: TFSubCategorias
  Left = 450
  Top = 246
  Caption = 'Sub Categorias'
  ClientHeight = 299
  ClientWidth = 313
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
  object Label1: TLabel
    Left = 35
    Top = 151
    Width = 81
    Height = 13
    Caption = 'Sub Categoria'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 121
    Top = 151
    Width = 154
    Height = 21
    DataField = 'SubCategoria'
    DataSource = DSSubCategorias
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 36
    Top = 16
    Width = 240
    Height = 121
    DataSource = DSSubCategorias
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 36
    Top = 184
    Width = 240
    Height = 33
    DataSource = DSSubCategorias
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
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 112
    Top = 232
    Width = 80
    Height = 50
    Caption = 'Cerrar'
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object TSubCategorias: TADOTable
    CursorType = ctStatic
    TableName = 'SubCategorias'
    Left = 264
    Top = 232
    object TSubCategoriasSubCategoria: TWideStringField
      FieldName = 'SubCategoria'
    end
  end
  object DSSubCategorias: TDataSource
    DataSet = TSubCategorias
    Left = 232
    Top = 232
  end
end
