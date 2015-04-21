object NotaCreditoPlanForm: TNotaCreditoPlanForm
  Left = 221
  Top = 161
  Caption = 'Nota de Credito para Planes de Cuotas'
  ClientHeight = 566
  ClientWidth = 799
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
    Height = 137
    Align = alTop
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 20
      Top = 17
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
      Left = 156
      Top = 21
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
      Left = 17
      Top = 49
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
      Left = 158
      Top = 53
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
    object Label3: TLabel
      Left = 17
      Top = 101
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
      Left = 566
      Top = 101
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
    object Label6: TLabel
      Left = 488
      Top = 34
      Width = 32
      Height = 13
      Caption = 'Label6'
    end
    object Label7: TLabel
      Left = 303
      Top = 40
      Width = 65
      Height = 13
      Caption = 'Al Principio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 303
      Top = 69
      Width = 43
      Height = 13
      Caption = 'Al Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 303
      Top = 97
      Width = 114
      Height = 13
      Caption = 'A Partir de la Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ImputarRadioGroup: TRadioGroup
      Left = 272
      Top = 17
      Width = 248
      Height = 105
      Caption = 'Imputar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        '1'
        '2'
        '3')
      ParentFont = False
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 64
      Top = 17
      Width = 41
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object ClienteBitBtn: TBitBtn
      Left = 102
      Top = 15
      Width = 49
      Height = 24
      Caption = 'F1...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ClienteBitBtnClick
    end
    object Edit2: TEdit
      Left = 64
      Top = 49
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '0'
    end
    object PlanBitBtn: TBitBtn
      Left = 102
      Top = 47
      Width = 49
      Height = 24
      Caption = 'F8...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = PlanBitBtnClick
    end
    object BitBtn4: TBitBtn
      Left = 696
      Top = 17
      Width = 80
      Height = 50
      Caption = 'Ver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object Edit3: TEdit
      Left = 64
      Top = 101
      Width = 81
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Button2: TButton
      Left = 144
      Top = 99
      Width = 49
      Height = 25
      Caption = 'Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Button2Click
    end
    object TotalAplicadoEdit: TEdit
      Left = 655
      Top = 101
      Width = 121
      Height = 21
      AutoSize = False
      BiDiMode = bdRightToLeft
      Color = clMenuBar
      ParentBiDiMode = False
      TabOrder = 7
      Text = '0'
    end
    object FechaDateTimePicker: TDateTimePicker
      Left = 423
      Top = 93
      Width = 89
      Height = 21
      Date = 40330.748546724540000000
      Time = 40330.748546724540000000
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 504
    Width = 799
    Height = 62
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 374
      Top = 25
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'Grabar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 685
      Top = 25
      Width = 51
      Height = 13
      Alignment = taCenter
      Caption = 'Imprimir?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 23
      Top = 6
      Width = 80
      Height = 50
      Caption = 'VerDetalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = BitBtn2Click
    end
    object ImprimirCheckBox: TCheckBox
      Left = 742
      Top = 24
      Width = 40
      Height = 17
      Caption = 'Si'
      Checked = True
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 1
    end
    object SiBitBtn: TBitBtn
      Left = 245
      Top = 6
      Width = 80
      Height = 50
      Caption = 'Si'
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
      ModalResult = 6
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = SiBitBtnClick
    end
    object BitBtn5: TBitBtn
      Left = 462
      Top = 6
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 137
    Width = 799
    Height = 367
    Align = alClient
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
      302
      64)
  end
  object QTemp: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 120
    Top = 296
  end
  object Q: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 200
    Top = 296
  end
end
