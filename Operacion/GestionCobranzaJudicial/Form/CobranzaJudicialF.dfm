object CobranzaJudicialForm: TCobranzaJudicialForm
  Left = 0
  Top = 0
  Caption = 'Cobranza Judicial'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 57
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 21
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CodigoDBText: TDBText
      Left = 61
      Top = 21
      Width = 28
      Height = 17
      DataField = 'CLIENTE'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object NombreDBText: TDBText
      Left = 95
      Top = 21
      Width = 72
      Height = 13
      AutoSize = True
      DataField = 'NOMBRE'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 639
      Top = 21
      Width = 69
      Height = 13
      Caption = 'Cuota Vencida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 759
      Top = 21
      Width = 19
      Height = 13
      Caption = 'd'#237'as'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DiasEdit: TEdit
      Left = 714
      Top = 18
      Width = 39
      Height = 21
      TabOrder = 0
      Text = '0'
      OnKeyUp = DiasEditKeyUp
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 398
    Width = 792
    Height = 68
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object ImprimirBitBtn: TBitBtn
      Left = 379
      Top = 19
      Width = 40
      Height = 28
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
      TabOrder = 0
      OnClick = ImprimirBitBtnClick
    end
    object JudicialBitBtn: TBitBtn
      Left = 512
      Top = 8
      Width = 160
      Height = 50
      Caption = '> Pasar a Incobrables'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = JudicialBitBtnClick
    end
    object ExtraJudicialBitBtn: TBitBtn
      Left = 112
      Top = 6
      Width = 160
      Height = 50
      Caption = 'Pasar a ExtraJudicial <'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ExtraJudicialBitBtnClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 792
    Height = 341
    Align = alClient
    DataSource = DataSource
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'VENCE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OPERACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Width = 63
        Visible = True
      end>
  end
  object DataSource: TDataSource
    DataSet = GrillaQ
    Left = 400
    Top = 223
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 192
    Top = 224
  end
  object GrillaQ: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  "CtaCteItem".VENCE,'
      '  "Cliente".NOMBRE,'
      '  "CtaCteItem".CUOTA,'
      '  "CtaCteItem".PAGADO,'
      '  "CtaCteItem".IMPORTE,'
      '  "CtaCteItem".DESCRIPCION,'
      '  "CtaCte".CLIENTE,'
      '  "CtaCte".OPERACION'
      'FROM'
      '  "CtaCte"'
      '  INNER JOIN "Cliente" ON ("CtaCte".CLIENTE = "Cliente".CODIGO)'
      
        '  INNER JOIN "CtaCteItem" ON ("CtaCte".OPERACION = "CtaCteItem".' +
        'OPERACION)')
    Left = 344
    Top = 224
  end
end
