object FFormaPago: TFFormaPago
  Left = 413
  Top = 132
  Caption = 'Forma de Pago'
  ClientHeight = 466
  ClientWidth = 449
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 204
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 108
      Top = 8
      Width = 52
      Height = 13
      Caption = 'SubTotal'
    end
    object Label2: TLabel
      Left = 108
      Top = 24
      Width = 52
      Height = 13
      Caption = 'Impuesto'
    end
    object Label3: TLabel
      Left = 108
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Total'
    end
    object LbSubTotal: TLabel
      Left = 164
      Top = 8
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbSubTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbImpuesto: TLabel
      Left = 164
      Top = 24
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbImpuesto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbTotal: TLabel
      Left = 164
      Top = 40
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LbTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 43
      Top = 68
      Width = 48
      Height = 13
      Caption = 'Contado'
    end
    object Label5: TLabel
      Left = 47
      Top = 95
      Width = 44
      Height = 13
      Caption = 'Cheque'
    end
    object Label6: TLabel
      Left = 50
      Top = 120
      Width = 41
      Height = 13
      Caption = 'Tarjeta'
    end
    object Label7: TLabel
      Left = 66
      Top = 147
      Width = 25
      Height = 13
      Caption = 'Otro'
    end
    object Label10: TLabel
      Left = 244
      Top = 74
      Width = 15
      Height = 13
      Caption = 'N'#186
    end
    object Label11: TLabel
      Left = 301
      Top = 74
      Width = 41
      Height = 13
      Caption = 'Detalle'
    end
    object Label12: TLabel
      Left = 367
      Top = 74
      Width = 28
      Height = 13
      Caption = 'D'#237'as'
    end
    object Label15: TLabel
      Left = 1
      Top = 170
      Width = 90
      Height = 13
      Caption = 'Cheque de 3ros'
    end
    object Label13: TLabel
      Left = 233
      Top = 150
      Width = 167
      Height = 16
      Caption = 'F4: AGREGAR CHEQUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 233
      Top = 170
      Width = 157
      Height = 16
      Caption = 'F6: BORRAR CHEQUE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object chequenroEdit: TEdit
      Left = 221
      Top = 93
      Width = 56
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '0'
    end
    object tarnroEdit: TEdit
      Left = 221
      Top = 118
      Width = 56
      Height = 24
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object chequedetalleEdit: TEdit
      Left = 277
      Top = 93
      Width = 82
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object chequediaEdit: TEdit
      Left = 358
      Top = 93
      Width = 40
      Height = 24
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object FECheque: TEdit
      Left = 106
      Top = 95
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0'
      OnChange = FEChequeChange
    end
    object FETarjeta: TEdit
      Left = 106
      Top = 120
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '0'
      OnChange = FETarjetaChange
    end
    object FEOtro: TEdit
      Left = 106
      Top = 145
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = '0'
      OnChange = FEOtroChange
    end
    object FEContado: TEdit
      Left = 106
      Top = 68
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0'
      OnChange = FEContadoChange
    end
    object ChequeTerceroEdit: TEdit
      Left = 106
      Top = 170
      Width = 109
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '0'
      OnChange = FEContadoChange
    end
    object tarjetaDBLookupComboBox: TDBLookupComboBox
      Left = 278
      Top = 118
      Width = 120
      Height = 24
      Color = clOlive
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'CODIGO'
      ListField = 'DESCRIPCION'
      ListSource = DS
      ParentFont = False
      TabOrder = 9
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 379
    Width = 449
    Height = 87
    Align = alBottom
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label8: TLabel
      Left = 24
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Pagado'
    end
    object Label9: TLabel
      Left = 24
      Top = 48
      Width = 33
      Height = 13
      Caption = 'Saldo'
    end
    object LbPagado: TLabel
      Left = 80
      Top = 24
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbSaldo: TLabel
      Left = 80
      Top = 48
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 296
      Top = 39
      Width = 45
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Grabar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Aceptar: TBitBtn
      Left = 209
      Top = 20
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
      OnClick = AceptarClick
    end
    object Cancela: TBitBtn
      Left = 346
      Top = 20
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
      OnClick = CancelaClick
    end
  end
  object PagoStringGrid: TStringGrid
    Left = 0
    Top = 204
    Width = 449
    Height = 175
    Align = alClient
    ColCount = 7
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    ColWidths = (
      55
      193
      82
      47
      64
      64
      64)
  end
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 312
    Top = 296
  end
  object DS: TDataSource
    DataSet = tarjetaIBQuery
    Left = 288
    Top = 8
  end
  object tarjetaIBQuery: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from "Tarjeta"')
    Left = 360
    Top = 8
  end
end
