object Form1: TForm1
  Left = 299
  Top = 131
  Caption = ' Crear una hoja de c'#225'lculo XLS'
  ClientHeight = 446
  ClientWidth = 354
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 297
    Height = 73
    AutoSize = False
    Caption = 
      'Crea una hoja de c'#225'lculo con un n'#186' de filas y columnas determina' +
      'do y con el nombre que se incluya  (se guardar'#225' en la carpeta do' +
      'nde est'#225' este programa).'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 32
    Top = 138
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Filas: '
  end
  object Label3: TLabel
    Left = 32
    Top = 165
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Columnas: '
  end
  object Label4: TLabel
    Left = 32
    Top = 193
    Width = 95
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fichero: '
  end
  object Button1: TButton
    Left = 144
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Crear'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 128
    Top = 136
    Width = 121
    Height = 24
    TabOrder = 1
    Text = '18'
  end
  object Edit2: TEdit
    Left = 128
    Top = 163
    Width = 121
    Height = 24
    TabOrder = 2
    Text = '6'
  end
  object Edit3: TEdit
    Left = 128
    Top = 191
    Width = 121
    Height = 24
    TabOrder = 3
    Text = 'Ejemplo 01'
  end
  object Button2: TButton
    Left = 272
    Top = 408
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Salir'
    TabOrder = 4
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 56
    Top = 240
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
    TabOrder = 5
  end
end
