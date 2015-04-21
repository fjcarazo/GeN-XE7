object DevolucionesForm: TDevolucionesForm
  Left = 101
  Top = 82
  Align = alCustom
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'DEVOLUCIONES AL PROVEEDOR'
  ClientHeight = 453
  ClientWidth = 632
  Color = clBlack
  Font.Charset = ANSI_CHARSET
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
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 86
    Top = 80
    Width = 68
    Height = 13
    Caption = 'IMEI - NSE:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 371
    Top = 30
    Width = 40
    Height = 13
    Caption = 'Fecha:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 91
    Top = 128
    Width = 63
    Height = 13
    Caption = 'Proveedor:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 65
    Top = 176
    Width = 89
    Height = 13
    Caption = 'Observaciones:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 353
    Top = 80
    Width = 58
    Height = 13
    Caption = 'Unidades:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 110
    Top = 30
    Width = 44
    Height = 13
    Caption = 'Codigo:'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 310
    Top = 385
    Width = 46
    Height = 13
    Caption = 'Grabar?'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object FechaDBEdit: TDBEdit
    Left = 417
    Top = 30
    Width = 80
    Height = 21
    Color = clMenu
    DataField = 'Fecha'
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 5
  end
  object ProveedorDBLookupComboBox: TDBLookupComboBox
    Left = 160
    Top = 128
    Width = 337
    Height = 21
    DataField = 'Proveedor'
    DataSource = DataSource
    KeyField = 'CodProve'
    ListField = 'Nombre'
    ListSource = ProveedorDataSource
    TabOrder = 1
  end
  object ArticulosDBLookupComboBox: TDBLookupComboBox
    Left = 160
    Top = 80
    Width = 185
    Height = 21
    DataField = 'Articulo'
    DataSource = DataSource
    KeyField = 'CodParte'
    ListField = 'CodigoBarra'
    ListSource = ArticulosDataSource
    TabOrder = 0
  end
  object SiBitBtn: TBitBtn
    Left = 160
    Top = 368
    Width = 80
    Height = 50
    Caption = 'Si'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
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
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = SiBitBtnClick
  end
  object NoBitBtn: TBitBtn
    Left = 417
    Top = 368
    Width = 80
    Height = 50
    Caption = 'No'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkNo
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 4
    OnClick = NoBitBtnClick
  end
  object ObservDBMemo: TDBMemo
    Left = 160
    Top = 173
    Width = 337
    Height = 161
    DataField = 'Notas'
    DataSource = DataSource
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object CantidadDBEdit: TDBEdit
    Left = 417
    Top = 80
    Width = 80
    Height = 21
    Color = clMenu
    DataField = 'Cantidad'
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 6
  end
  object CodigoDBEdit: TDBEdit
    Left = 160
    Top = 30
    Width = 80
    Height = 21
    Color = clMenu
    DataField = 'Codigo'
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 7
  end
  object Tabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    AfterInsert = TablaAfterInsert
    Parameters = <>
    SQL.Strings = (
      'select * from devolucion')
    Left = 560
    Top = 8
  end
  object ArticulosTabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from articulos')
    Left = 560
    Top = 112
  end
  object ProveedorTabla: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from proveedores')
    Left = 560
    Top = 216
  end
  object ArticulosDataSource: TDataSource
    DataSet = ArticulosTabla
    Left = 560
    Top = 160
  end
  object ProveedorDataSource: TDataSource
    DataSet = ProveedorTabla
    Left = 560
    Top = 264
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 560
    Top = 56
  end
  object Query: TADOQuery
    Connection = DM.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from devolucion')
    Left = 560
    Top = 384
  end
end
