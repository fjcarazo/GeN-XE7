object RendicionClienteLForm: TRendicionClienteLForm
  Left = 636
  Top = 160
  BorderStyle = bsSingle
  Caption = 'Historial de rendicones de Clientes'
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
      Left = 19
      Top = 19
      Width = 40
      Height = 13
      Align = alCustom
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ClienteLabel: TLabel
      Left = 159
      Top = 13
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
    object Label8: TLabel
      Left = 33
      Top = 48
      Width = 26
      Height = 13
      Caption = 'Plan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PlanLabel: TLabel
      Left = 159
      Top = 49
      Width = 13
      Height = 13
      Alignment = taCenter
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
    object ClienteEdit: TEdit
      Left = 65
      Top = 16
      Width = 40
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
    object PlanEdit: TEdit
      Left = 65
      Top = 45
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object BuscarPlanProcesadoBitBtn: TBitBtn
      Left = 104
      Top = 43
      Width = 49
      Height = 24
      Caption = 'F8...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BuscarPlanProcesadoBitBtnClick
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
      Top = 23
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
      Top = 319
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
        FieldName = 'CUOTA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUOTAS'
        Title.Caption = 'TOTAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RENDIDAS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGADO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APAGAR'
        Title.Caption = 'A PAGAR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERACION'
        Title.Caption = 'PLAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COBRADOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 179
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 409
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
      '  "CtaCteItem".CODIGO,'
      '  "CtaCteItem".CUOTA,'
      '  "CtaCteItem".VENCE,'
      '  "CtaCteItem".IMPORTE,'
      '  "CtaCteItem".PAGADO,'
      '  ("CtaCteItem".IMPORTE - "CtaCteItem".PAGADO) AS APAGAR,'
      '  "Cliente".NOMBRE AS CLIENTE,'
      '  "CtaCte".OPERACION,'
      '  "Cobrador".NOMBRE AS COBRADOR,'
      '  "CtaCte".CUOTAS,'
      '  "CtaCte".SALDO,'
      '  "CtaCte".RENDIDAS'
      'FROM'
      '  "CtaCte"'
      
        '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".' +
        'OPERACION)'
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'
      
        '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIG' +
        'O)'
      'ORDER BY'
      '  "CtaCteItem".CUOTA DESC')
    Left = 360
    Top = 320
  end
end
