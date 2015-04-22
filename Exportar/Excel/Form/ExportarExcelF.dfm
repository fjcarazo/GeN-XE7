object Menu1: TMenu1
  Left = 264
  Top = 90
  Caption = ' Crear una hoja de c'#225'lculo XLS'
  ClientHeight = 520
  ClientWidth = 362
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 297
    Height = 73
    AutoSize = False
    Caption = 
      'Crea una hoja de c'#225'lculo con el n'#186' de filas, columnas y el nombr' +
      'e de fichero que se indique.     Se guardar'#225' en la carpeta donde' +
      ' est'#225' este programa.'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 48
    Top = 103
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Filas: '
  end
  object Label3: TLabel
    Left = 48
    Top = 130
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Columnas: '
  end
  object Label4: TLabel
    Left = 48
    Top = 158
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fichero: '
  end
  object Edit1: TEdit
    Left = 144
    Top = 101
    Width = 121
    Height = 24
    TabOrder = 0
    Text = '18'
  end
  object Edit2: TEdit
    Left = 144
    Top = 128
    Width = 121
    Height = 24
    TabOrder = 1
    Text = '6'
  end
  object Edit3: TEdit
    Left = 144
    Top = 156
    Width = 121
    Height = 24
    TabOrder = 2
    Text = 'Ejemplo 01'
  end
  object Button2: TButton
    Left = 272
    Top = 480
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Salir'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 24
    Top = 189
    Width = 321
    Height = 153
    TabOrder = 4
    object Button1: TButton
      Left = 96
      Top = 120
      Width = 129
      Height = 25
      Caption = '&Crear ejemplo'
      TabOrder = 0
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 32
      Top = 8
      Width = 249
      Height = 105
      Caption = ' Tipo de contenido en la celda: '
      Color = clSilver
      ItemIndex = 0
      Items.Strings = (
        'n'#186' decimal'
        'n'#186' entero'
        'texto')
      ParentColor = False
      TabOrder = 1
    end
  end
  object Button3: TButton
    Left = 40
    Top = 424
    Width = 257
    Height = 25
    Caption = 'Cr&ear informe realista'
    TabOrder = 5
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 56
    Top = 360
    Width = 273
    Height = 17
    Caption = 'Leer la &hoja de c'#225'lculo creada'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 480
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 408
  end
  object T: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from "Articulo"')
    Left = 304
    Top = 120
  end
end
