object VendedorActivaForm: TVendedorActivaForm
  Left = 244
  Top = 103
  Align = alCustom
  BorderIcons = []
  Caption = 'Activar Celular'
  ClientHeight = 328
  ClientWidth = 481
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 96
    Top = 64
    Width = 31
    Height = 13
    Caption = 'IMEI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 68
    Top = 160
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
  object Label4: TLabel
    Left = 97
    Top = 112
    Width = 30
    Height = 13
    Caption = 'NSE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 221
    Top = 249
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
  object IMEIDBLookupComboBox: TDBLookupComboBox
    Left = 136
    Top = 64
    Width = 233
    Height = 21
    DataField = 'IMEI'
    DataSource = DataSource
    KeyField = 'CodigoBarra'
    ListField = 'CodigoBarra'
    ListSource = ArticulosDataSource
    TabOrder = 0
  end
  object VendedorDBLookupComboBox: TDBLookupComboBox
    Left = 136
    Top = 160
    Width = 233
    Height = 21
    DataField = 'Vendedor'
    DataSource = DataSource
    KeyField = 'Codigo'
    ListField = 'Nombre'
    ListSource = VendedorDataSource
    TabOrder = 2
  end
  object NSEDBLookupComboBox: TDBLookupComboBox
    Left = 136
    Top = 112
    Width = 233
    Height = 21
    DataField = 'NSE'
    DataSource = DataSource
    KeyField = 'CodigoBarra'
    ListField = 'CodigoBarra'
    ListSource = ArticulosDataSource
    TabOrder = 1
  end
  object SiBitBtn: TBitBtn
    Left = 128
    Top = 232
    Width = 80
    Height = 50
    Caption = 'Si'
    DoubleBuffered = True
    Kind = bkYes
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = SiBitBtnClick
  end
  object NoBitBtn: TBitBtn
    Left = 278
    Top = 232
    Width = 80
    Height = 50
    Caption = 'No'
    DoubleBuffered = True
    Kind = bkNo
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = NoBitBtnClick
  end
  object ArticulosTabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from articulos')
    Left = 80
  end
  object VendedorTabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from vendedor')
    Left = 160
  end
  object ArticulosDataSource: TDataSource
    DataSet = ArticulosTabla
    Left = 112
  end
  object VendedorDataSource: TDataSource
    DataSet = VendedorTabla
    Left = 192
  end
  object Query: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ActivarCelular'
      '')
    Left = 240
  end
  object Tabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ActivarCelular')
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 32
  end
end
