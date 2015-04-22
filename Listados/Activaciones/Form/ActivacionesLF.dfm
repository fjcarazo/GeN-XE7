object ActivacionesLForm: TActivacionesLForm
  Left = 636
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Listado de Activaciones por Fecha'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 65
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 154
      Top = 8
      Width = 362
      Height = 48
      Caption = ' Fechas '
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 192
        Top = 19
        Width = 22
        Height = 13
        Caption = 'Fin:'
      end
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 36
        Height = 13
        Caption = 'Inicio:'
      end
      object DTP1: TDateTimePicker
        Left = 65
        Top = 19
        Width = 121
        Height = 21
        Date = 40179.873243958300000000
        Time = 40179.873243958300000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnCloseUp = DTP1CloseUp
      end
      object DTP2: TDateTimePicker
        Left = 226
        Top = 19
        Width = 121
        Height = 21
        Date = 37668.873295891200000000
        Time = 37668.873295891200000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnCloseUp = DTP2CloseUp
      end
    end
    object ImprimirBitBtn: TBitBtn
      Left = 695
      Top = 7
      Width = 80
      Height = 50
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkAll
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = ImprimirBitBtnClick
    end
  end
  object Panel2: TPanel
    Left = 678
    Top = 65
    Width = 114
    Height = 401
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 27
      Top = 202
      Width = 61
      Height = 13
      Caption = 'Consultar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SiBitBtn: TBitBtn
      Left = 17
      Top = 145
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = SiBitBtnClick
    end
    object NoBitBtn: TBitBtn
      Left = 17
      Top = 221
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = NoBitBtnClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 678
    Height = 401
    Align = alClient
    Color = clWhite
    DataSource = DataSource
    FixedColor = clWhite
    GradientEndColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IMEI'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NSE'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Color = clBlack
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
        FieldName = 'CLIENTE'
        Title.Color = clBlack
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
        FieldName = 'VENDEDOR'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPROBANTE'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHIP'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end>
  end
  object Tabla: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ActivarCelular.IMEI, ActivarCelular.NSE, Vendedor.Nombre ' +
        'AS VENDEDOR, Articulos_1.Descripcion AS CHIP, Articulos.Descripc' +
        'ion AS CELULAR, Clientes.NombreCliente AS CLIENTE, Factura.CodFa' +
        'ctura AS COMPROBANTE, ActivarCelular.Fecha,'
      '"DeGsoft" As Empresa,"01/01/2010" As Desde,"01/01/2011" As Hasta'
      
        'FROM ((ActivarCelular INNER JOIN (((Factura INNER JOIN Clientes ' +
        'ON Factura.CodCliente = Clientes.CodCliente) INNER JOIN FacturaI' +
        'tem ON Factura.CodFactura = FacturaItem.CodFactura) INNER JOIN A' +
        'rticulos ON FacturaItem.CodParte = Articulos.CodParte) ON Activa' +
        'rCelular.IMEI = Articulos.CodigoBarra) INNER JOIN Articulos AS A' +
        'rticulos_1 ON ActivarCelular.NSE = Articulos_1.CodigoBarra) INNE' +
        'R JOIN Vendedor ON ActivarCelular.Vendedor = Vendedor.Codigo;')
    Left = 352
    Top = 320
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 392
    Top = 320
  end
  object EmpresaTabla: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Empresa')
    Left = 352
    Top = 256
  end
end
