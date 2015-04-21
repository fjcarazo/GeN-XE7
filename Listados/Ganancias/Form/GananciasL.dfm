object GanaciaxVtaLForm: TGanaciaxVtaLForm
  Left = 636
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Ganancias x Ventas'
  ClientHeight = 466
  ClientWidth = 792
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 70
    Align = alTop
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 402
      Top = 0
      Width = 273
      Height = 29
      Caption = 'GANANCIA$ x VENTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Saldo: TLabel
      Left = 402
      Top = 32
      Width = 183
      Height = 27
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 9
      Width = 362
      Height = 48
      Caption = ' Fechas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 199
        Top = 18
        Width = 22
        Height = 13
        Caption = 'Fin:'
      end
      object Label1: TLabel
        Left = 14
        Top = 18
        Width = 36
        Height = 13
        Caption = 'Inicio:'
      end
      object DTP1: TDateTimePicker
        Left = 55
        Top = 18
        Width = 121
        Height = 21
        Date = 42005.873243958300000000
        Time = 42005.873243958300000000
        TabOrder = 0
        OnCloseUp = DTP1CloseUp
      end
      object DTP2: TDateTimePicker
        Left = 226
        Top = 18
        Width = 121
        Height = 21
        Date = 37668.873295891200000000
        Time = 37668.873295891200000000
        TabOrder = 1
        OnCloseUp = DTP2CloseUp
      end
    end
    object BitBtn3: TBitBtn
      Left = 701
      Top = 9
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
      OnClick = BitBtn3Click
    end
  end
  object Panel2: TPanel
    Left = 687
    Top = 70
    Width = 105
    Height = 396
    Align = alRight
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 14
      Top = 22
      Width = 44
      Height = 20
      Caption = 'Debe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 14
      Top = 94
      Width = 50
      Height = 20
      Caption = 'Haber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Debe: TLabel
      Left = 14
      Top = 48
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object Haber: TLabel
      Left = 14
      Top = 120
      Width = 6
      Height = 13
      Caption = '0'
      Visible = False
    end
    object SiBitBtn: TBitBtn
      Left = 14
      Top = 320
      Width = 80
      Height = 50
      Caption = 'procesar'
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 70
    Width = 687
    Height = 396
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
        FieldName = 'Asiento'
        Title.Caption = 'A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Leyenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jerarquia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cuenta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debe'
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
        FieldName = 'Haber'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 70
    Width = 687
    Height = 396
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Asiento'
        Title.Caption = 'A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Leyenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 167
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Caption = 'Cuenta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debe'
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
        FieldName = 'Haber'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 360
    Top = 256
  end
  object CuentaDataSource: TDataSource
    DataSet = CuentaTabla
    Left = 360
    Top = 312
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  "LibroDiario".CODIGO,'
      '  "LibroDiario".ASIENTO,'
      '  "LibroDiario".FECHA,'
      '  "LibroDiario".LEYENDA,'
      '  "LibroDiario".JERARQUIA,'
      '  "LibroDiario".CUENTA,'
      '  "LibroDiario".DEBE,'
      '  "LibroDiario".HABER,'
      '  ("LibroDiario".DEBE - "LibroDiario".HABER) AS "SubTotal,",'
      '  "LibroDiario".OCULTO,'
      '  "Cuenta".RUBRO,'
      '  "Cuenta".CAPITULO,'
      '  "Cuenta".TIPOGASTO,'
      '  "Cuenta".DESCRIPCION,'
      '  "Cuenta".SALDO,'
      '  "Cuenta".LEYENDADEUDORA,'
      '  "Cuenta".LEYENDAHACREEDORA'
      'FROM'
      '  "LibroDiario"'
      
        '  INNER JOIN "Cuenta" ON ("LibroDiario".CUENTA = "Cuenta".DESCRI' +
        'PCION)')
    Left = 320
    Top = 256
  end
  object CuentaTabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  "Cuenta".CODIGO,'
      '  "Cuenta".RUBRO,'
      '  "Cuenta".CAPITULO,'
      '  "Cuenta".TIPOGASTO,'
      '  "Cuenta".JERARQUIA,'
      '  "Cuenta".DESCRIPCION,'
      '  "Cuenta".SALDO,'
      '  "Cuenta".LEYENDADEUDORA,'
      '  "Cuenta".LEYENDAHACREEDORA'
      'FROM'
      '  "Cuenta"'
      'ORDER BY'
      '  "Cuenta".DESCRIPCION')
    Left = 320
    Top = 312
  end
end
