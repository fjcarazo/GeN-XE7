object RendicionClienteForm: TRendicionClienteForm
  Left = 221
  Top = 161
  Caption = 'Rendici'#243'n de Cliente'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 73
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 557
      Top = 17
      Width = 34
      Height = 13
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 23
      Top = 15
      Width = 40
      Height = 13
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ClienteLabel: TLabel
      Left = 180
      Top = 15
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
    object Label8: TLabel
      Left = 24
      Top = 46
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
    object Label9: TLabel
      Left = 182
      Top = 46
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
    object FechaDateTimePicker: TDateTimePicker
      Left = 597
      Top = 14
      Width = 89
      Height = 21
      Date = 40081.492309201400000000
      Time = 40081.492309201400000000
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 88
      Top = 11
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object BitBtn1: TBitBtn
      Left = 126
      Top = 9
      Width = 49
      Height = 24
      Caption = 'F1...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object Edit2: TEdit
      Left = 88
      Top = 42
      Width = 41
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object BitBtn3: TBitBtn
      Left = 127
      Top = 40
      Width = 49
      Height = 24
      Caption = 'F8...'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 698
      Top = 13
      Width = 80
      Height = 50
      Caption = 'Ver'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 358
    Width = 792
    Height = 108
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 17
      Top = 13
      Width = 43
      Height = 13
      Caption = 'Importe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 53
      Width = 83
      Height = 13
      Caption = 'Total Aplicado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 388
      Top = 53
      Width = 46
      Height = 13
      Caption = 'Grabar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 64
      Top = 13
      Width = 81
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object Button2: TButton
      Left = 144
      Top = 11
      Width = 49
      Height = 25
      Caption = 'Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object TotalAplicadoEdit: TEdit
      Left = 64
      Top = 72
      Width = 129
      Height = 21
      AutoSize = False
      BiDiMode = bdRightToLeft
      Color = clMenuBar
      ParentBiDiMode = False
      TabOrder = 2
      Text = '0'
    end
    object Button3: TButton
      Left = 302
      Top = 33
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 440
      Top = 33
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button4Click
    end
    object BitBtn2: TBitBtn
      Left = 698
      Top = 35
      Width = 80
      Height = 50
      Caption = 'VerDetalle'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 73
    Width = 792
    Height = 285
    Align = alClient
    BevelEdges = [beLeft, beTop, beBottom]
    ColCount = 8
    FixedCols = 0
    RowCount = 2
    TabOrder = 2
    OnClick = StringGrid1Click
    ColWidths = (
      40
      34
      106
      78
      47
      64
      422
      64)
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 296
    Top = 192
  end
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    Left = 200
    Top = 192
  end
end
