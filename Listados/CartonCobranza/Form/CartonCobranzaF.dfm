object CartonCobranzaForm: TCartonCobranzaForm
  Left = 636
  Top = 160
  BorderStyle = bsSingle
  Caption = 'Carton de Cobranza'
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
  object Panel2: TPanel
    Left = 616
    Top = 0
    Width = 178
    Height = 468
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 92
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
      Left = 54
      Top = 111
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
      Left = 22
      Top = 161
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
      Left = 52
      Top = 185
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
    object ImprimirBitBtn: TBitBtn
      Left = 51
      Top = 16
      Width = 80
      Height = 50
      Hint = 'IMPRIMIR'
      Caption = 'IMPRIMIR'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 6
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ImprimirBitBtnClick
    end
    object ConsultarBitBtn: TBitBtn
      Left = 51
      Top = 392
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
    object ClienteEdit: TEdit
      Left = 54
      Top = 89
      Width = 40
      Height = 21
      Align = alCustom
      TabOrder = 2
      Text = '0'
    end
    object BuscarBitBtn: TBitBtn
      Left = 92
      Top = 87
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
      TabOrder = 3
      OnClick = BuscarBitBtnClick
    end
    object PlanEdit: TEdit
      Left = 54
      Top = 158
      Width = 41
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object PlanBitBtn: TBitBtn
      Left = 93
      Top = 156
      Width = 49
      Height = 24
      Caption = 'F8...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = PlanBitBtnClick
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 210
      Width = 157
      Height = 83
      BiDiMode = bdLeftToRight
      Caption = ' Fechas '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      object Label2: TLabel
        Left = 28
        Top = 51
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
        Left = 14
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
        Left = 51
        Top = 24
        Width = 93
        Height = 21
        Date = 40179.873243958300000000
        Time = 40179.873243958300000000
        TabOrder = 0
        OnCloseUp = DTP1CloseUp
      end
      object DTP2: TDateTimePicker
        Left = 51
        Top = 51
        Width = 93
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
    Width = 616
    Height = 468
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
        Expanded = False
        FieldName = 'CUOTA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
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
        Width = 100
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 417
    Top = 112
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      
        '  (1000000000000 + ("CtaCte".OPERACION * 10000000) + ("Cliente".' +
        'CODIGO * 10000) + ("CtaCteItem".CUOTA)) AS CB,'
      '  "CtaCte".OPERACION,'
      '  "Cliente".NOMBRE AS CLIENTE,'
      '  "Cobrador".NOMBRE AS COBRADOR,'
      '  "CtaCteItem".CUOTA,'
      '  "CtaCteItem".DESCRIPCION,'
      '  "CtaCteItem".IMPORTE,'
      '  "CtaCteItem".VENCE,'
      '  "Cliente".CODIGO AS CODCLIENTE,'
      '  "Cobrador".CODIGO AS CODCOBRADOR'
      'FROM'
      '  "CtaCte"'
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'
      
        '  INNER JOIN "Cobrador" ON ("CtaCte".COBRADOR = "Cobrador".CODIG' +
        'O)'
      
        '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".' +
        'OPERACION)'
      'WHERE'
      '  ("CtaCteItem".CUOTA IS NOT NULL)'
      'ORDER BY'
      '  "CtaCteItem".OPERACION,'
      '  "CtaCteItem".CLIENTE,'
      '  "CtaCteItem".CUOTA')
    Left = 384
    Top = 112
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 520
    Top = 120
  end
end
