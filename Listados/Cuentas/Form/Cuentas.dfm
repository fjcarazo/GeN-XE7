object CuentasForm: TCuentasForm
  Left = 582
  Top = 252
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cuenta Caja'
  ClientHeight = 236
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblNombre: TLabel
    Left = 0
    Top = 8
    Width = 217
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cuenta Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 120
    Width = 185
    Height = 57
    Caption = ' Destino '
    ItemIndex = 1
    Items.Strings = (
      'Impresora'
      'Pantalla')
    TabOrder = 0
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 48
    Width = 185
    Height = 65
    Caption = ' Fechas '
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 17
      Height = 13
      Caption = 'Fin:'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Inicio:'
    end
    object DTP1: TDateTimePicker
      Left = 48
      Top = 12
      Width = 121
      Height = 21
      Date = 37668.873243958300000000
      Time = 37668.873243958300000000
      TabOrder = 0
      OnCloseUp = DTP1CloseUp
    end
    object DTP2: TDateTimePicker
      Left = 48
      Top = 36
      Width = 121
      Height = 21
      Date = 37668.873295891200000000
      Time = 37668.873295891200000000
      TabOrder = 1
      OnCloseUp = DTP2CloseUp
    end
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 192
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.AC1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *, Debe - Haber As SubTotal, "01/01/2008" As Desde,"01/01' +
        '/2011" As Hasta,* FROM CuentaCaja;')
    Left = 96
    Top = 120
  end
  object RvProject1: TRvProject
    Engine = RvSystem1
    Left = 128
    Top = 120
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 160
    Top = 120
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 128
    Top = 152
  end
  object RvRenderPrinter1: TRvRenderPrinter
    Active = True
    DisplayName = 'RPRender'
    Left = 160
    Top = 152
  end
end
