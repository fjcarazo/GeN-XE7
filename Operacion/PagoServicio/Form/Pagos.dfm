object PagosForm: TPagosForm
  Left = 330
  Top = 197
  Caption = 'Pagos'
  ClientHeight = 396
  ClientWidth = 597
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
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 597
    Height = 271
    Align = alClient
    DataSource = PagosDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fecha'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalle'
        Width = 247
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pagos.CodImpuestoServicio'
        Title.Caption = 'Cod'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Linea'
        Title.Caption = 'L'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 597
    Height = 57
    Align = alTop
    Color = clBlack
    ParentBackground = False
    TabOrder = 1
    object ProveedorLabel: TLabel
      Left = 188
      Top = 21
      Width = 50
      Height = 13
      Caption = 'SERVICIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 21
      Width = 51
      Height = 13
      Caption = 'Servicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 17
      Width = 57
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object ServicioBitBtn: TBitBtn
      Left = 133
      Top = 15
      Width = 49
      Height = 25
      Caption = 'F1...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ServicioBitBtnClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 597
    Height = 68
    Align = alBottom
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label10: TLabel
      Left = 169
      Top = 23
      Width = 74
      Height = 24
      Caption = 'Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 137
      Top = 23
      Width = 31
      Height = 24
      Caption = 'F8:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 338
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label16: TLabel
      Left = 262
      Top = 23
      Width = 31
      Height = 24
      Caption = 'F9:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object CancelarBitBtn: TBitBtn
      Left = 9
      Top = 10
      Width = 80
      Height = 50
      Cancel = True
      Caption = '&Salir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = CancelarBitBtnClick
    end
    object SaldoDBEdit: TDBEdit
      Left = 377
      Top = 19
      Width = 201
      Height = 33
      Color = clWhite
      DataSource = PagosDataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object ImprimirBitBtn: TBitBtn
      Left = 292
      Top = 27
      Width = 25
      Height = 17
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFFFFFFFF00FFFF00FF00000000000000000000000000000000
        0000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FF000000
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
        FF000000FF00FFFF00FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF00FF000000FF00FF000000FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF00FFFF00FFFF00FFFFFF00FFFF00FF0000
        00000000000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F
        7F7F7F7F7F7F7F7FFF00FFFF00FF000000FF00FF000000FF00FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF00FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000FF00FF000000FF00FF000000FF00FF000000
        000000000000000000000000000000000000000000000000000000FF00FF0000
        00FF00FF000000000000FF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FF00FF000000FF00FF000000FF00FFFF00FF
        FF00FF000000FFFFFF000000000000000000000000000000FFFFFF0000000000
        00000000000000FF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF000000FFFFFF000000000000000000000000000000FFFFFF0000
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0000000000000000000000000000000000000000000000
        00000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 2
      OnClick = ImprimirBitBtnClick
    end
  end
  object PagosADOQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM Pagos INNER JOIN ImpuestosServicios ON Pagos.CodIm' +
        'puestoServicio = ImpuestosServicios.CodImpuestoServicio')
    Left = 352
    Top = 240
    object PagosADOQueryID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object PagosADOQueryPagosCodImpuestoServicio: TIntegerField
      FieldName = 'Pagos.CodImpuestoServicio'
    end
    object PagosADOQueryFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object PagosADOQueryHora: TDateTimeField
      FieldName = 'Hora'
    end
    object PagosADOQueryLinea: TIntegerField
      FieldName = 'Linea'
    end
    object PagosADOQueryDetalle: TWideStringField
      FieldName = 'Detalle'
      Size = 50
    end
    object PagosADOQueryImporte: TFloatField
      FieldName = 'Importe'
    end
    object PagosADOQueryImpuestosServiciosCodImpuestoServicio: TIntegerField
      FieldName = 'ImpuestosServicios.CodImpuestoServicio'
    end
    object PagosADOQueryNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object PagosADOQueryDireccion1: TWideStringField
      FieldName = 'Direccion1'
      Size = 30
    end
    object PagosADOQueryDireccion2: TWideStringField
      FieldName = 'Direccion2'
      Size = 30
    end
    object PagosADOQueryPais: TWideStringField
      FieldName = 'Pais'
    end
    object PagosADOQueryProvincia: TWideStringField
      FieldName = 'Provincia'
    end
    object PagosADOQueryDepartamento: TWideStringField
      FieldName = 'Departamento'
    end
    object PagosADOQueryCiudad: TWideStringField
      FieldName = 'Ciudad'
    end
    object PagosADOQueryCodigoPostal: TWideStringField
      FieldName = 'CodigoPostal'
      Size = 10
    end
    object PagosADOQueryCodigoArea: TWideStringField
      FieldName = 'CodigoArea'
      Size = 10
    end
    object PagosADOQueryCelular: TWideStringField
      FieldName = 'Celular'
      Size = 30
    end
    object PagosADOQueryTelefono: TWideStringField
      FieldName = 'Telefono'
      Size = 15
    end
    object PagosADOQueryExtencion: TWideStringField
      FieldName = 'Extencion'
      Size = 6
    end
    object PagosADOQueryFax: TWideStringField
      FieldName = 'Fax'
      Size = 15
    end
    object PagosADOQueryEmail: TWideStringField
      FieldName = 'Email'
      Size = 50
    end
    object PagosADOQueryTerminos: TWideStringField
      FieldName = 'Terminos'
      Size = 30
    end
    object PagosADOQueryDiasCredito: TIntegerField
      FieldName = 'DiasCredito'
    end
    object PagosADOQueryNotas: TWideMemoField
      FieldName = 'Notas'
      BlobType = ftWideMemo
    end
    object PagosADOQueryCUIT: TWideStringField
      FieldName = 'CUIT'
      Size = 50
    end
    object PagosADOQueryIVA: TWideStringField
      FieldName = 'IVA'
      Size = 50
    end
    object PagosADOQueryContacto: TWideStringField
      FieldName = 'Contacto'
      Size = 50
    end
    object PagosADOQueryGerente: TWideStringField
      FieldName = 'Gerente'
      Size = 50
    end
    object PagosADOQueryIngresoBruto: TWideStringField
      FieldName = 'IngresoBruto'
      Size = 50
    end
    object PagosADOQueryDocumento: TWideStringField
      FieldName = 'Documento'
      Size = 50
    end
    object PagosADOQueryRubro: TWideStringField
      FieldName = 'Rubro'
      Size = 50
    end
    object PagosADOQueryMessenger: TWideStringField
      FieldName = 'Messenger'
      Size = 50
    end
    object PagosADOQueryCtaNombre: TIntegerField
      FieldName = 'CtaNombre'
    end
    object PagosADOQueryCtaTipo: TIntegerField
      FieldName = 'CtaTipo'
    end
    object PagosADOQueryCtaAnticipo: TIntegerField
      FieldName = 'CtaAnticipo'
    end
    object PagosADOQueryCtaIIBB: TIntegerField
      FieldName = 'CtaIIBB'
    end
    object PagosADOQueryPersona: TIntegerField
      FieldName = 'Persona'
    end
    object PagosADOQueryPagare: TBooleanField
      FieldName = 'Pagare'
    end
    object PagosADOQueryCuenta: TIntegerField
      FieldName = 'Cuenta'
    end
  end
  object PagosDataSource: TDataSource
    DataSet = PagosADOQuery
    Left = 408
    Top = 240
  end
  object QTemp: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT "'#39'+DataModule1.Empresa+'#39'" As Empresa, * FROM Pagos INNER ' +
        'JOIN ImpuestosServicios ON Pagos.CodImpuestoServicio = Impuestos' +
        'Servicios.CodImpuestoServicio')
    Left = 432
    Top = 240
  end
  object q: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT * FROM CtaCte INNER JOIN (CtaCteItem INNER JOIN Clientes ' +
        'ON CtaCteItem.CodCliente = Clientes.CodCliente) ON CtaCte.CodCli' +
        'ente = CtaCteItem.CodCliente;')
    Left = 464
    Top = 240
  end
  object EmpresaQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Empresa')
    Left = 232
    Top = 184
  end
  object ConfigQuery: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Configuracion'
      '')
    Left = 232
    Top = 240
  end
end
