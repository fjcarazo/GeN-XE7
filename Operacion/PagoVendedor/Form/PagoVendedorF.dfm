object PagoVendedorForm: TPagoVendedorForm
  Left = 215
  Top = 163
  Caption = 'Pago a Vendedor'
  ClientHeight = 412
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 89
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 30
      Top = 16
      Width = 36
      Height = 13
      Caption = 'Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 51
      Width = 55
      Height = 13
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NombreLabel: TLabel
      Left = 199
      Top = 49
      Width = 13
      Height = 16
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object FechaDateTimePicker: TDateTimePicker
      Left = 72
      Top = 20
      Width = 97
      Height = 21
      Date = 40081.536016157410000000
      Time = 40081.536016157410000000
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 72
      Top = 47
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object VerButton: TButton
      Left = 692
      Top = 14
      Width = 80
      Height = 50
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = VerButtonClick
    end
    object VendedorBitBtn: TBitBtn
      Left = 144
      Top = 47
      Width = 41
      Height = 21
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = VendedorBitBtnClick
    end
  end
  object Panel2: TPanel
    Left = 673
    Top = 89
    Width = 117
    Height = 323
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 17
      Top = 16
      Width = 78
      Height = 13
      Caption = 'Total a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 73
      Width = 41
      Height = 13
      Caption = 'Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PagarButton: TButton
      Left = 17
      Top = 165
      Width = 80
      Height = 50
      Caption = 'Pagar!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = PagarButtonClick
    end
    object TotalEdit: TEdit
      Left = 17
      Top = 35
      Width = 80
      Height = 21
      Color = clMenuBar
      TabOrder = 1
      Text = '0'
    end
    object CheckBox1: TCheckBox
      Left = 64
      Top = 72
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 17
      Top = 230
      Width = 80
      Height = 50
      Caption = '&Salir'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 673
    Height = 323
    Align = alClient
    DataSource = DS
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENTA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 133
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
        Width = 73
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
        Visible = True
      end>
  end
  object DS: TDataSource
    DataSet = Tabla
    Left = 128
    Top = 352
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * From "RendidoVendedor" Where PAGADO <> '#39'SI'#39)
    Left = 96
    Top = 352
    object TablaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"RendidoVendedor"."CODIGO"'
    end
    object TablaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"RendidoVendedor"."VENDEDOR"'
    end
    object TablaVENTA: TIntegerField
      FieldName = 'VENTA'
      Origin = '"RendidoVendedor"."VENTA"'
    end
    object TablaFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = '"RendidoVendedor"."FECHA"'
    end
    object TablaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = '"RendidoVendedor"."IMPORTE"'
      DisplayFormat = '#.##'
    end
    object TablaPAGADO: TIBStringField
      FieldName = 'PAGADO'
      Origin = '"RendidoVendedor"."PAGADO"'
      FixedChar = True
      Size = 3
    end
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 200
    Top = 352
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 264
    Top = 352
  end
end
