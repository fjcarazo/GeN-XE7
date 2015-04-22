object BuscaArticuloCelularForm: TBuscaArticuloCelularForm
  Left = 190
  Top = 123
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Buscar Art'#237'culos'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 792
    Height = 321
    Align = alClient
    Color = clWhite
    DataSource = DSArticulos
    FixedColor = clWhite
    GradientEndColor = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CodParte'
        Title.Caption = 'Codigo'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marca'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Articulos.Rubro'
        Title.Caption = 'Rubro'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PrecioCtaCte'
        Title.Caption = 'Precio'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IVA'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 73
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 137
      Top = 6
      Width = 97
      Height = 24
      Caption = 'NSE - IMEI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 105
      Height = 24
      Caption = 'Descripci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 520
      Top = 6
      Width = 57
      Height = 24
      Caption = 'Rubro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 392
      Top = 6
      Width = 85
      Height = 24
      Caption = 'Categor'#237'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 648
      Top = 6
      Width = 93
      Height = 24
      Caption = 'Proveedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 264
      Top = 6
      Width = 57
      Height = 24
      Caption = 'Marca:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ProveedorEdit: TEdit
      Left = 646
      Top = 30
      Width = 249
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyUp = ProveedorEditKeyUp
    end
    object CodigoEdit: TEdit
      Left = 135
      Top = 30
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = CodigoEditExit
      OnKeyUp = CodigoEditKeyUp
    end
    object DescripcionEdit: TEdit
      Left = 8
      Top = 30
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyUp = DescripcionEditKeyUp
    end
    object RubroEdit: TEdit
      Left = 518
      Top = 30
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyUp = RubroEditKeyUp
    end
    object CategoriaEdit: TEdit
      Left = 390
      Top = 30
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyUp = CategoriaEditKeyUp
    end
    object MarcaEdit: TEdit
      Left = 262
      Top = 30
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyUp = MarcaEditKeyUp
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 394
    Width = 792
    Height = 72
    Align = alBottom
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label6: TLabel
      Left = 346
      Top = 23
      Width = 74
      Height = 24
      Caption = 'Precio: $'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 130
      Top = 23
      Width = 51
      Height = 24
      Caption = 'Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 187
      Top = 23
      Width = 153
      Height = 33
      DataField = 'Disponible'
      DataSource = DSArticulos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 426
      Top = 23
      Width = 151
      Height = 33
      DataField = 'PrecioCtaCte'
      DataSource = DSArticulos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 616
      Top = 29
      Width = 75
      Height = 13
      Caption = 'Seleccionar?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SiBitBtn: TBitBtn
      Left = 530
      Top = 10
      Width = 80
      Height = 50
      Caption = 'Si'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkYes
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = SiBitBtnClick
    end
    object NoBitBtn: TBitBtn
      Left = 697
      Top = 10
      Width = 80
      Height = 50
      Caption = 'No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkNo
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = NoBitBtnClick
    end
    object VerTodosBitBtn: TBitBtn
      Left = 9
      Top = 10
      Width = 80
      Height = 50
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = VerTodosBitBtnClick
    end
  end
  object DSArticulos: TDataSource
    DataSet = ATArticulos
    Left = 308
    Top = 160
  end
  object ATArticulos: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Articulos')
    Left = 260
    Top = 160
  end
end
