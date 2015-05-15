object LibroIVAComprasForm: TLibroIVAComprasForm
  Left = 636
  Top = 160
  Caption = 'Libro IVA Compras'
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
  object Panel2: TPanel
    Left = 640
    Top = 0
    Width = 152
    Height = 466
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 37
      Top = 386
      Width = 80
      Height = 50
      Caption = 'procesar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 37
      Top = 16
      Width = 80
      Height = 50
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 115
      Width = 124
      Height = 145
      Caption = ' Fechas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Label2: TLabel
        Left = 15
        Top = 77
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
        Left = 17
        Top = 24
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
        Left = 14
        Top = 43
        Width = 97
        Height = 21
        Date = 42005.873243958300000000
        Time = 42005.873243958300000000
        TabOrder = 0
        OnCloseUp = DTP1CloseUp
      end
      object DTP2: TDateTimePicker
        Left = 14
        Top = 96
        Width = 97
        Height = 21
        Date = 37668.873295891200000000
        Time = 37668.873295891200000000
        TabOrder = 1
        OnCloseUp = DTP2CloseUp
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 640
    Height = 466
    Align = alClient
    DataSource = DataSource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FECHA'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 113
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FACTURA'
        Title.Alignment = taCenter
        Title.Caption = 'Comprobante'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROVEEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'Proveedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 157
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CUIT'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NG1'
        Title.Alignment = taCenter
        Title.Caption = 'NG10,5%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NG2'
        Title.Alignment = taCenter
        Title.Caption = 'NG21%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IVA1'
        Title.Alignment = taCenter
        Title.Caption = 'IVA10,5%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 54
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IVA2'
        Title.Alignment = taCenter
        Title.Caption = 'IVA21%'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OEIIBB'
        Title.Alignment = taCenter
        Title.Caption = 'IIBB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDERPYPAC'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITF'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 320
    Top = 360
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 288
    Top = 360
    object TablaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object TablaDESDE: TIBStringField
      FieldName = 'DESDE'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object TablaHASTA: TIBStringField
      FieldName = 'HASTA'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object TablaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"LibroIVAcompra"."CODIGO"'
    end
    object TablaFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = '"LibroIVAcompra"."FECHA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TablaFACTURA: TIBStringField
      FieldName = 'FACTURA'
      Origin = '"LibroIVAcompra"."FACTURA"'
      Size = 50
    end
    object TablaPROVEEDOR: TIBStringField
      FieldName = 'PROVEEDOR'
      Origin = '"LibroIVAcompra"."PROVEEDOR"'
      Size = 50
    end
    object TablaCUIT: TIBStringField
      FieldName = 'CUIT'
      Origin = '"LibroIVAcompra"."CUIT"'
      Size = 50
    end
    object TablaCONDICION: TIBStringField
      FieldName = 'CONDICION'
      Origin = '"LibroIVAcompra"."CONDICION"'
      Size = 50
    end
    object TablaNG1: TFloatField
      FieldName = 'NG1'
      Origin = '"LibroIVAcompra"."NG1"'
    end
    object TablaNG2: TFloatField
      FieldName = 'NG2'
      Origin = '"LibroIVAcompra"."NG2"'
    end
    object TablaNG3: TFloatField
      FieldName = 'NG3'
      Origin = '"LibroIVAcompra"."NG3"'
    end
    object TablaIVA1: TFloatField
      FieldName = 'IVA1'
      Origin = '"LibroIVAcompra"."IVA1"'
    end
    object TablaIVA2: TFloatField
      FieldName = 'IVA2'
      Origin = '"LibroIVAcompra"."IVA2"'
    end
    object TablaIVA3: TFloatField
      FieldName = 'IVA3'
      Origin = '"LibroIVAcompra"."IVA3"'
    end
    object TablaOEIIBB: TFloatField
      FieldName = 'OEIIBB'
      Origin = '"LibroIVAcompra"."OEIIBB"'
    end
    object TablaIDERPYPAC: TFloatField
      FieldName = 'IDERPYPAC'
      Origin = '"LibroIVAcompra"."IDERPYPAC"'
    end
    object TablaITF: TFloatField
      FieldName = 'ITF'
      Origin = '"LibroIVAcompra"."ITF"'
    end
  end
end
