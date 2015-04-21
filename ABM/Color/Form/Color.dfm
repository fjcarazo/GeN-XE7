object ColorForm: TColorForm
  Left = 450
  Top = 246
  Caption = 'DeG - Color'
  ClientHeight = 276
  ClientWidth = 313
  Color = clBtnFace
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
    Left = 32
    Top = 144
    Width = 45
    Height = 13
    Caption = 'Categoria'
    FocusControl = DBEdit1
  end
  object Label15: TLabel
    Left = 34
    Top = 8
    Width = 201
    Height = 24
    Caption = 'Mantenimiento de Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 144
    Width = 145
    Height = 21
    DataField = 'Descripcion'
    DataSource = ColorDataSource
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 40
    Width = 145
    Height = 97
    DataSource = ColorDataSource
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 184
    Width = 240
    Height = 25
    DataSource = ColorDataSource
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
    Left = 120
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object ColorADOTable: TADOTable
    CursorType = ctStatic
    TableName = 'Color'
    Left = 32
    Top = 88
  end
  object ColorDataSource: TDataSource
    DataSet = ColorADOTable
    Left = 32
    Top = 56
  end
end
