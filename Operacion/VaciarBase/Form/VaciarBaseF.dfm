object VaciarBaseForm: TVaciarBaseForm
  Left = 380
  Top = 139
  Caption = 'Restaurar Sistema'
  ClientHeight = 335
  ClientWidth = 352
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 24
    Width = 168
    Height = 37
    Caption = 'Cuidado!!! '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 82
    Top = 80
    Width = 181
    Height = 37
    Caption = 'al procesar '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 26
    Top = 192
    Width = 293
    Height = 37
    Caption = 'toda la informaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 91
    Top = 136
    Width = 163
    Height = 37
    Caption = 'se perdera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 71
    Top = 256
    Width = 80
    Height = 50
    Caption = 'Procesar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkAll
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 199
    Top = 256
    Width = 80
    Height = 50
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Kind = bkClose
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 16
    Top = 384
    Width = 337
    Height = 209
    ItemHeight = 13
    TabOrder = 2
  end
  object Borrar: TIBScript
    AutoDDL = False
    Terminator = ';'
    Script.Strings = (
      '/* delete Tables */'
      ''
      'DELETE FROM "ActivarCelular";'
      'DELETE FROM "Area";'
      'DELETE FROM "Articulo";'
      'DELETE FROM "Banco";'
      'DELETE FROM "Capitulo";'
      'DELETE FROM "CartonCobranza";'
      'DELETE FROM "Categoria";'
      'DELETE FROM "Cheque";'
      'DELETE FROM "ChequeEntegado";'
      'DELETE FROM "Cliente";'
      'DELETE FROM "Cobrador";'
      'DELETE FROM "Cobranza";'
      'DELETE FROM "Color";'
      'DELETE FROM "Compra";'
      'DELETE FROM "CompraItem";'
      'DELETE FROM "Concepto";'
      'DELETE FROM "Config";'
      'DELETE FROM "Contrato";'
      'DELETE FROM "Control";'
      'DELETE FROM "CtaCte";'
      'DELETE FROM "CtaCteItem";'
      'DELETE FROM "Cuenta";'
      'DELETE FROM "Devolucion";'
      'DELETE FROM "Empresa";'
      'DELETE FROM "FormaPago";'
      'DELETE FROM "GestionCobranza";'
      'DELETE FROM IG;'
      'DELETE FROM IIBB;'
      'DELETE FROM "Imprimir";'
      'DELETE FROM "LibroBanco";'
      'DELETE FROM "LibroDiario";'
      'DELETE FROM "LibroIVAcompra";'
      'DELETE FROM "LibroIVAventa";'
      'DELETE FROM "Marca";'
      'DELETE FROM "Material";'
      'DELETE FROM "NotaCredito";'
      'DELETE FROM "Permiso";'
      'DELETE FROM "Plan";'
      'DELETE FROM "Presupuesto";'
      'DELETE FROM "PresupuestoItem";'
      'DELETE FROM "Proveedor";'
      'DELETE FROM "RendidoCobrador";'
      'DELETE FROM "RendidoVendedor";'
      'DELETE FROM "Rubro";'
      'DELETE FROM "RubroContable";'
      'DELETE FROM "Socio";'
      'DELETE FROM "StillActivacion";'
      'DELETE FROM "SubCategoria";'
      'DELETE FROM "Tarjeta";'
      'DELETE FROM "TipoCambio";'
      'DELETE FROM "TipoGasto";'
      'DELETE FROM "Tratado";'
      'DELETE FROM "Usuario";'
      'DELETE FROM "Vendedor";'
      'DELETE FROM "Venta";'
      'DELETE FROM "VentaItem";'
      ''
      ''
      ''
      
        'INSERT INTO "Capitulo" (CODIGO, DESCRIPCION, TIPOGASTO) VALUES (' +
        '1, '#39'ACTIVO'#39', 0);'
      
        'INSERT INTO "Capitulo" (CODIGO, DESCRIPCION, TIPOGASTO) VALUES (' +
        '2, '#39'PASIVO'#39', 0);'
      
        'INSERT INTO "Capitulo" (CODIGO, DESCRIPCION, TIPOGASTO) VALUES (' +
        '3, '#39'PATRIMONIO NETO'#39', 0);'
      
        'INSERT INTO "Capitulo" (CODIGO, DESCRIPCION, TIPOGASTO) VALUES (' +
        '4, '#39'RESULTADO NEGATIVO'#39', 1);'
      
        'INSERT INTO "Capitulo" (CODIGO, DESCRIPCION, TIPOGASTO) VALUES (' +
        '5, '#39'RESULTADO POSITIVO'#39', 0);'
      ''
      ''
      ''
      
        'INSERT INTO "Categoria" (CODIGO, DESCRIPCION) VALUES (0, '#39'VARIOS' +
        #39');'
      ''
      ''
      ''
      
        'INSERT INTO "Cliente" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIREC' +
        'CIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, BARRIO, CP' +
        ', CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS' +
        ', VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHA, LIMITECREDITO, D' +
        'IASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, ' +
        'PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO' +
        ', PAGARE) VALUES (0, '#39'CONSUMIDOR FINAL'#39', NULL, '#39'Calle s/n'#39', '#39'Rut' +
        'a s/n'#39', NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', NULL, '#39'Ciudad'#39', NULL, NUL' +
        'L, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, 0, NULL, NULL, NULL, '#39'07' +
        '/22/2010 11:46:07'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL, NULL, 3, NULL, 9, 9, 9, NULL);'
      
        'INSERT INTO "Cliente" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIREC' +
        'CIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, BARRIO, CP' +
        ', CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS' +
        ', VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHA, LIMITECREDITO, D' +
        'IASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, ' +
        'PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO' +
        ', PAGARE) VALUES (1, '#39'cliente'#39', NULL, '#39'Calle s/n'#39', '#39'Ruta s/n'#39', N' +
        'ULL, '#39'Mendoza'#39', '#39'San Rafael'#39', NULL, '#39'Ciudad'#39', NULL, NULL, '#39'15'#39', ' +
        #39'4'#39', NULL, '#39'2627'#39', NULL, NULL, 0, NULL, NULL, NULL, '#39'07/22/2010 ' +
        '11:46:07'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, 0, 3, NULL, 9, 9, 9, NULL);'
      ''
      ''
      ''
      
        'INSERT INTO "Cobrador" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRE' +
        'CCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIG' +
        'OAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDE' +
        'DOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, D' +
        'IASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, ' +
        'PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO' +
        ', PAGARE, COMISION, PUNTOS) VALUES (1, '#39'cobrador'#39', NULL, '#39'Calle ' +
        's/n'#39', '#39'Ruta s/n'#39', NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', '#39'Ciudad'#39', NULL,' +
        ' NULL, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +
        'NULL, NULL, 3, NULL, 51, 51, 26, NULL, 5, NULL);'
      ''
      ''
      ''
      'INSERT INTO "Color" (CODIGO, DESCRIPCION) VALUES (0, '#39'VARIOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Config" (CODIGO, NROFACTURA, "FechaInicio", PP1, PP' +
        '2, PP3, PP4, PP5, PP6, PP7, PP8, PP9, PP, "CtaCompra", "CtaMerca' +
        'deria", "CtaIIBB", "CtaImpuesto", "CtaDeudor", "CtaVenta", "CtaC' +
        'aja", "CtaAnticipoAProveedor", "CtaBanco", "CtaCMV", "CtaComisio' +
        'nVendedor", "CtaComisionVendedorAPagar", "CtaDeudorEnGestionJudi' +
        'cial", "CtaDeudorIncobrable", "CtaDeudorMoroso", "CtaDeudorPorVe' +
        'nta", "CtaDocumentoACobrar", "CtaHonorarioLegal", "CtaHonorarioL' +
        'egalApagar", "CtaIVARemanente", "CtaIVAAPagar", "CtaIVACreditoFi' +
        'scal", "CtaIVADebitoFiscal", "CtaLiquidacionDeIVA", "CtaMerRecJu' +
        'dicialmente", "CtaMercaderiaDeReventa", "CtaObligacionAPagar", "' +
        'CtaPagoDeHonorario", "CtaTarjetaDeCredito", "CtaProveedor", "Cta' +
        'RecuperoJudicial", "CtaServicioAPAgar", "CtaServicio", "CtaValor' +
        'AlCobro", "CtaValorADepositar", "Cuenta", "Precio", "Comprobante' +
        '", "Empresa", "ImprimirTipo", "Imprimir", "ImprimirFiscal", "Imp' +
        'rimirMostrar", "CodigoBarra", "GesCobTemprana", "GesCobExtraJudi' +
        'cial", "GesCobJudicial", CMV, CTACAPITALSOC) VALUES (1, 1, '#39'01/0' +
        '1/2010'#39', 5, 10, 15, 20, 25, 30, 0, 0, 0, 0, 8, 13, 8, 5, 16, 46,' +
        ' 77, 36, 4, 45, 50, 25, 12, 58, 11, 9, 10, 79, 79, 86, 31, 14, 3' +
        '0, 0, 15, 13, 38, 0, 0, 76, 3, 28, 81, 3, 85, 0, 0, 1, 1, 1, '#39'SI' +
        #39', NULL, '#39'SI'#39', '#39'NO'#39', 0, 0, 0, NULL, 87);'
      ''
      ''
      ''
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (90, 2, 1, NULL, '#39'100290'#39', '#39'SOCIO XX CTA PARTICULAR'#39', NULL, N' +
        'ULL, NULL);'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (91, 2, 1, NULL, '#39'100291'#39', '#39'SOCIO YY CTA ARTICULAR'#39', NULL, NU' +
        'LL, NULL);'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (88, 13, 4, 1, '#39'401388'#39', '#39'IMPUESTOS Y SERVICIOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (89, 6, 2, 1, '#39'200689'#39', '#39'IMPUESTOS Y SERVICIOS A PAGAR'#39', 0, '#39 +
        #39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (10, 2, 1, 0, '#39'100210'#39', '#39'DOCUMENTOS COMERCIALES A COBRAR'#39', 0,' +
        ' '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (1, 1, 1, 0, '#39'100101'#39', '#39'CAJA EN MONEDA NACIONAL'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (2, 1, 1, 0, '#39'100102'#39', '#39'CAJA EN MONEDA EXTRANJERA'#39', 0, '#39#39', '#39#39 +
        ');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (3, 1, 1, 0, '#39'100103'#39', '#39'VALORES AL COBRO'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (4, 1, 1, 0, '#39'100104'#39', '#39'BANCO XX CUENTA CORRIENTE'#39', 0, '#39#39', '#39#39 +
        ');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (5, 1, 1, 0, '#39'100105'#39', '#39'BANCO YY CUENTA CORRIENTE'#39', 0, '#39#39', '#39#39 +
        ');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (6, 1, 1, 0, '#39'100106'#39', '#39'BANCO ZZ CAJA DE AHORRO'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (7, 1, 1, 0, '#39'100107'#39', '#39'CAJA CHICA EN MONEDA NACIONAL'#39', 0, '#39#39 +
        ', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (8, 1, 1, 0, '#39'100108'#39', '#39'CAJA CHICA EN MONEDA EXTRANJERA'#39', 0, ' +
        #39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (9, 2, 1, 0, '#39'100209'#39', '#39'DEUDORES POR VENTAS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (11, 2, 1, 0, '#39'100211'#39', '#39'DEUDORES MOROSOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (12, 2, 1, 0, '#39'100212'#39', '#39'DEUDORES EN GESTION JUDICIAL'#39', 0, '#39#39 +
        ', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (13, 3, 1, 0, '#39'100313'#39', '#39'MERCADERIAS DE REVENTA'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (14, 4, 1, 0, '#39'100414'#39', '#39'IVA CREDITO FISCAL'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (15, 3, 1, 0, '#39'100315'#39', '#39'MERCADERIA RECUPERADA JUDICIALMENTE'#39 +
        ', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (16, 4, 1, 0, '#39'100416'#39', '#39'OTROS CREDITOS VARIOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (17, 5, 2, 0, '#39'200517'#39', '#39'SUELDOS Y JORNALES A PAGAR'#39', 0, '#39#39', ' +
        #39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (18, 5, 2, 0, '#39'200518'#39', '#39'SAC A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (19, 5, 2, 0, '#39'200519'#39', '#39'CARGAS SOCIALES A PAGAR'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (20, 5, 2, 0, '#39'200520'#39', '#39'SEGUROS A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (21, 5, 2, 0, '#39'200521'#39', '#39'HONORARIOS CONTABLES A PAGAR'#39', 0, '#39#39 +
        ', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (22, 5, 2, 0, '#39'200522'#39', '#39'HONORARIOS LEGALES A PAGAR'#39', 0, '#39#39', ' +
        #39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (23, 5, 2, 0, '#39'200523'#39', '#39'HONORARIOS DIRECTORES A PAGAR'#39', 0, '#39 +
        #39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (24, 5, 2, 0, '#39'200524'#39', '#39'OTROS GASTOS ADMINISTRATIVOS A PAGAR' +
        #39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (25, 6, 2, 0, '#39'200625'#39', '#39'COMISION VENDEDORES A PAGAR'#39', 0, '#39#39',' +
        ' '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (26, 6, 2, 0, '#39'200626'#39', '#39'COMISION COBRADORES A PAGAR'#39', 0, '#39#39',' +
        ' '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (27, 6, 2, 0, '#39'200627'#39', '#39'FLETES Y ACARREOS A PAGAR'#39', 0, '#39#39', '#39 +
        #39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (28, 6, 2, 0, '#39'200628'#39', '#39'TELEFONIA INTERNET A PAGAR'#39', 0, '#39#39', ' +
        #39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (29, 6, 2, 0, '#39'200629'#39', '#39'TELEFONIA MOVIL A PAGAR'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (30, 7, 2, 0, '#39'200730'#39', '#39'IVA DEBITO FISCAL'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (31, 7, 2, 0, '#39'200731'#39', '#39'IVA A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (32, 7, 2, 0, '#39'200732'#39', '#39'INGRESOS BRUTOS A PAGAR'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (33, 7, 2, 0, '#39'200733'#39', '#39'IMPUESTO A LAS GANANCIAS A PAGAR'#39', 0' +
        ', '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (34, 7, 2, 0, '#39'200734'#39', '#39'OTROS IMPUESTOS A PAGAR'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (35, 5, 2, 0, '#39'200535'#39', '#39'ALQUILERES A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (36, 2, 1, 0, '#39'100236'#39', '#39'ANTICIPO A PROVEEDORES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (37, 8, 2, 0, '#39'200837'#39', '#39'INTERESES BANCARIOS A PAGAR'#39', 0, '#39#39',' +
        ' '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (38, 5, 2, 0, '#39'200538'#39', '#39'OBLIGACIONES A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (39, 6, 2, 0, '#39'200639'#39', '#39'VIATICOS A PAGAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (40, 8, 2, 0, '#39'200840'#39', '#39'OTROS GASTOS FINANCIEROS A PAGAR'#39', 0' +
        ', '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (41, 9, 3, 0, '#39'300941'#39', '#39'ACCIONISTA SOCIO XX'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (42, 9, 3, 0, '#39'300942'#39', '#39'ACCIONISTA SOCIO YY'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (43, 9, 3, 0, '#39'300943'#39', '#39'ACCIONISTA SOCIO 3'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (44, 9, 3, 0, '#39'300944'#39', '#39'ACCIONISTA SOCIO 4'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (45, 11, 4, 1, '#39'401145'#39', '#39'COSTO DE MERCADERIA VENDIDA'#39', 0, '#39#39 +
        ', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (46, 10, 5, 0, '#39'501046'#39', '#39'VENTAS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (47, 12, 4, 2, '#39'401247'#39', '#39'SUELDOS Y JORNALES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (48, 12, 4, 2, '#39'401248'#39', '#39'CARGAS SOCIALES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (49, 12, 4, 2, '#39'401249'#39', '#39'SAC'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (50, 13, 4, 2, '#39'401350'#39', '#39'COMISION VENDEDOR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (51, 13, 4, 2, '#39'401351'#39', '#39'COMISION COBRADOR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (52, 13, 4, 2, '#39'401352'#39', '#39'MOVILIDAD Y VIATICOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (53, 13, 4, 1, '#39'401353'#39', '#39'FLETES Y ACARREOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (54, 13, 4, 1, '#39'401354'#39', '#39'GASTOS DE LIMPIEZA'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (55, 4, 1, 0, '#39'100455'#39', '#39'MUEBLES Y UTILES DE OFICINA'#39', 0, '#39#39',' +
        ' '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (56, 13, 4, 1, '#39'401356'#39', '#39'PROPAGANDA Y PUBLICIDAD'#39', 0, '#39#39', '#39#39 +
        ');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (57, 12, 4, 1, '#39'401257'#39', '#39'ALQUILERES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (58, 13, 4, 3, '#39'401358'#39', '#39'DEUDORES INCOBRABLES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (59, 12, 4, 1, '#39'401259'#39', '#39'GASTOS DE LIBRERIA'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (60, 13, 4, 1, '#39'401360'#39', '#39'DIFERENCIA DE INVENTARIO'#39', 0, '#39#39', '#39 +
        #39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (61, 9, 3, 0, '#39'300961'#39', '#39'APORTE CAPITAL SOCIO XX'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (62, 9, 3, 0, '#39'300962'#39', '#39'APORTE CAPITAL SOCIO YY'#39', 0, '#39#39', '#39#39')' +
        ';'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (66, 15, 4, 4, '#39'400158'#39', '#39'INGRESOS BRUTOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (70, 12, 4, 1, '#39'401212'#39', '#39'PAPELERIA Y UTILES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (75, 2, 1, 0, '#39'100217'#39', '#39'PLANES VIGENTES A COBRAR'#39', 0, '#39#39', '#39#39 +
        ');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (76, 6, 2, 0, '#39'200618'#39', '#39'PROVEEDORES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (77, 1, 1, 0, '#39'100119'#39', '#39'CAJA'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (78, 12, 4, 1, '#39'401220'#39', '#39'HONORARIOS CONTABLE'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (79, 12, 4, 1, '#39'401221'#39', '#39'HONORARIOS LEGALES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (80, 13, 4, 1, '#39'401322'#39', '#39'VIATICOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (81, 13, 4, 1, '#39'401381'#39', '#39'TELEFONO E INTERNET'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (82, 12, 4, 2, '#39'401224'#39', '#39'CARGAS SOCIALES'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (83, 11, 1, 1, '#39'101125'#39', '#39'ACREEDORES VARIOS'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (85, 1, 1, 1, '#39'100185'#39', '#39'VALORES A DEPOSITAR'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (86, 7, 2, 0, '#39'200785'#39', '#39'IVA REMANENTE'#39', 0, '#39#39', '#39#39');'
      
        'INSERT INTO "Cuenta" (CODIGO, RUBRO, CAPITULO, TIPOGASTO, JERARQ' +
        'UIA, DESCRIPCION, SALDO, LEYENDADEUDORA, LEYENDAHACREEDORA) VALU' +
        'ES (87, 9, 3, 0, '#39'300987'#39', '#39'CAPITAL SOCIAL'#39', 0, '#39#39', '#39#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Empresa" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIREC' +
        'CIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGO' +
        'AREA, CELULAR, TELEFONO, FAX, EMAIL, SUSPENDIDO, EXCENTO, FECHA,' +
        ' LIMITECREDITO, DIASCREDITO, DOCUMENTO, RAZONSOCIAL, CUIT, IIBB,' +
        ' RUBRO, IVA, MSN, WEB, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIP' +
        'O, PAGARE) VALUES (1, '#39'Mi Empresa'#39', '#39'Yo'#39', NULL, '#39'Lejos'#39', NULL, N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#39'4'#39', NULL, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL);'
      ''
      ''
      ''
      
        'INSERT INTO IG (CODIGO, DESCRIPCION, NORETENIDO, PORCENTAJE, MON' +
        'TO) VALUES (0, '#39'VARIOS'#39', 1800, 0.005, 20);'
      ''
      ''
      ''
      
        'INSERT INTO IIBB (CODIGO, DESCRIPCION, PORCENTAJE, COEF1, COEF2,' +
        ' COEF3, MONTO) VALUES (0, '#39'VARIOS'#39', 3, NULL, NULL, NULL, 2000);'
      
        'INSERT INTO IIBB (CODIGO, DESCRIPCION, PORCENTAJE, COEF1, COEF2,' +
        ' COEF3, MONTO) VALUES (1, '#39'REGIMEN LABORAL PARA COMPRA Y VENTA D' +
        'E BIENES'#39', 3, 0.8, NULL, NULL, 2000);'
      
        'INSERT INTO IIBB (CODIGO, DESCRIPCION, PORCENTAJE, COEF1, COEF2,' +
        ' COEF3, MONTO) VALUES (3, '#39'REGIMEN DE CONVENIO MULTILATERAL PARA' +
        ' COMPRA Y VENTA DE BIENES'#39', 3, 0.8, 0.7768, NULL, 2000);'
      
        'INSERT INTO IIBB (CODIGO, DESCRIPCION, PORCENTAJE, COEF1, COEF2,' +
        ' COEF3, MONTO) VALUES (2, '#39'REGIMEN LABORAL PARA LOCACION DE OBRA' +
        'S Y SERVICIOS'#39', 3.5, 0.8, NULL, NULL, 2000);'
      
        'INSERT INTO IIBB (CODIGO, DESCRIPCION, PORCENTAJE, COEF1, COEF2,' +
        ' COEF3, MONTO) VALUES (4, '#39'REGIMEN DE CONVENIO MULTILATERAL PARA' +
        ' LOCACION DE OBRAS Y SERVICIOS'#39', 3.5, 0.8, 0.7768, NULL, 2000);'
      ''
      ''
      ''
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (1,' +
        ' '#39'Ticket'#39', '#39'CTicket'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (2,' +
        ' '#39'Original'#39', '#39'COriginal'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (3,' +
        ' '#39'Duplicado'#39', '#39'CDuplicado'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (4,' +
        ' '#39'Triplicado'#39', '#39'CTriplicado'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (5,' +
        ' '#39'Cuadruplicado'#39', '#39'CCuadruplicado'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (7,' +
        ' '#39'Preimpresa Original'#39', '#39'CPOriginal'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (8,' +
        ' '#39'Preimpresa Duplicado'#39', '#39'CPDuplicado'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (9,' +
        ' '#39'Preimpresa Triplicado'#39', '#39'CPTriplicado'#39');'
      
        'INSERT INTO "Imprimir" (CODIGO, DESCRIPCION, REPORTE) VALUES (10' +
        ', '#39'Preimpresa Cuadruplicado'#39', '#39'CPCuadruplicado'#39');'
      ''
      ''
      ''
      'INSERT INTO "Marca" (CODIGO, DESCRIPCION) VALUES (0, '#39'VARIOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Permiso" (CODIGO, DESCRIPCION, SECTOR) VALUES (0, '#39 +
        'MINIMO'#39', '#39'0'#39');'
      
        'INSERT INTO "Permiso" (CODIGO, DESCRIPCION, SECTOR) VALUES (1, '#39 +
        'BASICO'#39', '#39'0'#39');'
      
        'INSERT INTO "Permiso" (CODIGO, DESCRIPCION, SECTOR) VALUES (2, '#39 +
        'AVANZADO'#39', '#39'0'#39');'
      
        'INSERT INTO "Permiso" (CODIGO, DESCRIPCION, SECTOR) VALUES (3, '#39 +
        'ADMINISTRADOR'#39', '#39'0'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Plan" (CODIGO, NOMBRE, DESCRIPCION, INTERES, NUMERO' +
        'HABIL, NUMERONOHABIL, DIASCALCULO, TOTAL) VALUES (1, '#39'288 cuotas' +
        #39', '#39'plan diario'#39', 150, 6, 1, 1, 288);'
      
        'INSERT INTO "Plan" (CODIGO, NOMBRE, DESCRIPCION, INTERES, NUMERO' +
        'HABIL, NUMERONOHABIL, DIASCALCULO, TOTAL) VALUES (2, '#39'180 cuotas' +
        #39', '#39'plan semanal de 180 cuotas.'#39', 100, 7, 0, 7, 180);'
      ''
      ''
      ''
      
        'INSERT INTO "Proveedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIR' +
        'ECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODI' +
        'GOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VEND' +
        'EDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, ' +
        'DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, G' +
        'ERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTAN' +
        'OMBRE, CTATIPO, CTAANTICIPO, PAGARE) VALUES (1, '#39'proveedor'#39', NUL' +
        'L, '#39'Calle s/n'#39', NULL, NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', '#39'Ciudad'#39', N' +
        'ULL, NULL, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#39'4'#39', NULL, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, 13, 36, NULL);'
      
        'INSERT INTO "Proveedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIR' +
        'ECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODI' +
        'GOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VEND' +
        'EDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, ' +
        'DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, G' +
        'ERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTAN' +
        'OMBRE, CTATIPO, CTAANTICIPO, PAGARE) VALUES (2, '#39'impuestos y ser' +
        'vicios'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,' +
        ' NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, 88, 88, 89, NULL);'
      ''
      ''
      ''
      'INSERT INTO "Rubro" (CODIGO, DESCRIPCION) VALUES (0, '#39'VARIOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (1, '#39'CA' +
        'JA Y BANCOS'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (2, '#39'CU' +
        'ENTAS POR COBRAR'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (3, '#39'BI' +
        'ENES DE CAMBIO'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (4, '#39'OT' +
        'ROS CREDITOS'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (6, '#39'DE' +
        'UDAS COMERCIALES'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (7, '#39'DE' +
        'UDAS IMPOSITIVAS'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (9, '#39'CA' +
        'PITAL SOCIAL'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (10, '#39'I' +
        'NGRESOS POR VENTAS'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (11, '#39'C' +
        'OSTO DE MERCADERIA VENDIDA'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (12, '#39'G' +
        'ASTOS ADMINISTRATIVOS'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (13, '#39'G' +
        'ASTOS COMERCIALES'#39');'
      
        'INSERT INTO "RubroContable" (CODIGO, DESCRIPCION) VALUES (15, '#39'G' +
        'ASTOS IMPOSITIVOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Socio" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCI' +
        'ONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAR' +
        'EA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR' +
        ', PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIAS' +
        'CREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GEREN' +
        'TE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBR' +
        'E, CTATIPO, CTAANTICIPO, PAGARE) VALUES (1, '#39'socio xx'#39', NULL, '#39'C' +
        'alle s/n'#39', '#39'Ruta s/n'#39', NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', '#39'Ciudad'#39', ' +
        'NULL, NULL, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, 41, 90, NULL)' +
        ';'
      
        'INSERT INTO "Socio" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCI' +
        'ONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAR' +
        'EA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR' +
        ', PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIAS' +
        'CREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GEREN' +
        'TE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBR' +
        'E, CTATIPO, CTAANTICIPO, PAGARE) VALUES (2, '#39'socio yy'#39', NULL, '#39'C' +
        'alle s/n'#39', '#39'Ruta s/n'#39', NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', '#39'Ciudad'#39', ' +
        'NULL, NULL, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, NULL, NULL, NUL' +
        'L, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, 42, 91, NULL)' +
        ';'
      ''
      ''
      ''
      
        'INSERT INTO "SubCategoria" (CODIGO, DESCRIPCION) VALUES (0, '#39'VAR' +
        'IOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "TipoGasto" (CODIGO, DESCRIPCION) VALUES (1, '#39'GASTOS' +
        ' GENERALES'#39');'
      
        'INSERT INTO "TipoGasto" (CODIGO, DESCRIPCION) VALUES (2, '#39'GASTOS' +
        ' EN PERSONAL'#39');'
      
        'INSERT INTO "TipoGasto" (CODIGO, DESCRIPCION) VALUES (3, '#39'INCOBR' +
        'ABLES'#39');'
      
        'INSERT INTO "TipoGasto" (CODIGO, DESCRIPCION) VALUES (4, '#39'IMPUES' +
        'TOS'#39');'
      ''
      ''
      ''
      
        'INSERT INTO "Usuario" (CODIGO, NOMBRE, "password", DESCRIPCION, ' +
        'PERMISO, EMPRESA) VALUES (0, '#39'minimo'#39', '#39'minimo'#39', '#39'minimo'#39', 0, 0)' +
        ';'
      
        'INSERT INTO "Usuario" (CODIGO, NOMBRE, "password", DESCRIPCION, ' +
        'PERMISO, EMPRESA) VALUES (1, '#39'basico'#39', '#39'basico'#39', '#39'basico'#39', 1, 0)' +
        ';'
      
        'INSERT INTO "Usuario" (CODIGO, NOMBRE, "password", DESCRIPCION, ' +
        'PERMISO, EMPRESA) VALUES (2, '#39'avanzado'#39', '#39'avanzado'#39', '#39'avanzado'#39',' +
        ' 2, 0);'
      
        'INSERT INTO "Usuario" (CODIGO, NOMBRE, "password", DESCRIPCION, ' +
        'PERMISO, EMPRESA) VALUES (3, '#39'admin'#39', '#39'admin'#39', '#39'admin'#39', 3, 0);'
      ''
      ''
      ''
      
        'INSERT INTO "Vendedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRE' +
        'CCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIG' +
        'OAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDE' +
        'DOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, D' +
        'IASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, ' +
        'PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO' +
        ', PAGARE, COMISION, PUNTOS) VALUES (1, '#39'vendedor'#39', NULL, '#39'Calle ' +
        's/n'#39', '#39'Ruta s/n'#39', NULL, '#39'Mendoza'#39', '#39'San Rafael'#39', '#39'San Rafael'#39', N' +
        'ULL, NULL, '#39'15'#39', '#39'4'#39', NULL, '#39'2627'#39', NULL, NULL, NULL, NULL, NULL' +
        ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NU' +
        'LL, NULL, NULL, NULL, NULL, 50, 50, 25, NULL, 5, NULL);'
      ''
      ''
      ''
      
        'INSERT INTO "Articulo" (CODIGO, DESCRIPCION, COSTO, ULTCOSTO, PR' +
        'ECIO1, PRECIO2, PRECIO3, PRECIO4, PRECIO5, PRECIO6, PRECIO, PORC' +
        'ENTAJE, ULTPRECIO, MARCA, COLOR, CATEGORIA, SUBCATEGORIA, UBICAC' +
        'ION, UNIDAD, DISPONIBLE, ENPRODUCCION, NOTAS, IVA, TASA, IMPOTRO' +
        'S, IIBB, STOCKMINIMO, STOCKMAXIMO, STOCKVENDIDO, FECHACOMPULT, L' +
        'ISTA, PROCEDENCIA, CODIGOBARRA, RUBRO, PROVEEDOR, GARANTIA, FECH' +
        'A, PEDIDO, STOCK, EXISTENTE, ACTUAL, MARCADOCONTADO, MARCADOLIST' +
        'A, MARCADOFINAL, PREPARADO, CTANOMBRE, CTATIPO, CTAANTICIPO, CTA' +
        'IIBB, ESTADO, VENCE, VENCIMIENTO) VALUES (1, '#39'pendrive'#39', 50, 50,' +
        ' 52.5, 55, 57.5, 60, 62.5, 65, 75, 50, NULL, 0, 0, 0, 0, NULL, '#39 +
        'c/u'#39', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '#39'07/07/201' +
        '0'#39', NULL, NULL, '#39'11000259'#39', 0, 1, NULL, '#39'07/22/2010 11:46:07'#39', N' +
        'ULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66, N' +
        'ULL, NULL, NULL);'
      
        'INSERT INTO "Articulo" (CODIGO, DESCRIPCION, COSTO, ULTCOSTO, PR' +
        'ECIO1, PRECIO2, PRECIO3, PRECIO4, PRECIO5, PRECIO6, PRECIO, PORC' +
        'ENTAJE, ULTPRECIO, MARCA, COLOR, CATEGORIA, SUBCATEGORIA, UBICAC' +
        'ION, UNIDAD, DISPONIBLE, ENPRODUCCION, NOTAS, IVA, TASA, IMPOTRO' +
        'S, IIBB, STOCKMINIMO, STOCKMAXIMO, STOCKVENDIDO, FECHACOMPULT, L' +
        'ISTA, PROCEDENCIA, CODIGOBARRA, RUBRO, PROVEEDOR, GARANTIA, FECH' +
        'A, PEDIDO, STOCK, EXISTENTE, ACTUAL, MARCADOCONTADO, MARCADOLIST' +
        'A, MARCADOFINAL, PREPARADO, CTANOMBRE, CTATIPO, CTAANTICIPO, CTA' +
        'IIBB, ESTADO, VENCE, VENCIMIENTO) VALUES (2, '#39'articulo'#39', 100, 10' +
        '0, 126, 131, 136, 141, 146, 151, 171, 50, NULL, 0, 0, 0, 0, NULL' +
        ', '#39'c/u'#39', 0, NULL, NULL, NULL, 21, 0, 1, NULL, NULL, NULL, '#39'07/07' +
        '/2010'#39', NULL, NULL, '#39'11000013'#39', 0, 1, NULL, '#39'07/22/2010 11:46:07' +
        #39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 6' +
        '6, NULL, NULL, NULL);'
      
        'INSERT INTO "Articulo" (CODIGO, DESCRIPCION, COSTO, ULTCOSTO, PR' +
        'ECIO1, PRECIO2, PRECIO3, PRECIO4, PRECIO5, PRECIO6, PRECIO, PORC' +
        'ENTAJE, ULTPRECIO, MARCA, COLOR, CATEGORIA, SUBCATEGORIA, UBICAC' +
        'ION, UNIDAD, DISPONIBLE, ENPRODUCCION, NOTAS, IVA, TASA, IMPOTRO' +
        'S, IIBB, STOCKMINIMO, STOCKMAXIMO, STOCKVENDIDO, FECHACOMPULT, L' +
        'ISTA, PROCEDENCIA, CODIGOBARRA, RUBRO, PROVEEDOR, GARANTIA, FECH' +
        'A, PEDIDO, STOCK, EXISTENTE, ACTUAL, MARCADOCONTADO, MARCADOLIST' +
        'A, MARCADOFINAL, PREPARADO, CTANOMBRE, CTATIPO, CTAANTICIPO, CTA' +
        'IIBB, ESTADO, VENCE, VENCIMIENTO) VALUES (3, '#39'celular'#39', 500, 500' +
        ', 525, 550, 575, 600, 625, 650, 750, 50, NULL, 0, 0, 0, 0, NULL,' +
        ' '#39'c/u'#39', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '#39'07/07/2' +
        '010'#39', NULL, NULL, '#39'11000303'#39', 0, 1, NULL, '#39'07/22/2010 11:46:07'#39',' +
        ' NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66,' +
        ' NULL, NULL, NULL);'
      
        'INSERT INTO "Articulo" (CODIGO, DESCRIPCION, COSTO, ULTCOSTO, PR' +
        'ECIO1, PRECIO2, PRECIO3, PRECIO4, PRECIO5, PRECIO6, PRECIO, PORC' +
        'ENTAJE, ULTPRECIO, MARCA, COLOR, CATEGORIA, SUBCATEGORIA, UBICAC' +
        'ION, UNIDAD, DISPONIBLE, ENPRODUCCION, NOTAS, IVA, TASA, IMPOTRO' +
        'S, IIBB, STOCKMINIMO, STOCKMAXIMO, STOCKVENDIDO, FECHACOMPULT, L' +
        'ISTA, PROCEDENCIA, CODIGOBARRA, RUBRO, PROVEEDOR, GARANTIA, FECH' +
        'A, PEDIDO, STOCK, EXISTENTE, ACTUAL, MARCADOCONTADO, MARCADOLIST' +
        'A, MARCADOFINAL, PREPARADO, CTANOMBRE, CTATIPO, CTAANTICIPO, CTA' +
        'IIBB, ESTADO, VENCE, VENCIMIENTO) VALUES (4, '#39'mercaderia'#39', 1000,' +
        ' 1000, 1050, 1100, 1150, 1200, 1250, 1300, 1500, 50, NULL, 0, 0,' +
        ' 0, 0, NULL, '#39'c/u'#39', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NU' +
        'LL, '#39'07/07/2010'#39', NULL, NULL, '#39'11000280'#39', 0, 1, NULL, '#39'07/22/201' +
        '0 11:46:07'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13,' +
        ' 13, 13, 66, NULL, NULL, NULL);'
      
        'INSERT INTO "Articulo" (CODIGO, DESCRIPCION, COSTO, ULTCOSTO, PR' +
        'ECIO1, PRECIO2, PRECIO3, PRECIO4, PRECIO5, PRECIO6, PRECIO, PORC' +
        'ENTAJE, ULTPRECIO, MARCA, COLOR, CATEGORIA, SUBCATEGORIA, UBICAC' +
        'ION, UNIDAD, DISPONIBLE, ENPRODUCCION, NOTAS, IVA, TASA, IMPOTRO' +
        'S, IIBB, STOCKMINIMO, STOCKMAXIMO, STOCKVENDIDO, FECHACOMPULT, L' +
        'ISTA, PROCEDENCIA, CODIGOBARRA, RUBRO, PROVEEDOR, GARANTIA, FECH' +
        'A, PEDIDO, STOCK, EXISTENTE, ACTUAL, MARCADOCONTADO, MARCADOLIST' +
        'A, MARCADOFINAL, PREPARADO, CTANOMBRE, CTATIPO, CTAANTICIPO, CTA' +
        'IIBB, ESTADO, VENCE, VENCIMIENTO) VALUES (5, '#39'telefonia e intern' +
        'et'#39', 180, 180, 189, 198, 207, 216, 225, 234, 180, 0, NULL, 0, 0,' +
        ' 0, 0, NULL, '#39'c/u'#39', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NU' +
        'LL, '#39'07/19/2010'#39', NULL, NULL, '#39'EAN13'#39', 0, 2, NULL, '#39'07/22/2010 1' +
        '1:46:07'#39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 81' +
        ', 28, 66, NULL, NULL, NULL);'
      ''
      ''
      ''
      'SET GENERATOR "ActivarCelular_generator" TO 0;'
      ''
      'SET GENERATOR "Area_generator" TO 0;'
      ''
      'SET GENERATOR "Articulo_CODIGO_GEN" TO 5;'
      ''
      'SET GENERATOR "Banco_generator" TO 0;'
      ''
      'SET GENERATOR "Capitulo_generator" TO 5;'
      ''
      'SET GENERATOR "CartonCobranza_generator" TO 0;'
      ''
      'SET GENERATOR "Categoria_CODIGO_GEN" TO 1;'
      ''
      'SET GENERATOR "Cheque_generator" TO 0;'
      ''
      'SET GENERATOR "ChequeEntregado_generator" TO 0;'
      ''
      'SET GENERATOR "Cliente_CODIGO_GEN" TO 1;'
      ''
      'SET GENERATOR "Cobrador_generator" TO 1;'
      ''
      'SET GENERATOR "Cobranza_generator" TO 0;'
      ''
      'SET GENERATOR "Color_CODIGO_GEN" TO 1;'
      ''
      'SET GENERATOR "Compra_generator" TO 0;'
      ''
      'SET GENERATOR "CompraItem_generator" TO 0;'
      ''
      'SET GENERATOR "Concepto_generator" TO 0;'
      ''
      'SET GENERATOR "Config_generator" TO 1;'
      ''
      'SET GENERATOR "Contrato_generator" TO 0;'
      ''
      'SET GENERATOR "Control_generator" TO 0;'
      ''
      'SET GENERATOR "CtaCte_generator" TO 0;'
      ''
      'SET GENERATOR "CtaCteItem_generator" TO 0;'
      ''
      'SET GENERATOR "Devolucion_generator" TO 0;'
      ''
      'SET GENERATOR "Empresa_generator" TO 1;'
      ''
      'SET GENERATOR "FormaPago_generator" TO 0;'
      ''
      'SET GENERATOR "GestionCobranza_generator" TO 0;'
      ''
      'SET GENERATOR IG_CODIGO_GEN TO 0;'
      ''
      'SET GENERATOR IIBB_CODIGO_GEN TO 1;'
      ''
      'SET GENERATOR "Imprimir_generator" TO 10;'
      ''
      'SET GENERATOR "LibroBanco_generator" TO 0;'
      ''
      'SET GENERATOR "LibroDiario_generator" TO 0;'
      ''
      'SET GENERATOR "LibroIVAcompra_generator" TO 0;'
      ''
      'SET GENERATOR "LibroIVAventa_generator" TO 0;'
      ''
      'SET GENERATOR "Marca_CODIGO_GEN" TO 1;'
      ''
      'SET GENERATOR "Material_generator" TO 0;'
      ''
      'SET GENERATOR "NotaCredito_generator" TO 0;'
      ''
      'SET GENERATOR "Permiso_generator" TO 0;'
      ''
      'SET GENERATOR "Plan_generator" TO 2;'
      ''
      'SET GENERATOR "Proveedor_CODIGO_GEN" TO 2;'
      ''
      'SET GENERATOR "RendidoCobrador_generator" TO 0;'
      ''
      'SET GENERATOR "RendidoVendedor_generator" TO 0;'
      ''
      'SET GENERATOR "Rubro_CODIGO_GEN" TO 1;'
      ''
      'SET GENERATOR "RubroContable_generator" TO 15;'
      ''
      'SET GENERATOR "Socio_generator" TO 2;'
      ''
      'SET GENERATOR "StillActivacion_generator" TO 0;'
      ''
      'SET GENERATOR "SubCategoria_CODIGO_GEN" TO 0;'
      ''
      'SET GENERATOR "SubCategoria_generator" TO 1;'
      ''
      'SET GENERATOR "Tarjeta_generator" TO 0;'
      ''
      'SET GENERATOR "TipoCambio_generator" TO 0;'
      ''
      'SET GENERATOR "TipoGasto_generator" TO 4;'
      ''
      'SET GENERATOR "Tratado_generator" TO 0;'
      ''
      'SET GENERATOR "Usuario_generator" TO 3;'
      ''
      'SET GENERATOR "Vendedor_generator" TO 1;'
      ''
      'SET GENERATOR "Venta_generator" TO 0;'
      ''
      'SET GENERATOR "VentaItem_generator" TO 0;'
      ''
      ''
      'COMMIT;')
    Statistics = False
    Left = 16
    Top = 16
  end
end
