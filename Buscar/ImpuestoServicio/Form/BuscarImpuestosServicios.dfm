object BuscarImpuestosServiciosForm: TBuscarImpuestosServiciosForm
  Left = 330
  Top = 225
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Buscar Impuestos y Servicios'
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
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 673
    Top = 59
    Width = 121
    Height = 409
    Align = alRight
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object DBText1: TDBText
      Left = 12
      Top = 30
      Width = 100
      Height = 17
      Alignment = taRightJustify
      DataField = 'Direccion1'
    end
    object DBText2: TDBText
      Left = 12
      Top = 48
      Width = 100
      Height = 17
      Alignment = taRightJustify
      DataField = 'Direccion2'
    end
    object DBText3: TDBText
      Left = 15
      Top = 88
      Width = 97
      Height = 17
      Alignment = taRightJustify
      DataField = 'Provincia'
    end
    object DBText4: TDBText
      Left = 15
      Top = 130
      Width = 97
      Height = 17
      Alignment = taRightJustify
      DataField = 'Departamento'
    end
    object DBText5: TDBText
      Left = 15
      Top = 175
      Width = 97
      Height = 17
      Alignment = taRightJustify
      DataField = 'Ciudad'
    end
    object Label4: TLabel
      Left = 12
      Top = 68
      Width = 58
      Height = 13
      Caption = 'Provincia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 111
      Width = 43
      Height = 13
      Caption = 'Depart:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 12
      Top = 156
      Width = 44
      Height = 13
      Caption = 'Ciudad:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 19
      Width = 59
      Height = 13
      Caption = 'Direcci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 318
      Width = 75
      Height = 13
      Caption = 'Seleccioanr?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 22
      Top = 261
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 22
      Top = 340
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 59
    Width = 673
    Height = 409
    Align = alClient
    DataSource = BuscarImpuestosServiciosDataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CodProve'
        Title.Caption = 'C'#243'digo'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoArea'
        Title.Caption = 'Codigo de Area'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Celular'
        Width = 69
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 59
    Align = alTop
    BevelOuter = bvLowered
    Color = clBlack
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 44
      Height = 13
      Caption = 'Buscar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 185
      Top = 20
      Width = 15
      Height = 13
      Caption = 'en'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 54
      Top = 20
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object CBFiltro: TComboBox
      Left = 208
      Top = 20
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Items.Strings = (
        'C'#243'digo'
        'Nombre'
        'Celular')
    end
  end
  object BuscarImpuestosServiciosDataSource: TDataSource
    DataSet = ImpuestosServiciosQuery
    Left = 576
    Top = 32
  end
  object ImpuestosServiciosQuery: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'Select * from ImpuestosServicios')
    Left = 536
    Top = 32
  end
end
