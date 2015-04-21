object CobradorForm: TCobradorForm
  Left = 182
  Top = 90
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Altas, Bajas y Modificaciones de Cobradores'
  ClientHeight = 468
  ClientWidth = 794
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 656
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informaci'#243'n General'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 229
        Top = 57
        Width = 44
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 218
        Top = 84
        Width = 55
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 225
        Top = 30
        Width = 48
        Height = 13
        Caption = 'Nro. Cta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object VendedorLabel: TLabel
        Left = 632
        Top = 64
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label4: TLabel
        Left = 233
        Top = 192
        Width = 40
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 229
        Top = 111
        Width = 44
        Height = 13
        Caption = 'Trabajo'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 222
        Top = 138
        Width = 51
        Height = 13
        Caption = 'Tel'#233'fono'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 252
        Top = 165
        Width = 21
        Height = 13
        Caption = 'Fax'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 219
        Top = 219
        Width = 54
        Height = 13
        Caption = 'Provincia'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 193
        Top = 246
        Width = 80
        Height = 13
        Caption = 'Departamento'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 222
        Top = 331
        Width = 51
        Height = 13
        Caption = 'Comisi'#243'n'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 217
        Top = 273
        Width = 56
        Height = 13
        Caption = 'Localidad'
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 361
        Top = 331
        Width = 8
        Height = 13
        Caption = '%'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 243
        Top = 300
        Width = 30
        Height = 13
        Caption = 'Zona'
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 279
        Top = 57
        Width = 226
        Height = 21
        DataField = 'Nombre'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 279
        Top = 84
        Width = 226
        Height = 21
        DataField = 'Direccion'
        DataSource = DataSource
        TabOrder = 1
      end
      object CodigoDBEdit: TDBEdit
        Left = 279
        Top = 30
        Width = 76
        Height = 21
        DataField = 'Codigo'
        DataSource = DataSource
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 279
        Top = 192
        Width = 76
        Height = 21
        DataField = 'Celular'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 279
        Top = 111
        Width = 226
        Height = 21
        DataField = 'DIRECCIONCOMERCIAL'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit10: TDBEdit
        Left = 279
        Top = 138
        Width = 76
        Height = 21
        DataField = 'Telefono'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 279
        Top = 165
        Width = 76
        Height = 21
        DataField = 'Fax'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 279
        Top = 219
        Width = 226
        Height = 21
        DataField = 'Provincia'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 279
        Top = 246
        Width = 226
        Height = 21
        DataField = 'Departamento'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBEdit24: TDBEdit
        Left = 279
        Top = 327
        Width = 76
        Height = 21
        DataField = 'Comision'
        DataSource = DataSource
        TabOrder = 10
        OnExit = DBEdit24Exit
      end
      object DBEdit27: TDBEdit
        Left = 279
        Top = 273
        Width = 226
        Height = 21
        DataField = 'Ciudad'
        DataSource = DataSource
        TabOrder = 8
      end
      object DBEdit28: TDBEdit
        Left = 279
        Top = 300
        Width = 76
        Height = 21
        DataField = 'Zona'
        DataSource = DataSource
        TabOrder = 9
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 872
      ExplicitHeight = 540
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 648
        Height = 440
        Align = alClient
        DataField = 'NOTAS'
        DataSource = DataSource
        TabOrder = 0
        ExplicitWidth = 872
        ExplicitHeight = 540
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Contabilidad'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 872
      ExplicitHeight = 540
      object Label15: TLabel
        Left = 129
        Top = 163
        Width = 162
        Height = 13
        Caption = 'Cuenta Contable Asociada a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 34
        Top = 85
        Width = 89
        Height = 13
        Caption = 'Ingresos Brutos'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 93
        Top = 47
        Width = 30
        Height = 13
        Caption = 'CUIT'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 24
        Top = 124
        Width = 99
        Height = 13
        Caption = 'Categor'#237'a de IVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object IVALabel: TLabel
        Left = 202
        Top = 124
        Width = 9
        Height = 13
        Caption = '...'
      end
      object Label54: TLabel
        Left = 76
        Top = 264
        Width = 47
        Height = 13
        Caption = 'Anticipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 79
        Top = 190
        Width = 44
        Height = 13
        Caption = 'Nombre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 97
        Top = 227
        Width = 26
        Height = 13
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit20: TDBEdit
        Left = 129
        Top = 85
        Width = 201
        Height = 21
        DataField = 'IIBB'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBEdit22: TDBEdit
        Left = 129
        Top = 47
        Width = 201
        Height = 21
        DataField = 'CUIT'
        DataSource = DataSource
        TabOrder = 0
      end
      object IVADBComboBox: TDBComboBox
        Left = 129
        Top = 121
        Width = 67
        Height = 21
        DataField = 'IVA'
        DataSource = DataSource
        Items.Strings = (
          'CF'
          'MT'
          'RI'
          'EX'
          'NR')
        TabOrder = 2
        OnChange = IVADBComboBoxChange
      end
      object CtaNombreDBLookupComboBox: TDBLookupComboBox
        Left = 129
        Top = 190
        Width = 351
        Height = 21
        DataField = 'CtaNombre'
        DataSource = DataSource
        KeyField = 'CODIGO'
        ListField = 'DESCRIPCION'
        ListSource = CuentaDataSource
        TabOrder = 3
      end
      object CtaAnticipoDBLookupComboBox: TDBLookupComboBox
        Left = 129
        Top = 264
        Width = 351
        Height = 21
        DataField = 'CtaAnticipo'
        DataSource = DataSource
        KeyField = 'CODIGO'
        ListField = 'DESCRIPCION'
        ListSource = CuentaDataSource
        TabOrder = 4
      end
      object CtaTipoDBLookupComboBox: TDBLookupComboBox
        Left = 129
        Top = 227
        Width = 351
        Height = 21
        DataField = 'CtaTipo'
        DataSource = DataSource
        KeyField = 'CODIGO'
        ListField = 'DESCRIPCION'
        ListSource = CuentaDataSource
        TabOrder = 5
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Datos Secundarios'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 872
      ExplicitHeight = 540
      object Label19: TLabel
        Left = 30
        Top = 50
        Width = 102
        Height = 13
        Caption = 'Nombre de Titular'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 101
        Top = 229
        Width = 31
        Height = 13
        Caption = 'Email'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 70
        Top = 256
        Width = 62
        Height = 13
        Caption = 'Messenger'
        FocusControl = DBEdit23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 109
        Top = 83
        Width = 23
        Height = 13
        Caption = 'DNI'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 97
        Top = 117
        Width = 35
        Height = 13
        Caption = 'Rubro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 107
        Top = 290
        Width = 25
        Height = 13
        Caption = 'Pais'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 53
        Top = 148
        Width = 79
        Height = 13
        Caption = 'Codigo Postal'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 44
        Top = 177
        Width = 88
        Height = 13
        Caption = 'Codigo de Area'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 75
        Top = 202
        Width = 57
        Height = 13
        Caption = 'Extenci'#243'n'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 92
        Top = 333
        Width = 40
        Height = 13
        Caption = 'Ciudad'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit16: TDBEdit
        Left = 138
        Top = 50
        Width = 209
        Height = 21
        DataField = 'Titular'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 138
        Top = 229
        Width = 209
        Height = 21
        DataField = 'Email'
        DataSource = DataSource
        TabOrder = 6
      end
      object DBEdit23: TDBEdit
        Left = 138
        Top = 256
        Width = 209
        Height = 21
        DataField = 'MSN'
        DataSource = DataSource
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 138
        Top = 83
        Width = 209
        Height = 21
        DataField = 'Documento'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBEdit21: TDBEdit
        Left = 138
        Top = 117
        Width = 209
        Height = 21
        DataField = 'Rubro'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 138
        Top = 290
        Width = 97
        Height = 21
        DataField = 'Pais'
        DataSource = DataSource
        TabOrder = 8
      end
      object DBEdit17: TDBEdit
        Left = 138
        Top = 148
        Width = 82
        Height = 21
        DataField = 'CP'
        DataSource = DataSource
        TabOrder = 3
      end
      object DBEdit11: TDBEdit
        Left = 138
        Top = 202
        Width = 82
        Height = 21
        DataField = 'Extencion'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBEdit18: TDBEdit
        Left = 138
        Top = 175
        Width = 82
        Height = 21
        DataField = 'CodigoArea'
        DataSource = DataSource
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 138
        Top = 330
        Width = 97
        Height = 21
        DataField = 'Ciudad'
        DataSource = DataSource
        TabOrder = 9
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Parametros'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 872
      ExplicitHeight = 540
      object Label13: TLabel
        Left = -2
        Top = 29
        Width = 124
        Height = 13
        Alignment = taRightJustify
        Caption = 'T'#233'rminos del contrato'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 38
        Top = 77
        Width = 80
        Height = 13
        Alignment = taRightJustify
        Caption = 'L'#237'mite Cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 81
        Top = 129
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 48
        Top = 101
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dias Cr'#233'dito'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 45
        Top = 181
        Width = 73
        Height = 13
        Caption = 'Promociones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 49
        Top = 213
        Width = 69
        Height = 13
        Caption = 'Almanaques'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 181
        Top = 129
        Width = 34
        Height = 13
        Caption = '0=Lista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit14: TDBEdit
        Left = 129
        Top = 29
        Width = 145
        Height = 21
        DataField = 'Terminos'
        DataSource = DataSource
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 129
        Top = 77
        Width = 145
        Height = 21
        DataField = 'LimiteCredito'
        DataSource = DataSource
        TabOrder = 1
      end
      object DBComboBox1: TDBComboBox
        Left = 129
        Top = 125
        Width = 49
        Height = 21
        DataField = 'PRECIO'
        DataSource = DataSource
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '0')
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 129
        Top = 101
        Width = 145
        Height = 21
        DataField = 'DiasCredito'
        DataSource = DataSource
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 129
        Top = 155
        Width = 145
        Height = 17
        Caption = 'Cr'#233'dito Suspendido'
        DataField = 'Suspendido'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit25: TDBEdit
        Left = 129
        Top = 181
        Width = 121
        Height = 21
        DataField = 'Promociones'
        DataSource = DataSource
        TabOrder = 5
      end
      object DBEdit26: TDBEdit
        Left = 129
        Top = 208
        Width = 121
        Height = 21
        DataField = 'Almanaques'
        DataSource = DataSource
        TabOrder = 6
      end
      object VendedorBitBtn: TBitBtn
        Left = 169
        Top = 51
        Width = 49
        Height = 24
        Caption = 'F3...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object Panel5: TPanel
    Left = 656
    Top = 0
    Width = 138
    Height = 468
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label34: TLabel
      Left = 45
      Top = 169
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
    object AceptarBitBtn: TBitBtn
      Left = 28
      Top = 106
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
      TabOrder = 0
      OnClick = AceptarBitBtnClick
    end
    object BitBtn2: TBitBtn
      Left = 28
      Top = 195
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
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn4: TBitBtn
      Left = 28
      Top = 18
      Width = 80
      Height = 50
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object DBNavigator1: TDBNavigator
      Left = 9
      Top = 379
      Width = 120
      Height = 32
      DataSource = DataSource
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete]
      Hints.Strings = (
        'Primer registro'
        'Registro anterior'
        'Registro siguiente'
        #218'ltimo registro'
        'Insertar registro'
        'Eliminar registro'
        'Editar registro'
        'Guardar cambios'
        'Cancelar edici'#243'n'
        'Refrescar datos')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 28
      Top = 299
      Width = 80
      Height = 50
      Caption = 'Buscar F5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
    end
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 38
    Top = 84
  end
  object DSUsuarios: TDataSource
    DataSet = UsuarioT
    Left = 110
    Top = 84
  end
  object CuentaDataSource: TDataSource
    DataSet = CuentaT
    Left = 174
    Top = 84
  end
  object Tabla: TIBTable
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    AfterCancel = TablaAfterCancel
    AfterDelete = TablaAfterDelete
    AfterInsert = TablaAfterInsert
    AfterPost = TablaAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'TITULAR'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DIRECCION'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'DIRECCIONCOMERCIAL'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PAIS'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'PROVINCIA'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'DEPARTAMENTO'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'CIUDAD'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'CP'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CODIGOAREA'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CELULAR'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'TELEFONO'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EXTENCION'
        DataType = ftWideString
        Size = 6
      end
      item
        Name = 'FAX'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'EMAIL'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'TERMINOS'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'PRECIO'
        DataType = ftInteger
      end
      item
        Name = 'SUSPENDIDO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'EXCENTO'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'FECHAINGRESO'
        DataType = ftDateTime
      end
      item
        Name = 'LIMITECREDITO'
        DataType = ftFloat
      end
      item
        Name = 'NOTAS'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'DIASCREDITO'
        DataType = ftInteger
      end
      item
        Name = 'DOCUMENTO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'CUIT'
        DataType = ftWideString
        Size = 30
      end
      item
        Name = 'IIBB'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RUBRO'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'IVA'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'MSN'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'ALMANAQUES'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'PROMOCIONES'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'GARANTE'
        DataType = ftInteger
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
      end
      item
        Name = 'CTA'
        DataType = ftInteger
      end
      item
        Name = 'CTANOMBRE'
        DataType = ftInteger
      end
      item
        Name = 'CTATIPO'
        DataType = ftInteger
      end
      item
        Name = 'CTAANTICIPO'
        DataType = ftInteger
      end
      item
        Name = 'PAGARE'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'COMISION'
        DataType = ftFloat
      end
      item
        Name = 'PUNTOS'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_Cobrador'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'Cobrador'
    UniDirectional = False
    Left = 8
    Top = 86
  end
  object UsuarioT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from "Usuario"')
    Left = 72
    Top = 86
  end
  object CuentaT: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from "Cuenta"'
      'order by DESCRIPCION')
    Left = 144
    Top = 86
  end
  object EmpresaQuery: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from "Empresa"')
    Left = 216
    Top = 86
  end
  object Query: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 256
    Top = 86
  end
end
