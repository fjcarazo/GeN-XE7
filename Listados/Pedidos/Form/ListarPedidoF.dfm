object ListarPedidoForm: TListarPedidoForm
  Left = 284
  Top = 175
  Caption = 'Listar Pedido'
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 57
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label16: TLabel
      Left = 40
      Top = 18
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
    object Label1: TLabel
      Left = 269
      Top = 18
      Width = 41
      Height = 13
      Caption = 'Desde:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 448
      Top = 18
      Width = 38
      Height = 13
      Caption = 'Hasta:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 314
      Top = 18
      Width = 98
      Height = 21
      Date = 40179.806226666670000000
      Time = 40179.806226666670000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 490
      Top = 18
      Width = 98
      Height = 21
      Date = 40220.806226666670000000
      Time = 40220.806226666670000000
      TabOrder = 1
    end
    object BitBtn8: TBitBtn
      Left = 152
      Top = 16
      Width = 49
      Height = 24
      Caption = 'F3...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn8Click
    end
    object Edit3: TEdit
      Left = 104
      Top = 18
      Width = 49
      Height = 21
      TabOrder = 3
      Text = '0'
    end
  end
  object Panel2: TPanel
    Left = 688
    Top = 57
    Width = 104
    Height = 409
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 14
      Top = 16
      Width = 80
      Height = 50
      Caption = 'Mostrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 14
      Top = 181
      Width = 80
      Height = 50
      Caption = 'Completar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkIgnore
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 14
      Top = 344
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
      TabOrder = 2
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 688
    Height = 409
    Align = alClient
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
    ColWidths = (
      54
      59
      651)
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '  ("LibroDiario".DEBE - "LibroDiario".HABER) AS "SubTotal",'
      '  '#39'+dm.ConfigQuery.FieldByName(Nombre).AsString+'#39' AS "Empresa",'
      '  '#39'+DateToStr(DTP1.Date)+'#39' AS "Desde",'
      '  '#39'+DateToStr(DTP2.Date)+'#39' AS "Hasta",'
      '  "LibroDiario".CODIGO,'
      '  "LibroDiario".ASIENTO,'
      '  "LibroDiario".FECHA,'
      '  "LibroDiario".LEYENDA,'
      '  "LibroDiario".JERARQUIA,'
      '  "LibroDiario".CUENTA,'
      '  "LibroDiario".DEBE,'
      '  "LibroDiario".HABER,'
      '  "LibroDiario".OCULTO'
      'FROM'
      '  "LibroDiario"')
    Left = 304
    Top = 320
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '  "Cuenta"'
      'ORDER BY'
      '  "Cuenta".DESCRIPCION')
    Left = 304
    Top = 376
  end
end
