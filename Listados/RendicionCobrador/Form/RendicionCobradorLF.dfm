object RendicionCobradorLForm: TRendicionCobradorLForm
  Left = 636
  Top = 160
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Historial de rendicones de cobradores'
  ClientHeight = 468
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 74
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 14
      Top = 14
      Width = 52
      Height = 13
      Align = alCustom
      Caption = 'Cobrador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NombreLabel: TLabel
      Left = 14
      Top = 43
      Width = 147
      Height = 25
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object GroupBox1: TGroupBox
      Left = 308
      Top = 14
      Width = 394
      Height = 48
      BiDiMode = bdLeftToRight
      Caption = ' Fechas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 217
        Top = 16
        Width = 22
        Height = 13
        Caption = 'Fin:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 70
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Inicio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DTP1: TDateTimePicker
        Left = 107
        Top = 16
        Width = 93
        Height = 21
        Date = 40179.873243958300000000
        Time = 40179.873243958300000000
        TabOrder = 0
        OnCloseUp = DTP1CloseUp
      end
      object DTP2: TDateTimePicker
        Left = 240
        Top = 16
        Width = 91
        Height = 21
        Date = 37668.873295891200000000
        Time = 37668.873295891200000000
        TabOrder = 1
        OnCloseUp = DTP2CloseUp
      end
    end
    object CodigoEdit: TEdit
      Left = 72
      Top = 16
      Width = 33
      Height = 21
      Align = alCustom
      TabOrder = 1
      Text = '0'
    end
    object BuscarBitBtn: TBitBtn
      Left = 103
      Top = 14
      Width = 50
      Height = 25
      Align = alCustom
      Caption = 'F5...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BuscarBitBtnClick
    end
  end
  object Panel2: TPanel
    Left = 702
    Top = 74
    Width = 92
    Height = 394
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object ImprimirBitBtn: TBitBtn
      Left = 6
      Top = 18
      Width = 80
      Height = 50
      Caption = 'Imprimir'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 6
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = ImprimirBitBtnClick
    end
    object ConsultarBitBtn: TBitBtn
      Left = 6
      Top = 320
      Width = 80
      Height = 50
      Caption = 'procesar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = ConsultarBitBtnClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 74
    Width = 702
    Height = 394
    Align = alClient
    DataSource = DataSource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FECHA'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Width = 349
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENDIDO'
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGADO'
        Width = 114
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 393
    Top = 320
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  '#39'MiComercio'#39' As Empresa,'
      '  '#39'01/01/2010'#39' As Desde,'
      '  '#39'01/01/2012'#39' As Desde,'
      '  "RendidoCobrador".CODIGO,'
      '  "RendidoCobrador".VENTA,'
      '  "RendidoCobrador".CUOTA,'
      '  "RendidoCobrador".FECHA,'
      '  "RendidoCobrador".RENDIDO,'
      '  "RendidoCobrador".PAGADO,'
      '  "RendidoCobrador".PROCESADO,'
      '  "Cobrador".NOMBRE'
      'FROM'
      '  "RendidoCobrador"'
      
        '  INNER JOIN "Cobrador" ON ("RendidoCobrador".COBRADOR = "Cobrad' +
        'or".CODIGO)')
    Left = 344
    Top = 320
  end
end
