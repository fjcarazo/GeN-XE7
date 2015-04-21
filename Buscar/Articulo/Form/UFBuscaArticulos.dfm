object FBuscaArticulo: TFBuscaArticulo
  Left = 190
  Top = 123
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Buscar Art'#237'culos'
  ClientHeight = 466
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 692
    Height = 393
    Align = alClient
    DataSource = DataSource
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRIPCION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUBRO'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TASA'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISPONIBLE'
        Title.Caption = 'STOCK'
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
      Left = 666
      Top = 8
      Width = 66
      Height = 24
      Caption = 'Codigo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 8
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
      Left = 394
      Top = 8
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
      Left = 266
      Top = 8
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
      Left = 522
      Top = 8
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
      Left = 138
      Top = 8
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
      Left = 520
      Top = 32
      Width = 249
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyUp = ProveedorEditKeyUp
    end
    object CodigoEdit: TEdit
      Left = 664
      Top = 32
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
      Top = 32
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyUp = DescripcionEditKeyUp
    end
    object RubroEdit: TEdit
      Left = 392
      Top = 32
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyUp = RubroEditKeyUp
    end
    object CategoriaEdit: TEdit
      Left = 264
      Top = 32
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyUp = CategoriaEditKeyUp
    end
    object MarcaEdit: TEdit
      Left = 136
      Top = 32
      Width = 121
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyUp = MarcaEditKeyUp
    end
  end
  object Panel3: TPanel
    Left = 692
    Top = 73
    Width = 100
    Height = 393
    Align = alRight
    Color = clBlack
    ParentBackground = False
    TabOrder = 2
    object Label6: TLabel
      Left = 17
      Top = 137
      Width = 67
      Height = 24
      Caption = 'Precio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 75
      Width = 58
      Height = 24
      Caption = 'Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 10
      Top = 96
      Width = 80
      Height = 33
      Alignment = taRightJustify
      DataField = 'Disponible'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 10
      Top = 160
      Width = 80
      Height = 33
      Alignment = taRightJustify
      DataField = 'PRECIO'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 26
      Top = 181
      Width = 49
      Height = 24
      Caption = 's/iva:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 10
      Top = 203
      Width = 80
      Height = 33
      Alignment = taRightJustify
      DataField = 'precioIVA'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object imprimir_exportarImage: TImage
      Left = 10
      Top = 242
      Width = 80
      Height = 50
      Cursor = crHandPoint
      Hint = 'IMPRIMIR O EXPORTAR'
      Center = True
      DragCursor = crDefault
      ParentShowHint = False
      Picture.Data = {
        0954474946496D61676547494638396150003200C41F0069C7EAB154D954B0D3
        D890F688CFE9E9F5FCCEEDF901AEEEB9E6F7CC68F6B727F4EED6F73AA7D09A17
        D1C645FCA9D9EBE5BCF7A106E2D5A2EB1A9ED02FC4FB31B2E19E2CCEA541D075
        52D00AA2DB93DFFCC585E0BB6EDCB100FB00B7FBFFFFFF21FF0B584D50204461
        7461584D503C3F787061636B657420626567696E3D22EFBBBF222069643D2257
        354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D
        706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F222078
        3A786D70746B3D2241646F626520584D5020436F726520352E302D6330363020
        36312E3133343737372C20323031302F30322F31322D31373A33323A30302020
        202020202020223E203C7264663A52444620786D6C6E733A7264663D22687474
        703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D7379
        6E7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A
        61626F75743D222220786D6C6E733A786D705269676874733D22687474703A2F
        2F6E732E61646F62652E636F6D2F7861702F312E302F7269676874732F222078
        6D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F
        2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F
        75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61
        646F62652E636F6D2F7861702F312E302F2220786D705269676874733A4D6172
        6B65643D2246616C73652220786D704D4D3A4F726967696E616C446F63756D65
        6E7449443D22757569643A374445434434434332343039453031314233464644
        31344646303532453943342220786D704D4D3A446F63756D656E7449443D2278
        6D702E6469643A32313332393531323339304331314530384441354537424141
        323541343035312220786D704D4D3A496E7374616E636549443D22786D702E69
        69643A3231333239353131333930433131453038444135453742414132354134
        3035312220786D703A43726561746F72546F6F6C3D2241646F62652050686F74
        6F73686F70204353352057696E646F7773223E203C786D704D4D3A4465726976
        656446726F6D2073745265663A696E7374616E636549443D22786D702E696964
        3A41333143304132393041333945303131384338384430324131363534453330
        35222073745265663A646F63756D656E7449443D22757569643A374445434434
        4343323430394530313142334646443134464630353245394334222F3E203C2F
        7264663A4465736372697074696F6E3E203C2F7264663A5244463E203C2F783A
        786D706D6574613E203C3F787061636B657420656E643D2272223F3E01FFFEFD
        FCFBFAF9F8F7F6F5F4F3F2F1F0EFEEEDECEBEAE9E8E7E6E5E4E3E2E1E0DFDEDD
        DCDBDAD9D8D7D6D5D4D3D2D1D0CFCECDCCCBCAC9C8C7C6C5C4C3C2C1C0BFBEBD
        BCBBBAB9B8B7B6B5B4B3B2B1B0AFAEADACABAAA9A8A7A6A5A4A3A2A1A09F9E9D
        9C9B9A999897969594939291908F8E8D8C8B8A898887868584838281807F7E7D
        7C7B7A797877767574737271706F6E6D6C6B6A696867666564636261605F5E5D
        5C5B5A595857565554535251504F4E4D4C4B4A494847464544434241403F3E3D
        3C3B3A393837363534333231302F2E2D2C2B2A292827262524232221201F1E1D
        1C1B1A191817161514131211100F0E0D0C0B0A090807060504030201000021F9
        040100001F002C00000000500032008469C7EAB154D954B0D3D890F688CFE9E9
        F5FCCEEDF901AEEEB9E6F7CC68F6B727F4EED6F73AA7D09A17D1C645FCA9D9EB
        E5BCF7A106E2D5A2EB1A9ED02FC4FB31B2E19E2CCEA541D07552D00AA2DB93DF
        FCC585E0BB6EDCB100FB00B7FBFFFFFF05FFE0278E64699E68AAAE6CEBBE702C
        CF746DDF78AEEF7CEFFFC0A070482C1A8FC8A4723973741CC4402320734299D8
        9355D4E90C065DC562E1F48E0211CEA0D1B8404617CB8663A1D2A91FF6371211
        93BB03235B1F0A1D094E0A29835D8C618D11811F52166C0D16166F92179B171C
        1F749E79950D7C0A7C8C9183858C89288B5D6F096105051D7D22520D810B7178
        019B0B1FC1A022940D6F1CA5B46122AAB0C28A4F5CD21F601D12CDB7926D2312
        1617C10101A1221C9DC516A1127CD81F88CDD485AD2AAF0922D69909DA52E4BC
        E09F01DA89D870EEC3A50D22D645C8D7A195337B2B5E45C227425F2B7E237805
        18C641E0870D01101AB4D04E029B7CDA1EFFB29078EFD9078BB8B889807061E3
        A78E24408ABC54F264C594F10CADA406A865079417D9205C202ED41C8F033888
        8CD3F3D84F874121D2236AA69A4B98DB2E7DAB9969C3864CF7A48AA09AD0E74B
        A0570A698D76A5A8D7A33F2DC4DC20611387600907A0FD2041ED874DED30B805
        AB1288149137184C00E00301050F1E28181041C0C3010D222A64A85000018674
        0018087850808481070860B7FE5040C06A010C084CD8BDFB016D00190E1CA080
        400480CC1A30CF468100B3730F9B0B5CA6508040860CBE4D37C0C0A0BB00CA22
        1E1020207E7C74DBDD73F3EE5D4074F003CA3F1C7FBEFC04660AB4A78B68EE01
        C0810CE06987416B0FD8561C02001010DDFF030000400B6E02B4B69964E05997
        416BFC81361F689BA5C05F87FCCD769C7007CC86C06EC589601B011F1000806F
        2214D0206BB8B13802852510901C661AC6B7C28ECF619662019E1D60E307274E
        B01C0102B0D8608AC6BD581B03308A80A371EF39D7237E2C001924684862F6D9
        080864A0E40804E4F681812400B05A01DD55F9C195D61D008006447AB0650B1F
        9E209D98078068269435CAD7E408B50980009C5492706505768A60008FF265D6
        429E5CCED75A671E3437DC7ED731B0D903717E50E06ABFD9464BA92388061EA4
        D4FDA967A55C7619E4ACFC51A681702C9669E66EDE8DE0A66DE845C72A96D78D
        27DC97B4BE60D97D294E27A27008F88AE0366E4786879E82311EFB8101EE81B6
        2371C7E1576E10BED697850EE9AEEBEEBBF0C62BEFBCF4D66BEFBDF8E6ABEFBE
        FCF6EBEFBF3B8400003B}
      ShowHint = True
      OnClick = imprimir_exportarImageClick
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 323
      Width = 80
      Height = 50
      Caption = 'mostrar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
      OnClick = BitBtn1Click
    end
    object VerTodosBitBtn: TBitBtn
      Left = 10
      Top = 16
      Width = 80
      Height = 50
      Caption = 'Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = VerTodosBitBtnClick
    end
  end
  object DataSource: TDataSource
    DataSet = Tabla
    Left = 252
    Top = 256
  end
  object Tabla: TIBQuery
    Database = DM.BaseDatos
    Transaction = DM.Transaccion
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT '
      '("Articulo".Precio/("Articulo".Tasa/100+1)) as precioIVA,'
      '  "Articulo".DESCRIPCION,'
      '  "Articulo".CODIGO,'
      '  "Articulo".COSTO,'
      '  "Articulo".ULTCOSTO,'
      '  "Articulo".PRECIO1,'
      '  "Articulo".PRECIO2,'
      '  "Articulo".PRECIO3,'
      '  "Articulo".PRECIO4,'
      '  "Articulo".PRECIO5,'
      '  "Articulo".PRECIO6,'
      '  "Articulo".PRECIO,'
      '  "Articulo".PORCENTAJE,'
      '  "Articulo".ULTPRECIO,'
      '  "Articulo".UBICACION,'
      '  "Articulo".UNIDAD,'
      '  "Articulo".DISPONIBLE,'
      '  "Articulo".ENPRODUCCION,'
      '  "Articulo".NOTAS,'
      '  "Articulo".IVA,'
      '  "Articulo".TASA,'
      '  "Articulo".IMPOTROS,'
      '  "Articulo".IIBB,'
      '  "Articulo".STOCKMINIMO,'
      '  "Articulo".STOCKMAXIMO,'
      '  "Articulo".STOCKVENDIDO,'
      '  "Articulo".FECHACOMPULT,'
      '  "Articulo".LISTA,'
      '  "Articulo".PROCEDENCIA,'
      '  "Articulo".CODIGOBARRA,'
      '  "Articulo".GARANTIA,'
      '  "Articulo".FECHA,'
      '  "Articulo".PEDIDO,'
      '  "Articulo".STOCK,'
      '  "Articulo".EXISTENTE,'
      '  "Articulo".ACTUAL,'
      '  "Articulo".MARCADOCONTADO,'
      '  "Articulo".MARCADOLISTA,'
      '  "Articulo".MARCADOFINAL,'
      '  "Articulo".PREPARADO,'
      '  "Articulo".CTANOMBRE,'
      '  "Articulo".CTATIPO,'
      '  "Articulo".CTAANTICIPO,'
      '  "Articulo".CTAIIBB,'
      '  "Articulo".ESTADO,'
      '  "Articulo".VENCE,'
      '  "Articulo".VENCIMIENTO,'
      '  "Marca".DESCRIPCION AS MARCA,'
      '  "Color".DESCRIPCION AS COLOR,'
      '  "Categoria".DESCRIPCION AS CATEGORIA,'
      '  "SubCategoria".DESCRIPCION AS SUBCATEGORIA,'
      '  "Rubro".DESCRIPCION AS RUBRO,'
      '  "Proveedor".NOMBRE AS PROVEEDOR'
      'FROM'
      '  "Articulo"'
      '  INNER JOIN "Marca" ON ("Articulo".MARCA = "Marca".CODIGO)'
      '  INNER JOIN "Color" ON ("Articulo".COLOR = "Color".CODIGO)'
      
        '  INNER JOIN "Categoria" ON ("Articulo".CATEGORIA = "Categoria".' +
        'CODIGO)'
      
        '  INNER JOIN "SubCategoria" ON ("Articulo".SUBCATEGORIA = "SubCa' +
        'tegoria".CODIGO)'
      '  INNER JOIN "Rubro" ON ("Articulo".RUBRO = "Rubro".CODIGO)'
      
        '  INNER JOIN "Proveedor" ON ("Articulo".PROVEEDOR = "Proveedor".' +
        'CODIGO)')
    Left = 200
    Top = 256
  end
end
