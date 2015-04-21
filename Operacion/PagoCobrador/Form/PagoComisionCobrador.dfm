object PagoComisionCobradorForm: TPagoComisionCobradorForm
  Left = 505
  Top = 191
  BorderStyle = bsSingle
  Caption = 'Pago de Comisi'#243'n a Cobrador'
  ClientHeight = 356
  ClientWidth = 472
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 68
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
  object Label4: TLabel
    Left = 137
    Top = 173
    Width = 51
    Height = 13
    Caption = 'Comisi'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 140
    Top = 141
    Width = 48
    Height = 13
    Caption = 'Rendido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 110
    Top = 209
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
  object Label6: TLabel
    Left = 229
    Top = 174
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label2: TLabel
    Left = 136
    Top = 106
    Width = 52
    Height = 13
    Caption = 'Cobrador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NombreLabel: TLabel
    Left = 0
    Top = 0
    Width = 472
    Height = 33
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
    ExplicitLeft = -207
    ExplicitWidth = 323
  end
  object Label7: TLabel
    Left = 147
    Top = 240
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
  object FechaDateTimePicker: TDateTimePicker
    Left = 192
    Top = 67
    Width = 97
    Height = 21
    Date = 40081.536016157410000000
    Time = 40081.536016157410000000
    TabOrder = 0
  end
  object Button2: TButton
    Left = 118
    Top = 279
    Width = 80
    Height = 50
    Caption = 'Pagar!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object CheckBox1: TCheckBox
    Left = 192
    Top = 240
    Width = 97
    Height = 17
    Caption = 'Imprime Recibo'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 270
    Top = 279
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
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ComisionEdit: TEdit
    Left = 192
    Top = 172
    Width = 33
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object RendidoEdit: TEdit
    Left = 192
    Top = 140
    Width = 89
    Height = 21
    TabOrder = 5
    Text = '0'
    OnExit = RendidoEditExit
  end
  object PagadoEdit: TEdit
    Left = 192
    Top = 207
    Width = 85
    Height = 21
    Color = clMenuBar
    TabOrder = 6
    Text = '0'
  end
  object Edit1: TEdit
    Left = 192
    Top = 105
    Width = 41
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object BitBtn1: TBitBtn
    Left = 230
    Top = 103
    Width = 49
    Height = 24
    Caption = 'F5...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 328
    Top = 136
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 328
    Top = 200
  end
end
