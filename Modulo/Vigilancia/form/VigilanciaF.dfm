object VigilanciaForm: TVigilanciaForm
  Left = 54
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'DeGsoft'
  ClientHeight = 468
  ClientWidth = 794
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0777777777777777770000000000000077777777777777777770000000000007
    77FFFFFFFFFFF77887700000008000077088888888888F777770700008800007
    7088888888888F7007700708888000077088777777788F777770700888800007
    7088777777788F7007700708888000077088888888888F777770700008800007
    7700000000000770077000000080000777777777777777777770000000000007
    7777777777777770000000000000080000000000000000000000000000000888
    8888888888800000000000000000088000000000000000000000000000000800
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80003FFF000
    01FFE00000FCC0000018C0000000C0000000C0000000C0000000C0000000C000
    0018C00000FC000001FF00001FFF00007FFF0001FFFF1FFFFFFF3FFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 764
    Top = 0
    Width = 13
    Height = 24
    Cursor = crHandPoint
    Caption = '?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label9Click
  end
  object bIniciarCamara: TButton
    Left = 659
    Top = 3
    Width = 90
    Height = 25
    Hint = 'Inicia la c'#225'mara'
    Caption = '&Iniciar c'#225'mara'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = bIniciarCamaraClick
  end
  object bDetener: TButton
    Left = 658
    Top = 34
    Width = 91
    Height = 25
    Caption = '&Detener c'#225'mara'
    Enabled = False
    TabOrder = 1
    OnClick = bDetenerClick
  end
  object bCerrar: TButton
    Left = 755
    Top = 24
    Width = 40
    Height = 25
    Hint = 'Cierra esta aplicaci'#243'n'
    Cancel = True
    Caption = 'C&errar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = bCerrarClick
  end
  object pImagen: TPanel
    Left = 3
    Top = 0
    Width = 640
    Height = 480
    Color = clBlack
    TabOrder = 3
    object Label5: TLabel
      Left = 136
      Top = 176
      Width = 294
      Height = 132
      Alignment = taCenter
      Caption = 'Sensor de Movimiento con WebCam'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
  end
  object bGuardarImagen: TButton
    Left = 662
    Top = 411
    Width = 124
    Height = 25
    Hint = 'Guarda la imagen capturada en un fichero'
    Caption = '&Guardar imagen actual'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = bGuardarImagenClick
  end
  object bGuardarVideo: TButton
    Left = 681
    Top = 440
    Width = 77
    Height = 25
    Hint = 'Guarda el video capturado'
    Caption = 'G&uardar video'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = bGuardarVideoClick
  end
  object GroupBox1: TGroupBox
    Left = 643
    Top = 72
    Width = 152
    Height = 247
    Caption = 'Opciones '
    TabOrder = 6
    object Label3: TLabel
      Left = 12
      Top = 21
      Width = 129
      Height = 13
      Caption = 'Velocidad de Detecci'#243'n >>'
    end
    object Label2: TLabel
      Left = 15
      Top = 80
      Width = 123
      Height = 13
      Caption = 'Sensibilidad de cambio >>'
    end
    object Label4: TLabel
      Left = 2
      Top = 138
      Width = 149
      Height = 13
      Caption = 'Carpeta y nombre de im'#225'genes '
    end
    object tbVelocidad: TTrackBar
      Left = 16
      Top = 34
      Width = 121
      Height = 25
      Max = 10000
      Frequency = 100
      Position = 500
      TabOrder = 0
      OnChange = tbVelocidadChange
    end
    object tbSensibilidad: TTrackBar
      Left = 16
      Top = 99
      Width = 121
      Height = 33
      Max = 500
      Frequency = 10
      Position = 200
      TabOrder = 1
      OnChange = tbSensibilidadChange
    end
    object txtPScroll: TEdit
      Left = 199
      Top = 51
      Width = 18
      Height = 19
      Color = clInfoBk
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
      Text = '50'
    end
    object bSelFichero: TButton
      Left = 109
      Top = 157
      Width = 19
      Height = 21
      Hint = 
        'Seleccionar carpeta donde guardar las im'#225'genes de movimiento cap' +
        'turadas'
      Caption = '...'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bSelFicheroClick
    end
    object txtUbicacionImg: TEdit
      Left = 28
      Top = 157
      Width = 75
      Height = 21
      Hint = 'Carpeta y nombre im'#225'genes capturadas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'F:\DeGsoft\GeN\vig\1.bmp'
    end
    object bIniciarDeteccion: TButton
      Left = 3
      Top = 199
      Width = 146
      Height = 33
      Hint = 'Activa la captura de im'#225'genes si se detecta movimiento'
      Caption = 'Iniciar detecci'#243'n movimiento'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bIniciarDeteccionClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 647
    Top = 325
    Width = 143
    Height = 81
    TabOrder = 7
    object Label1: TLabel
      Left = 19
      Top = 14
      Width = 111
      Height = 13
      Caption = '% de movimiento actual'
    end
    object txtError: TEdit
      Left = 16
      Top = 33
      Width = 115
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object dlGuardar: TSaveDialog
    Left = 418
  end
  object temporizador: TTimer
    Enabled = False
    Interval = 0
    OnTimer = temporizadorTimer
    Left = 467
  end
end
