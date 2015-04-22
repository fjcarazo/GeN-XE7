object MenuCelularForm: TMenuCelularForm
  Left = 157
  Top = 200
  Align = alTop
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'GeN Modulo Celular para Agentes Oficiales '
  ClientHeight = 446
  ClientWidth = 792
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 694
    Height = 446
    Align = alClient
    Color = clWhite
    DataSource = QuerydbgDataSource
    FixedColor = clBlack
    GradientEndColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Vencimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'D'#237'as'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoBarra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'NSE - IMEI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodParte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'Codigo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vence'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ubicacion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 694
    Top = 0
    Width = 98
    Height = 446
    Align = alRight
    Caption = 'Panel1'
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object ABMBitBtn: TBitBtn
      Left = 10
      Top = 226
      Width = 80
      Height = 50
      Caption = 'Articulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF808080FF00FFFF00FFFF00FF40404040404040404040404040404040404040
        4040404040FFFFFFFFFFFF0000FFFFFFFF808080FF00FFFF00FFFF00FF404040
        FFFFFF404040404040404040404040FFFFFF404040FFFFFFFFFFFF0000FFFFFF
        FF808080FF00FFFF00FFFF00FF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF404040FFFFFF0000FFFFFFFFFFFFFF808080FF00FFFF00FFFF00FF404040
        FFFFFF404040404040404040404040FFFFFF4040400000FFFFFFFFFFFFFFFFFF
        FF808080FF00FFFF00FFFF00FF40404040404040404040404040404040404040
        4040404040808080FFFFFF808080FFFFFF808080FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF808080FFFFFF80808080
        8080808080808080808080808080FFFFFF808080FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF808080FFFFFF808080808080808080808080FFFFFF8080808080
        80808080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF808080FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF808080A0A0A0FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF808080808080808080808080808080808080808080808080FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 0
      OnClick = ABMBitBtnClick
    end
    object BitBtnSalir: TBitBtn
      Left = 10
      Top = 394
      Width = 80
      Height = 50
      Caption = '&Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnSalirClick
    end
    object ActualizarBitBtn: TBitBtn
      Left = 10
      Top = 2
      Width = 80
      Height = 50
      Caption = 'Actualiza'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FF5050500000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5050500000FF0000FF50505050
        5050505050505050505050505050505050505050FF00FFFF00FFFF00FFFF00FF
        5050500000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF0000FFFF00FFFF
        00FF000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0000FFFF00FFFF00FF000000902F00902F00902F000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000
        0000000000902F00902F00902F00000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000902F00902F00902F00000000902F00902F00902F000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000902F00902F0090
        2F00000000902F00902F00902F00000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000902F00902F00902F000000000000000000000000000000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000902F00902F0090
        2F00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000000000000000000000000000FF00FFFF00FF505050FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00FF00505050FF00FFFF00FFFF00FFFF00FFFF00FF
        50505050505050505050505050505050505050505050505050505000FF0000FF
        00505050FF00FFFF00FFFF00FFFF00FF00FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FF0000FF0000FF0000FF0000FF00505050FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00FF0000FF
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF00FF00FF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 2
      OnClick = ActualizarBitBtnClick
    end
    object ImprimirBitBtn: TBitBtn
      Left = 10
      Top = 338
      Width = 80
      Height = 50
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFFFFFFFF00FFFF00FF00000000000000000000000000000000
        0000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FF000000
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
        FF000000FF00FFFF00FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF00FF000000FF00FF000000FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00FFFF00FFFFFF00FFFF00FF0000
        00000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F
        7F7F7F7F7F7F7F7FFF00FFFF00FF000000FF00FF000000FF00FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000FF00FF000000FF00FF000000FF00FF000000
        000000000000000000000000000000000000000000000000000000FF00FF0000
        00FF00FF000000000000FF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FF00FF000000FF00FF000000FF00FFFF00FF
        FF00FF000000FFFFFF000000000000000000000000000000FFFFFF0000000000
        00000000000000FF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000FFFFFF000000000000000000000000000000FFFFFF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0000000000000000000000000000000000000000000000
        00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = ImprimirBitBtnClick
    end
    object ActivarBitBtn: TBitBtn
      Left = 10
      Top = 282
      Width = 80
      Height = 50
      Caption = 'Activar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkAll
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = ActivarBitBtnClick
    end
    object VenderBitBtn: TBitBtn
      Left = 10
      Top = 58
      Width = 80
      Height = 50
      Caption = 'Vender'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = VenderBitBtnClick
    end
    object ComprarBitBtn: TBitBtn
      Left = 10
      Top = 114
      Width = 80
      Height = 50
      Caption = 'Comprar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = ComprarBitBtnClick
    end
    object CajaBitBtn: TBitBtn
      Left = 10
      Top = 170
      Width = 80
      Height = 50
      Caption = 'Caja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = CajaBitBtnClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 432
    Top = 152
    object Operaciones1: TMenuItem
      Caption = 'Operaciones'
      object Vender1: TMenuItem
        Caption = 'Vender'
        OnClick = Vender1Click
      end
      object Comprar1: TMenuItem
        Caption = 'Comprar'
        OnClick = Comprar1Click
      end
      object Activar1: TMenuItem
        Caption = 'Activar'
        OnClick = Activar1Click
      end
      object Devoluciones1: TMenuItem
        Caption = 'Devoluciones'
        OnClick = Devoluciones1Click
      end
      object Movimientos1: TMenuItem
        Caption = 'Movimientos'
      end
    end
    object PAgos1: TMenuItem
      Caption = 'Pagos'
      object Proveedores2: TMenuItem
        Caption = 'Proveedores'
        OnClick = Proveedores2Click
      end
      object Impuestos1: TMenuItem
        Caption = 'Impuestos y Servicios'
        OnClick = Impuestos1Click
      end
      object Vendedores2: TMenuItem
        Caption = 'Vendedores'
        Visible = False
        OnClick = Vendedores2Click
      end
    end
    object ABM1: TMenuItem
      Caption = 'ABM'
      object Articulos1: TMenuItem
        Caption = 'Articulos'
        OnClick = Articulos1Click
      end
      object Proveedores1: TMenuItem
        Caption = 'Proveedores'
        OnClick = Proveedores1Click
      end
      object Clientes2: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes2Click
      end
      object Activaciones3: TMenuItem
        Caption = 'Activaciones'
        Visible = False
      end
      object Locales1: TMenuItem
        Caption = 'Sucursales'
        Visible = False
        OnClick = Locales1Click
      end
      object Rubro1: TMenuItem
        Caption = 'Rubro'
        OnClick = Rubro1Click
      end
      object Categorias2: TMenuItem
        Caption = 'Categor'#237'as'
        OnClick = Categorias2Click
      end
      object SubCategoras1: TMenuItem
        Caption = 'SubCategor'#237'as'
        OnClick = SubCategoras1Click
      end
      object Vendedores1: TMenuItem
        Caption = 'Vendedores'
        OnClick = Vendedores1Click
      end
    end
    object Listados1: TMenuItem
      Caption = 'Listados'
      object Caja1: TMenuItem
        Caption = 'Caja'
        OnClick = Caja1Click
      end
      object Precios1: TMenuItem
        Caption = 'Precios'
        OnClick = Precios1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object ActivacionesL1: TMenuItem
        Caption = 'Activaciones'
        OnClick = ActivacionesL1Click
      end
      object LibroDiarioL1: TMenuItem
        Caption = 'Libro Diario'
        OnClick = LibroDiarioL1Click
      end
    end
    object Configuracin1: TMenuItem
      Caption = 'Configuraci'#243'n'
      object Empresa1: TMenuItem
        Caption = 'Empresa'
        OnClick = Empresa1Click
      end
      object Sistema1: TMenuItem
        Caption = 'Sistema'
        OnClick = Sistema1Click
      end
      object BackUp1: TMenuItem
        Caption = 'BackUp'
        Hint = 'Copia de Seguridad'
        OnClick = BackUp1Click
      end
      object Restaurar1: TMenuItem
        Caption = 'Restaurar'
        Hint = 'Restaurar el sistema a la versi'#243'n original sin registros'
        OnClick = Restaurar1Click
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
    object N1: TMenuItem
      Caption = '?'
      OnClick = N1Click
    end
  end
  object Query: TADOQuery
    Parameters = <>
    Left = 360
    Top = 152
  end
  object QueryU: TADOQuery
    Parameters = <>
    Left = 296
    Top = 152
  end
  object Querydbg: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From Articulos '
      'Where (Vencimiento > 0) and  (Estado is null ) '
      'Order By Vencimiento')
    Left = 216
    Top = 152
  end
  object QuerydbgDataSource: TDataSource
    DataSet = Querydbg
    Left = 248
    Top = 152
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 496
    Top = 152
  end
end
