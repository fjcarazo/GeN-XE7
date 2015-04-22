object CuotaForm: TCuotaForm
  Left = 558
  Top = 247
  Caption = 'GeN - Calculo de Cuotas'
  ClientHeight = 391
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 14
    Top = 16
    Width = 219
    Height = 65
    BevelOuter = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 43
      Height = 13
      Caption = 'SubTotal'
    end
    object Label2: TLabel
      Left = 24
      Top = 24
      Width = 32
      Height = 13
      Caption = 'Interes'
    end
    object Label3: TLabel
      Left = 24
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object LbSubTotal: TLabel
      Left = 80
      Top = 8
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbImpuesto: TLabel
      Left = 80
      Top = 24
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbTotal: TLabel
      Left = 80
      Top = 40
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 14
    Top = 88
    Width = 219
    Height = 193
    BevelOuter = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 24
      Top = 39
      Width = 37
      Height = 13
      Caption = 'Entrega'
    end
    object Label5: TLabel
      Left = 26
      Top = 119
      Width = 35
      Height = 13
      Caption = 'Importe'
    end
    object Label6: TLabel
      Left = 19
      Top = 143
      Width = 42
      Height = 13
      Caption = 'Cantidad'
    end
    object Label7: TLabel
      Left = 29
      Top = 95
      Width = 32
      Height = 13
      Caption = 'Interes'
    end
    object Label10: TLabel
      Left = 99
      Top = 72
      Width = 40
      Height = 13
      Caption = 'Cuotas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label12: TLabel
      Left = 117
      Top = 99
      Width = 8
      Height = 13
      Caption = '%'
    end
    object CantidadEdit: TEdit
      Left = 72
      Top = 143
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '1'
      OnExit = CantidadEditExit
    end
    object ImporteEdit: TEdit
      Left = 72
      Top = 119
      Width = 105
      Height = 21
      TabOrder = 1
      Text = '0'
      OnExit = ImporteEditExit
    end
    object InteresEdit: TEdit
      Left = 72
      Top = 95
      Width = 41
      Height = 21
      TabOrder = 0
      Text = '0'
      OnExit = InteresEditExit
    end
    object TotalEdit: TEdit
      Left = 72
      Top = 15
      Width = 105
      Height = 21
      TabOrder = 3
      Text = '0'
      OnExit = TotalEditExit
    end
    object EntregaFloatEdit: TEdit
      Left = 72
      Top = 35
      Width = 105
      Height = 21
      TabOrder = 4
      Text = '0'
    end
  end
  object Panel3: TPanel
    Left = 14
    Top = 288
    Width = 219
    Height = 49
    BevelOuter = bvLowered
    TabOrder = 3
    object Label8: TLabel
      Left = 24
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Pagado'
    end
    object Label9: TLabel
      Left = 24
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Saldo'
    end
    object LbPagado: TLabel
      Left = 72
      Top = 8
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbSaldo: TLabel
      Left = 72
      Top = 32
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Aceptar: TBitBtn
    Left = 64
    Top = 351
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = AceptarClick
  end
  object Cancelar: TBitBtn
    Left = 160
    Top = 351
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = CancelarClick
  end
  object Query: TADOQuery
    Parameters = <>
    Left = 14
    Top = 348
  end
end
