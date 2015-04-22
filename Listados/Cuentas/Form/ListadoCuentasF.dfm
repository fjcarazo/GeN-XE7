object ListadoCuentasForm: TListadoCuentasForm
  Left = 636
  Top = 160
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cuentas'
  ClientHeight = 341
  ClientWidth = 220
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
  PixelsPerInch = 96
  TextHeight = 13
  object LblNombre: TLabel
    Left = 0
    Top = 8
    Width = 217
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cuenta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 192
    Width = 44
    Height = 20
    Caption = 'Debe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 112
    Top = 192
    Width = 50
    Height = 20
    Caption = 'Haber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 240
    Width = 47
    Height = 20
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Debe: TLabel
    Left = 16
    Top = 216
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Haber: TLabel
    Left = 112
    Top = 216
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Saldo: TLabel
    Left = 16
    Top = 264
    Width = 6
    Height = 13
    Caption = '0'
  end
  object BitBtn1: TBitBtn
    Left = 1
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Consultar'
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 73
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Detalle'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object BitBtn2: TBitBtn
    Left = 145
    Top = 296
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Salir'
    TabOrder = 3
    OnClick = BitBtn2Click
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
      Date = 40179.873243958300000000
      Time = 40179.873243958300000000
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
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *, Debe - Haber As SubTotal, "01/01/2008" As Desde,"01/01' +
        '/2011" As Hasta,* FROM Caja')
    Left = 96
    Top = 120
  end
end
