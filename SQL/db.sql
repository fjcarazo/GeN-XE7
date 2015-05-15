/* SQL Manager Lite for InterBase and Firebird 5.2.6.45382 */
/* ------------------------------------------------------- */
/* Host     : localhost                                    */
/* Database : C:\DeGsoft\GeN\GeN.FDB                       */


CREATE DATABASE '127.0.0.1/gds_db:C:\DeGsoft\GeN\GeN.FDB'   USER 'SYSDBA'
   PASSWORD 'masterkey'
   PAGE_SIZE 8192
   DEFAULT CHARACTER SET WIN1252;

/* Structure for the `Categoria` table :  */

CREATE TABLE "Categoria" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


ALTER TABLE "Categoria" ADD CONSTRAINT "PK_Categoria" PRIMARY KEY (CODIGO);

/* Structure for the `Color` table :  */

CREATE TABLE "Color" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


ALTER TABLE "Color" ADD CONSTRAINT "PK_Color" PRIMARY KEY (CODIGO);

/* Structure for the `Marca` table :  */

CREATE TABLE "Marca" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


ALTER TABLE "Marca" ADD CONSTRAINT "PK_Marca" PRIMARY KEY (CODIGO);

/* Structure for the `Proveedor` table :  */

CREATE TABLE "Proveedor" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(50),
  PROVINCIA VARCHAR(50),
  DEPARTAMENTO VARCHAR(50),
  CIUDAD VARCHAR(50),
  CP VARCHAR(50),
  CODIGOAREA VARCHAR(50),
  CELULAR VARCHAR(50),
  TELEFONO VARCHAR(50),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(50),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(255),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHAINGRESO TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(50),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  CONTACTO VARCHAR(50),
  GERENTE VARCHAR(50),
  BANCO VARCHAR(255),
  CTACTE VARCHAR(255),
  FORMADEPAGO INTEGER,
  VENCIMIENTO INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2));


ALTER TABLE "Proveedor" ADD CONSTRAINT "PK_Proveedor" PRIMARY KEY (CODIGO);

/* Structure for the `Rubro` table :  */

CREATE TABLE "Rubro" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


ALTER TABLE "Rubro" ADD CONSTRAINT "PK_Rubro" PRIMARY KEY (CODIGO);

/* Structure for the `SubCategoria` table :  */

CREATE TABLE "SubCategoria" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


ALTER TABLE "SubCategoria" ADD CONSTRAINT "PK_SubCategoria" PRIMARY KEY (CODIGO);

/* Structure for the `Articulo` table :  */

CREATE TABLE "Articulo" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  COSTO DOUBLE PRECISION,
  ULTCOSTO DOUBLE PRECISION,
  PRECIO1 DOUBLE PRECISION,
  PRECIO2 DOUBLE PRECISION,
  PRECIO3 DOUBLE PRECISION,
  PRECIO4 DOUBLE PRECISION,
  PRECIO5 DOUBLE PRECISION,
  PRECIO6 DOUBLE PRECISION,
  PRECIO DOUBLE PRECISION,
  PORCENTAJE DOUBLE PRECISION,
  ULTPRECIO DOUBLE PRECISION,
  MARCA INTEGER,
  COLOR INTEGER,
  CATEGORIA INTEGER,
  SUBCATEGORIA INTEGER,
  UBICACION VARCHAR(255) COLLATE PXW_INTL,
  UNIDAD VARCHAR(50) COLLATE PXW_INTL,
  DISPONIBLE INTEGER,
  ENPRODUCCION INTEGER,
  NOTAS VARCHAR(255) COLLATE PXW_INTL,
  IVA INTEGER,
  TASA INTEGER,
  IMPOTROS INTEGER,
  IIBB INTEGER,
  STOCKMINIMO INTEGER,
  STOCKMAXIMO INTEGER,
  STOCKVENDIDO INTEGER,
  FECHACOMPULT TIMESTAMP,
  LISTA INTEGER,
  PROCEDENCIA VARCHAR(255) COLLATE PXW_INTL,
  CODIGOBARRA VARCHAR(255) COLLATE PXW_INTL,
  RUBRO INTEGER,
  PROVEEDOR INTEGER,
  GARANTIA INTEGER,
  FECHA TIMESTAMP,
  PEDIDO INTEGER,
  STOCK VARCHAR(255) COLLATE PXW_INTL,
  EXISTENTE INTEGER,
  ACTUAL INTEGER,
  MARCADOCONTADO INTEGER,
  MARCADOLISTA INTEGER,
  MARCADOFINAL INTEGER,
  PREPARADO VARCHAR(255) COLLATE PXW_INTL,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  CTAIIBB INTEGER,
  ESTADO VARCHAR(255) COLLATE PXW_INTL,
  VENCE TIMESTAMP,
  VENCIMIENTO INTEGER);


ALTER TABLE "Articulo" ADD CONSTRAINT "PK_Articulo" PRIMARY KEY (CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_CATEGORIA FOREIGN KEY (CATEGORIA) REFERENCES "Categoria"(CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_COLOR FOREIGN KEY (COLOR) REFERENCES "Color"(CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_MARCA FOREIGN KEY (MARCA) REFERENCES "Marca"(CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_PROVEEDOR FOREIGN KEY (PROVEEDOR) REFERENCES "Proveedor"(CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_RUBRO FOREIGN KEY (RUBRO) REFERENCES "Rubro"(CODIGO);

ALTER TABLE "Articulo" ADD CONSTRAINT FK_SUBCATEGORIA FOREIGN KEY (SUBCATEGORIA) REFERENCES "SubCategoria"(CODIGO);

CREATE INDEX IDX_NOMBRE ON "Articulo"(DESCRIPCION);

/* Definition for the `Articulo_CODIGO_GEN` generator :  */

CREATE GENERATOR "Articulo_CODIGO_GEN";

SET GENERATOR "Articulo_CODIGO_GEN" TO 5;

/* Definition for the `AI_Articulo_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Articulo_CODIGO" FOR "Articulo"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Articulo_CODIGO_GEN", 1);
  IF (NEW.PROVEEDOR IS NULL) THEN NEW.PROVEEDOR = 0 ;
  IF (NEW.COLOR IS NULL) THEN NEW.COLOR = 0 ;
  IF (NEW.MARCA IS NULL) THEN NEW.MARCA = 0 ;
  IF (NEW.CATEGORIA IS NULL) THEN NEW.CATEGORIA = 0 ;
  IF (NEW.SUBCATEGORIA IS NULL) THEN NEW.SUBCATEGORIA = 0 ;
  IF (NEW.RUBRO IS NULL) THEN NEW.RUBRO = 0 ;
  IF (NEW.IIBB IS NULL) THEN NEW.IIBB = 0 ;
END^

SET TERM ; ^

/* Definition for the `Categoria_CODIGO_GEN` generator :  */

CREATE GENERATOR "Categoria_CODIGO_GEN";

SET GENERATOR "Categoria_CODIGO_GEN" TO 1;

/* Definition for the `AI_Categoria_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Categoria_CODIGO" FOR "Categoria"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Categoria_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `Color_CODIGO_GEN` generator :  */

CREATE GENERATOR "Color_CODIGO_GEN";

SET GENERATOR "Color_CODIGO_GEN" TO 1;

/* Definition for the `AI_Color_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Color_CODIGO" FOR "Color"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Color_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `Marca_CODIGO_GEN` generator :  */

CREATE GENERATOR "Marca_CODIGO_GEN";

SET GENERATOR "Marca_CODIGO_GEN" TO 1;

/* Definition for the `AI_Marca_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Marca_CODIGO" FOR "Marca"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Marca_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `Proveedor_CODIGO_GEN` generator :  */

CREATE GENERATOR "Proveedor_CODIGO_GEN";

SET GENERATOR "Proveedor_CODIGO_GEN" TO 2;

/* Definition for the `AI_Proveedor_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Proveedor_CODIGO" FOR "Proveedor"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Proveedor_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `Rubro_CODIGO_GEN` generator :  */

CREATE GENERATOR "Rubro_CODIGO_GEN";

SET GENERATOR "Rubro_CODIGO_GEN" TO 1;

/* Definition for the `AI_Rubro_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Rubro_CODIGO" FOR "Rubro"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Rubro_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `SubCategoria_CODIGO_GEN` generator :  */

CREATE GENERATOR "SubCategoria_CODIGO_GEN";

/* Definition for the `AI_SubCategoria_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_SubCategoria_CODIGO" FOR "SubCategoria"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("SubCategoria_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Structure for the `Cliente` table :  */

CREATE TABLE "Cliente" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(50),
  PROVINCIA VARCHAR(50),
  DEPARTAMENTO VARCHAR(50),
  CIUDAD VARCHAR(50),
  BARRIO VARCHAR(255) COLLATE PXW_INTL,
  CP VARCHAR(50),
  CODIGOAREA VARCHAR(50),
  CELULAR VARCHAR(50),
  TELEFONO VARCHAR(50),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(50),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(255),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHA TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(50),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  ALMANAQUES VARCHAR(50),
  PROMOCIONES VARCHAR(50),
  GARANTE INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2));


ALTER TABLE "Cliente" ADD CONSTRAINT "PK_Cliente" PRIMARY KEY (CODIGO);

/* Definition for the `Cliente_CODIGO_GEN` generator :  */

CREATE GENERATOR "Cliente_CODIGO_GEN";

SET GENERATOR "Cliente_CODIGO_GEN" TO 1;

/* Definition for the `AI_Cliente_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_Cliente_CODIGO" FOR "Cliente"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Cliente_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Structure for the `Personal` table :  */

CREATE TABLE "Personal" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(50),
  PROVINCIA VARCHAR(50),
  DEPARTAMENTO VARCHAR(50),
  CIUDAD VARCHAR(50),
  BARRIO VARCHAR(50),
  CP VARCHAR(50),
  CODIGOAREA VARCHAR(50),
  CELULAR VARCHAR(50),
  TELEFONO VARCHAR(50),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(50),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(255),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHA TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(50),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  ALMANAQUES VARCHAR(50),
  PROMOCIONES VARCHAR(50),
  GARANTE INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2),
  NACIMIENTO TIMESTAMP,
  ESTADOCIVIL VARCHAR(255) COLLATE PXW_INTL,
  HORAS DOUBLE PRECISION,
  CONTROL VARCHAR(255) COLLATE PXW_INTL);


ALTER TABLE "Personal" ADD CONSTRAINT "PK_Personal" PRIMARY KEY (CODIGO);

/* Definition for the `Personal_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Personal_BI" FOR "Personal"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("Cliente_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Structure for the `IG` table :  */

CREATE TABLE IG (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  NORETENIDO DOUBLE PRECISION,
  PORCENTAJE DOUBLE PRECISION,
  MONTO DOUBLE PRECISION);


ALTER TABLE IG ADD CONSTRAINT PK_IG PRIMARY KEY (CODIGO);

/* Definition for the `IG_CODIGO_GEN` generator :  */

CREATE GENERATOR IG_CODIGO_GEN;

/* Definition for the `AI_IG_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER AI_IG_CODIGO FOR IG
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID(IG_CODIGO_GEN, 1);
END^

SET TERM ; ^

/* Structure for the `IIBB` table :  */

CREATE TABLE IIBB (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  PORCENTAJE DOUBLE PRECISION,
  COEF1 DOUBLE PRECISION,
  COEF2 DOUBLE PRECISION,
  COEF3 DOUBLE PRECISION,
  MONTO DOUBLE PRECISION);


ALTER TABLE IIBB ADD CONSTRAINT PK_IIBB PRIMARY KEY (CODIGO);

/* Definition for the `IIBB_CODIGO_GEN` generator :  */

CREATE GENERATOR IIBB_CODIGO_GEN;

SET GENERATOR IIBB_CODIGO_GEN TO 1;

/* Definition for the `AI_IIBB_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER AI_IIBB_CODIGO FOR IIBB
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID(IIBB_CODIGO_GEN, 1);
END^

SET TERM ; ^

/* Structure for the `MovCaja` table :  */

CREATE TABLE "MovCaja" (
  CODIGO INTEGER,
  TIPO VARCHAR(10),
  FECHA TIMESTAMP,
  USUARIO INTEGER,
  SOCIO INTEGER,
  IMPORTE DOUBLE PRECISION,
  DESCRIPCION VARCHAR(255));

/* Definition for the `MovCaja_CODIGO_GEN` generator :  */

CREATE GENERATOR "MovCaja_CODIGO_GEN";

SET GENERATOR "MovCaja_CODIGO_GEN" TO 6;

/* Definition for the `AI_MovCaja_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "AI_MovCaja_CODIGO" FOR "MovCaja"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  IF (NEW.CODIGO IS NULL) THEN
      NEW.CODIGO = GEN_ID("MovCaja_CODIGO_GEN", 1);
END^

SET TERM ; ^

/* Definition for the `MovCaja_FECHA` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "MovCaja_FECHA" FOR "MovCaja"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Structure for the `Banco` table :  */

CREATE TABLE "Banco" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  DIRECCION VARCHAR(255) COLLATE PXW_INTL,
  CUENTA VARCHAR(255) COLLATE PXW_INTL,
  CBU VARCHAR(255) COLLATE PXW_INTL,
  TARJETA VARCHAR(255) COLLATE PXW_INTL,
  NOTA VARCHAR(255) COLLATE PXW_INTL,
  CTA INTEGER);


CREATE UNIQUE INDEX "PK_Banco" ON "Banco"(CODIGO);

/* Definition for the `Banco_generator` generator :  */

CREATE GENERATOR "Banco_generator";

/* Definition for the `Banco_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Banco_BI" FOR "Banco"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Banco_generator",1); END^

SET TERM ; ^

/* Structure for the `Capitulo` table :  */

CREATE TABLE "Capitulo" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  TIPOGASTO INTEGER);


CREATE UNIQUE INDEX "PK_Capitulo" ON "Capitulo"(CODIGO);

/* Definition for the `Capitulo_generator` generator :  */

CREATE GENERATOR "Capitulo_generator";

SET GENERATOR "Capitulo_generator" TO 5;

/* Definition for the `Capitulo_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Capitulo_BI" FOR "Capitulo"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Capitulo_generator",1); END^

SET TERM ; ^

/* Structure for the `CartonCobranza` table :  */

CREATE TABLE "CartonCobranza" (
  CODIGO INTEGER,
  OPERACION INTEGER,
  FECHA TIMESTAMP,
  IMPRESION INTEGER,
  USUARIO INTEGER);


CREATE UNIQUE INDEX "PK_CartonCobranza" ON "CartonCobranza"(CODIGO);

/* Definition for the `CartonCobranzaFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CartonCobranzaFecha_BI" FOR "CartonCobranza"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `CartonCobranza_generator` generator :  */

CREATE GENERATOR "CartonCobranza_generator";

/* Definition for the `CartonCobranza_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CartonCobranza_BI" FOR "CartonCobranza"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("CartonCobranza_generator",1); END^

SET TERM ; ^

/* Structure for the `ChequeEntegado` table :  */

CREATE TABLE "ChequeEntegado" (
  CODIGO INTEGER,
  CHEQUE INTEGER,
  NUMERO VARCHAR(50) CHARACTER SET NONE,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  FACTURA VARCHAR(50) CHARACTER SET NONE,
  IMPORTE DOUBLE PRECISION,
  FECHA TIMESTAMP,
  DIAS INTEGER,
  CTA INTEGER);

/* Definition for the `ChequeEntregado_generator` generator :  */

CREATE GENERATOR "ChequeEntregado_generator";

/* Definition for the `ChequeEntegado_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ChequeEntegado_BI" FOR "ChequeEntegado"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("ChequeEntregado_generator",1); END^

SET TERM ; ^

/* Structure for the `Cheque` table :  */

CREATE TABLE "Cheque" (
  CODIGO INTEGER,
  NUMERO VARCHAR(50) CHARACTER SET NONE,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  FACTURA VARCHAR(50) CHARACTER SET NONE,
  IMPORTE DOUBLE PRECISION,
  FECHA TIMESTAMP,
  DIAS INTEGER,
  CTA INTEGER);

/* Definition for the `Cheque_generator` generator :  */

CREATE GENERATOR "Cheque_generator";

/* Definition for the `Cheque_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Cheque_BI" FOR "Cheque"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Cheque_generator",1); END^

SET TERM ; ^

/* Structure for the `Cobrador` table :  */

CREATE TABLE "Cobrador" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(30),
  PROVINCIA VARCHAR(30),
  DEPARTAMENTO VARCHAR(30),
  CIUDAD VARCHAR(30),
  CP VARCHAR(20),
  CODIGOAREA VARCHAR(10),
  CELULAR VARCHAR(20),
  TELEFONO VARCHAR(15),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(15),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(30),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHAINGRESO TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(30),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  ALMANAQUES VARCHAR(50),
  PROMOCIONES VARCHAR(50),
  GARANTE INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2),
  COMISION DOUBLE PRECISION,
  PUNTOS DOUBLE PRECISION);

/* Definition for the `Cobrador_generator` generator :  */

CREATE GENERATOR "Cobrador_generator";

SET GENERATOR "Cobrador_generator" TO 1;

/* Definition for the `Cobrador_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Cobrador_BI" FOR "Cobrador"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Cobrador_generator",1); END^

SET TERM ; ^

/* Structure for the `Cobranza` table :  */

CREATE TABLE "Cobranza" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


CREATE UNIQUE INDEX "PK_Cobranza" ON "Cobranza"(CODIGO);

/* Definition for the `Cobranza_generator` generator :  */

CREATE GENERATOR "Cobranza_generator";

/* Definition for the `Cobranza_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Cobranza_BI" FOR "Cobranza"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Cobranza_generator",1); END^

SET TERM ; ^

/* Structure for the `Compra` table :  */

CREATE TABLE "Compra" (
  CODIGO INTEGER,
  LETRA CHAR(1),
  FECHA TIMESTAMP,
  PROVEEDOR INTEGER,
  TERMINOS VARCHAR(30),
  COMPROBANTE VARCHAR(255),
  REMITO VARCHAR(15),
  VENDEDOR INTEGER,
  EXCENTO CHAR(1),
  ANULADA CHAR(1),
  SUBTOTAL DOUBLE PRECISION,
  DESCUENTO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  IIBB DOUBLE PRECISION,
  MINIMP DOUBLE PRECISION,
  TOTAL DOUBLE PRECISION,
  CONTADO DOUBLE PRECISION,
  CHEQUE DOUBLE PRECISION,
  TARJETA DOUBLE PRECISION,
  OTROS DOUBLE PRECISION,
  MONEDAEXTRANJERA INTEGER,
  MEIMPORTE DOUBLE PRECISION,
  METIPOCAMBIO DOUBLE PRECISION,
  SALDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  DESCRIPCION VARCHAR(255),
  USUARIO INTEGER,
  EMPRESA INTEGER);

/* Definition for the `CompraFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CompraFecha_BI" FOR "Compra"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  /* Trigger body */
       new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `Compra_generator` generator :  */

CREATE GENERATOR "Compra_generator";

/* Definition for the `Compra_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Compra_BI" FOR "Compra"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Compra_generator",1); END^

SET TERM ; ^

/* Structure for the `CompraItem` table :  */

CREATE TABLE "CompraItem" (
  CODIGO INTEGER,
  OPERACION INTEGER,
  LINEA INTEGER,
  ARTICULO INTEGER,
  CANTIDAD DOUBLE PRECISION,
  COSTO DOUBLE PRECISION,
  PRECIO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  SERVICIO INTEGER,
  DESCRIPCION VARCHAR(255));

/* Definition for the `CompraItem_generator` generator :  */

CREATE GENERATOR "CompraItem_generator";

/* Definition for the `CompraItem_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CompraItem_BI" FOR "CompraItem"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("CompraItem_generator",1); END^

SET TERM ; ^

/* Structure for the `Concepto` table :  */

CREATE TABLE "Concepto" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  PORCENTAJE DOUBLE PRECISION);


CREATE UNIQUE INDEX "PK_Concepto" ON "Concepto"(CODIGO);

/* Definition for the `Concepto_generator` generator :  */

CREATE GENERATOR "Concepto_generator";

/* Definition for the `Concepto_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Concepto_BI" FOR "Concepto"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Concepto_generator",1); END^

SET TERM ; ^

/* Structure for the `Config` table :  */

CREATE TABLE "Config" (
  CODIGO INTEGER,
  NROFACTURA INTEGER,
  "FechaInicio" VARCHAR(50),
  PP1 DOUBLE PRECISION,
  PP2 DOUBLE PRECISION,
  PP3 DOUBLE PRECISION,
  PP4 DOUBLE PRECISION,
  PP5 DOUBLE PRECISION,
  PP6 DOUBLE PRECISION,
  PP7 DOUBLE PRECISION,
  PP8 DOUBLE PRECISION,
  PP9 DOUBLE PRECISION,
  PP DOUBLE PRECISION,
  "CtaCompra" INTEGER,
  "CtaMercaderia" INTEGER,
  "CtaIIBB" INTEGER,
  "CtaImpuesto" INTEGER,
  "CtaDeudor" INTEGER,
  "CtaVenta" INTEGER,
  "CtaCaja" INTEGER,
  "CtaAnticipoAProveedor" INTEGER,
  "CtaBanco" INTEGER,
  "CtaCMV" INTEGER,
  "CtaComisionVendedor" INTEGER,
  "CtaComisionVendedorAPagar" INTEGER,
  "CtaDeudorEnGestionJudicial" INTEGER,
  "CtaDeudorIncobrable" INTEGER,
  "CtaDeudorMoroso" INTEGER,
  "CtaDeudorPorVenta" INTEGER,
  "CtaDocumentoACobrar" INTEGER,
  "CtaHonorarioLegal" INTEGER,
  "CtaHonorarioLegalApagar" INTEGER,
  "CtaIVARemanente" INTEGER,
  "CtaIVAAPagar" INTEGER,
  "CtaIVACreditoFiscal" INTEGER,
  "CtaIVADebitoFiscal" INTEGER,
  "CtaLiquidacionDeIVA" INTEGER,
  "CtaMerRecJudicialmente" INTEGER,
  "CtaMercaderiaDeReventa" INTEGER,
  "CtaObligacionAPagar" INTEGER,
  "CtaPagoDeHonorario" INTEGER,
  "CtaTarjetaDeCredito" INTEGER,
  "CtaProveedor" INTEGER,
  "CtaRecuperoJudicial" INTEGER,
  "CtaServicioAPAgar" INTEGER,
  "CtaServicio" INTEGER,
  "CtaValorAlCobro" INTEGER,
  "CtaValorADepositar" INTEGER,
  "Cuenta" INTEGER,
  "Precio" INTEGER,
  "Comprobante" INTEGER,
  "Empresa" INTEGER,
  "ImprimirTipo" INTEGER,
  "Imprimir" CHAR(3) COLLATE PXW_INTL,
  "ImprimirFiscal" CHAR(3) COLLATE PXW_INTL,
  "ImprimirMostrar" CHAR(3) COLLATE PXW_INTL,
  "CodigoBarra" CHAR(3) COLLATE PXW_INTL,
  "GesCobTemprana" INTEGER,
  "GesCobExtraJudicial" INTEGER,
  "GesCobJudicial" INTEGER,
  CMV INTEGER,
  CTACAPITALSOC INTEGER);

/* Definition for the `Config_generator` generator :  */

CREATE GENERATOR "Config_generator";

SET GENERATOR "Config_generator" TO 1;

/* Definition for the `Config_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Config_BI" FOR "Config"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Config_generator",1); END^

SET TERM ; ^

/* Structure for the `Contrato` table :  */

CREATE TABLE "Contrato" (
  CODIGO INTEGER,
  NUMERO INTEGER,
  FECHA TIMESTAMP,
  TIPO INTEGER,
  DIA VARCHAR(50),
  DESCRITO VARCHAR(50),
  MES VARCHAR(50),
  MESCRITO VARCHAR(50),
  ANO VARCHAR(50),
  AESCRITO VARCHAR(50),
  CANONES INTEGER,
  CIMPORTE DOUBLE PRECISION,
  CIESCRITO VARCHAR(50),
  IMPORTETOTAL DOUBLE PRECISION,
  ITESCRITO VARCHAR(50),
  TIEMPO VARCHAR(50),
  T2 VARCHAR(50),
  BIEN VARCHAR(50),
  DADOR VARCHAR(50),
  DTIPO VARCHAR(50),
  DNOMBRE VARCHAR(50),
  DAPELLIDO VARCHAR(50),
  DDOCUMENTO VARCHAR(50),
  DDTIPO VARCHAR(50),
  DDOMICILIO VARCHAR(50),
  DDNUMERO INTEGER,
  DCIUDAD VARCHAR(50),
  DPROVINCIA VARCHAR(50),
  DPAIS VARCHAR(50),
  TOMADOR VARCHAR(50),
  TTIPO VARCHAR(50),
  TNOMBRE VARCHAR(50),
  TAPELLIDO VARCHAR(50),
  TDOCUMENTO VARCHAR(50),
  TDTIPO VARCHAR(50),
  TDOMICILIO VARCHAR(50),
  TDTRABAJO VARCHAR(50) CHARACTER SET NONE,
  TCIUDAD VARCHAR(50),
  TPROVINCIA VARCHAR(50),
  TPAIS VARCHAR(50));


CREATE INDEX "IDX_Contrato" ON "Contrato"(CODIGO);

/* Definition for the `ContratoFECHA_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ContratoFECHA_BI" FOR "Contrato"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
  new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `Contrato_generator` generator :  */

CREATE GENERATOR "Contrato_generator";

/* Definition for the `Contrato_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Contrato_BI" FOR "Contrato"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  /* Trigger body */
  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Contrato_generator",1);
END^

SET TERM ; ^

/* Structure for the `Control` table :  */

CREATE TABLE "Control" (
  CODIGO INTEGER,
  USUARIO INTEGER,
  PERSONAL INTEGER,
  INICIO TIMESTAMP,
  FIN TIMESTAMP,
  MAQUINA VARCHAR(50) COLLATE PXW_INTL);


CREATE INDEX "IDX_Control" ON "Control"(CODIGO,INICIO);

/* Definition for the `ControlFIN_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ControlFIN_BI" FOR "Control"
ACTIVE BEFORE UPDATE
POSITION 2
AS
BEGIN
  /* Trigger body */
       new."FIN" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `ControlINICIO_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ControlINICIO_BI" FOR "Control"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
       new."INICIO" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Structure for the `ControlPersonal` table :  */

CREATE TABLE "ControlPersonal" (
  CODIGO INTEGER,
  USUARIO INTEGER,
  PERSONAL INTEGER,
  INICIO TIMESTAMP,
  FIN TIMESTAMP,
  MAQUINA VARCHAR(50) COLLATE PXW_INTL);

/* Definition for the `Control_generator` generator :  */

CREATE GENERATOR "Control_generator";

/* Definition for the `ControlPersonal_CODIGO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ControlPersonal_CODIGO" FOR "ControlPersonal"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Control_generator",1); END^

SET TERM ; ^

/* Definition for the `ControlPersonal_FIN` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ControlPersonal_FIN" FOR "ControlPersonal"
ACTIVE BEFORE UPDATE
POSITION 2
AS
BEGIN
  /* Trigger body */
       new."FIN" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `ControlPersonal_INICIO` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "ControlPersonal_INICIO" FOR "ControlPersonal"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
       new."INICIO" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `Control_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Control_BI" FOR "Control"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Control_generator",1); END^

SET TERM ; ^

/* Structure for the `CtaCte` table :  */

CREATE TABLE "CtaCte" (
  CODIGO INTEGER,
  FECHA TIMESTAMP,
  CLIENTE INTEGER,
  PROVEEDOR INTEGER,
  SALDO DOUBLE PRECISION,
  DESCRIPCION VARCHAR(50),
  CUOTAS INTEGER,
  RENDIDAS INTEGER,
  DESCUENTO DOUBLE PRECISION,
  INTERES DOUBLE PRECISION,
  COBRADOR INTEGER,
  OPERACION INTEGER,
  DETALLE VARCHAR(50),
  ARTICULO VARCHAR(50),
  COBRANZA INTEGER);


CREATE INDEX "IDX_CtaCte" ON "CtaCte"(CODIGO);

/* Definition for the `CtaCteFECHAupdate` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CtaCteFECHAupdate" FOR "CtaCte"
ACTIVE BEFORE UPDATE
POSITION 2
AS
BEGIN
  /* Trigger body */
  new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `CtaCteFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CtaCteFecha_BI" FOR "CtaCte"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `CtaCte_generator` generator :  */

CREATE GENERATOR "CtaCte_generator";

/* Definition for the `CtaCte_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CtaCte_BI" FOR "CtaCte"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("CtaCte_generator",1); END^

SET TERM ; ^

/* Structure for the `CtaCteItem` table :  */

CREATE TABLE "CtaCteItem" (
  CODIGO INTEGER,
  PROVEEDOR INTEGER,
  CLIENTE INTEGER,
  OPERACION INTEGER,
  CUOTA INTEGER,
  DESCRIPCION VARCHAR(255),
  IMPORTE DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  VENCE DATE,
  FECHA TIMESTAMP);

/* Definition for the `CtaCteItemFECHA_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CtaCteItemFECHA_BI" FOR "CtaCteItem"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
  new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `CtaCteItem_generator` generator :  */

CREATE GENERATOR "CtaCteItem_generator";

/* Definition for the `CtaCteItem_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "CtaCteItem_BI" FOR "CtaCteItem"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("CtaCteItem_generator",1); END^

SET TERM ; ^

/* Structure for the `Devolucion` table :  */

CREATE TABLE "Devolucion" (
  CODIGO INTEGER,
  FACTURA INTEGER,
  CLIENTE INTEGER,
  PROVEEDOR INTEGER,
  ARTICULO INTEGER,
  CANTIDAD INTEGER,
  IMPORTE INTEGER,
  FECHA TIMESTAMP,
  VENCIMIENTO TIMESTAMP,
  NOTAS BLOB);


CREATE UNIQUE INDEX "PK_Devolucion" ON "Devolucion"(CODIGO);

/* Definition for the `Devolucion_generator` generator :  */

CREATE GENERATOR "Devolucion_generator";

/* Definition for the `Devolucion_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Devolucion_BI" FOR "Devolucion"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Devolucion_generator",1); END^

SET TERM ; ^

/* Structure for the `Empresa` table :  */

CREATE TABLE "Empresa" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(30),
  PROVINCIA VARCHAR(50),
  DEPARTAMENTO VARCHAR(50),
  CIUDAD VARCHAR(30),
  CP VARCHAR(20),
  CODIGOAREA VARCHAR(10),
  CELULAR VARCHAR(20),
  TELEFONO VARCHAR(15),
  FAX VARCHAR(15),
  EMAIL VARCHAR(50),
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHA TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  RAZONSOCIAL VARCHAR(255),
  CUIT VARCHAR(30),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  WEB VARCHAR(255),
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2));

/* Definition for the `Empresa_generator` generator :  */

CREATE GENERATOR "Empresa_generator";

SET GENERATOR "Empresa_generator" TO 1;

/* Definition for the `Empresa_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Empresa_BI" FOR "Empresa"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Empresa_generator",1); END^

SET TERM ; ^

/* Structure for the `FormaPago` table :  */

CREATE TABLE "FormaPago" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  VENTA INTEGER,
  COMPRA INTEGER,
  CTACTE INTEGER,
  PAGO INTEGER,
  CONTADO DOUBLE PRECISION,
  CHEQUE INTEGER,
  CHEIMP DOUBLE PRECISION,
  CHENRO VARCHAR(255),
  CHEDET VARCHAR(255),
  CHEDIA INTEGER,
  TARJETA INTEGER,
  TARNRO VARCHAR(255),
  TARIMP DOUBLE PRECISION,
  OTRIMP DOUBLE PRECISION,
  MONEDAEXTRANJERA INTEGER,
  MEIMPORTE DOUBLE PRECISION,
  METIPOCAMBIO DOUBLE PRECISION,
  SALDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  FECHA TIMESTAMP,
  CHEQUE3RO INTEGER,
  CH3IMP DOUBLE PRECISION,
  CH3NRO VARCHAR(255),
  CH3DET VARCHAR(255),
  CH3DIA INTEGER);


CREATE UNIQUE INDEX "PK_FormaPago" ON "FormaPago"(CODIGO);

/* Definition for the `FormaPagoFECHA_BI1` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "FormaPagoFECHA_BI1" FOR "FormaPago"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
  new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `FormaPago_generator` generator :  */

CREATE GENERATOR "FormaPago_generator";

/* Definition for the `FormaPago_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "FormaPago_BI" FOR "FormaPago"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("FormaPago_generator",1); END^

SET TERM ; ^

/* Structure for the `GestionCobranza` table :  */

CREATE TABLE "GestionCobranza" (
  CODIGO INTEGER,
  FECHA DATE,
  HORA TIME,
  COBRANZA INTEGER,
  CLIENTE INTEGER,
  DESCRIPCION VARCHAR(255),
  NOTAS BLOB,
  RESPONDIO CHAR(3),
  TRATADO INTEGER,
  OPERACION INTEGER);


CREATE UNIQUE INDEX "PK_GestionCobranza" ON "GestionCobranza"(CODIGO);

/* Definition for the `GestionCobranza_generator` generator :  */

CREATE GENERATOR "GestionCobranza_generator";

/* Definition for the `GestionCobranza_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "GestionCobranza_BI" FOR "GestionCobranza"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("GestionCobranza_generator",1); END^

SET TERM ; ^

/* Structure for the `Imprimir` table :  */

CREATE TABLE "Imprimir" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  REPORTE VARCHAR(255));

/* Definition for the `Imprimir_generator` generator :  */

CREATE GENERATOR "Imprimir_generator";

SET GENERATOR "Imprimir_generator" TO 10;

/* Definition for the `Imprimir_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Imprimir_BI" FOR "Imprimir"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Imprimir_generator",1); END^

SET TERM ; ^

/* Structure for the `LibroBanco` table :  */

CREATE TABLE "LibroBanco" (
  CODIGO INTEGER,
  FECHA TIMESTAMP,
  ORDEN VARCHAR(50),
  CHEQUE VARCHAR(50),
  CONCEPTO VARCHAR(50),
  DEBE DOUBLE PRECISION,
  HABER DOUBLE PRECISION);


CREATE UNIQUE INDEX "PK_LibroBanco" ON "LibroBanco"(CODIGO);

/* Definition for the `LibroBanco_generator` generator :  */

CREATE GENERATOR "LibroBanco_generator";

/* Definition for the `LibroBanco_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroBanco_BI" FOR "LibroBanco"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("LibroBanco_generator",1); END^

SET TERM ; ^

/* Structure for the `LibroDiario` table :  */

CREATE TABLE "LibroDiario" (
  CODIGO INTEGER,
  ASIENTO INTEGER,
  FECHA TIMESTAMP,
  LEYENDA VARCHAR(255),
  JERARQUIA VARCHAR(50),
  CUENTA VARCHAR(50),
  DEBE DOUBLE PRECISION,
  HABER DOUBLE PRECISION,
  OCULTO SMALLINT);

/* Definition for the `LibroDiarioFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroDiarioFecha_BI" FOR "LibroDiario"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `LibroDiario_generator` generator :  */

CREATE GENERATOR "LibroDiario_generator";

/* Definition for the `LibroDiario_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroDiario_BI" FOR "LibroDiario"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("LibroDiario_generator",1); END^

SET TERM ; ^

/* Structure for the `LibroIVAcompra` table :  */

CREATE TABLE "LibroIVAcompra" (
  CODIGO INTEGER,
  FECHA TIMESTAMP,
  FACTURA VARCHAR(50),
  PROVEEDOR VARCHAR(50),
  CUIT VARCHAR(50),
  CONDICION VARCHAR(50),
  NG1 DOUBLE PRECISION,
  NG2 DOUBLE PRECISION,
  NG3 DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  OEIIBB DOUBLE PRECISION,
  IDERPYPAC DOUBLE PRECISION,
  ITF DOUBLE PRECISION);

/* Definition for the `LibroIVAcompraFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroIVAcompraFecha_BI" FOR "LibroIVAcompra"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `LibroIVAcompra_generator` generator :  */

CREATE GENERATOR "LibroIVAcompra_generator";

/* Definition for the `LibroIVAcompra_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroIVAcompra_BI" FOR "LibroIVAcompra"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("LibroIVAcompra_generator",1); END^

SET TERM ; ^

/* Structure for the `LibroIVAventa` table :  */

CREATE TABLE "LibroIVAventa" (
  CODIGO INTEGER,
  FECHA TIMESTAMP,
  FACTURA VARCHAR(50),
  CLIENTE VARCHAR(50),
  CUIT VARCHAR(50),
  CONDICION VARCHAR(50),
  NG1 DOUBLE PRECISION,
  NG2 DOUBLE PRECISION,
  NG3 DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  OEIIBB DOUBLE PRECISION,
  IDERPYPAC DOUBLE PRECISION,
  ITF DOUBLE PRECISION);

/* Definition for the `LibroIVAventaFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroIVAventaFecha_BI" FOR "LibroIVAventa"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `LibroIVAventa_generator` generator :  */

CREATE GENERATOR "LibroIVAventa_generator";

/* Definition for the `LibroIVAventa_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "LibroIVAventa_BI" FOR "LibroIVAventa"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("LibroIVAventa_generator",1); END^

SET TERM ; ^

/* Structure for the `Material` table :  */

CREATE TABLE "Material" (
  CODIGO INTEGER,
  ARTICULO INTEGER,
  EMPRESA INTEGER,
  CANTIDAD INTEGER);


CREATE UNIQUE INDEX "PK_Material" ON "Material"(CODIGO);

/* Definition for the `Material_generator` generator :  */

CREATE GENERATOR "Material_generator";

/* Definition for the `Material_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Material_BI" FOR "Material"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Material_generator",1); END^

SET TERM ; ^

/* Structure for the `NotaCredito` table :  */

CREATE TABLE "NotaCredito" (
  CODIGO INTEGER,
  FECHA DATE,
  HORA TIME,
  CLIENTE VARCHAR(50),
  ARTICULO VARCHAR(50),
  IMPORTE DOUBLE PRECISION,
  VENCIMIENTO TIMESTAMP,
  VENTA INTEGER,
  DESCRIPCION VARCHAR(255),
  USUARIO INTEGER);


CREATE UNIQUE INDEX "PK_NotaCredito" ON "NotaCredito"(CODIGO);

/* Definition for the `NotaCredito_generator` generator :  */

CREATE GENERATOR "NotaCredito_generator";

/* Definition for the `NotaCredito_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "NotaCredito_BI" FOR "NotaCredito"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("NotaCredito_generator",1); END^

SET TERM ; ^

/* Structure for the `Operacion` table :  */

CREATE TABLE "Operacion" (
  CODIGO INTEGER,
  TIPO CHAR(4),
  LETRA CHAR(1),
  FECHA TIMESTAMP,
  CLIENTE INTEGER,
  TERMINOS VARCHAR(30),
  COMPROBANTE VARCHAR(15),
  REMITO VARCHAR(15),
  VENDEDOR INTEGER,
  EXCENTO CHAR(1),
  ANULADA CHAR(1),
  SUBTOTAL DOUBLE PRECISION,
  DESCUENTO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  IIBB DOUBLE PRECISION,
  MINIMP DOUBLE PRECISION,
  TOTAL DOUBLE PRECISION,
  CONTADO DOUBLE PRECISION,
  CHEQUE DOUBLE PRECISION,
  TARJETA DOUBLE PRECISION,
  OTROS DOUBLE PRECISION,
  MONEDAEXTRANJERA INTEGER,
  MEIMPORTE DOUBLE PRECISION,
  METIPOCAMBIO DOUBLE PRECISION,
  SALDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  DESCRIPCION VARCHAR(255),
  USUARIO INTEGER,
  EMPRESA INTEGER,
  PAGARE VARCHAR(1),
  COSTO DOUBLE PRECISION,
  DEUDA DOUBLE PRECISION,
  COMISION DOUBLE PRECISION,
  INGRESOS DOUBLE PRECISION,
  EGRESOS DOUBLE PRECISION);

/* Definition for the `OperacionFECHA_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "OperacionFECHA_BI" FOR "Operacion"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `OPERACION_GENERATOR` generator :  */

CREATE GENERATOR OPERACION_GENERATOR;

/* Definition for the `Operacion_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Operacion_BI" FOR "Operacion"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("OPERACION_GENERATOR",1); END^

SET TERM ; ^

/* Definition for the `OPERACIONITEM_GENERATOR` generator :  */

CREATE GENERATOR OPERACIONITEM_GENERATOR;

/* Structure for the `OperacionItem` table :  */

CREATE TABLE "OperacionItem" (
  CODIGO INTEGER,
  OPERACION INTEGER,
  LINEA INTEGER,
  ARTICULO INTEGER,
  CANTIDAD DOUBLE PRECISION,
  COSTO DOUBLE PRECISION,
  PRECIO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  SERVICIO INTEGER,
  DESCRIPCION VARCHAR(255));

/* Definition for the `OperacionItem_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "OperacionItem_BI" FOR "OperacionItem"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("OPERACIONITEM_GENERATOR",1); END^

SET TERM ; ^

/* Structure for the `Permiso` table :  */

CREATE TABLE "Permiso" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  SECTOR VARCHAR(50));

/* Definition for the `Permiso_generator` generator :  */

CREATE GENERATOR "Permiso_generator";

/* Definition for the `Permiso_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Permiso_BI" FOR "Permiso"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Permiso_generator",1); END^

SET TERM ; ^

/* Structure for the `Plan` table :  */

CREATE TABLE "Plan" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(50),
  DESCRIPCION VARCHAR(255),
  INTERES INTEGER,
  NUMEROHABIL INTEGER,
  NUMERONOHABIL INTEGER,
  DIASCALCULO INTEGER,
  TOTAL INTEGER);

/* Definition for the `Plan_generator` generator :  */

CREATE GENERATOR "Plan_generator";

SET GENERATOR "Plan_generator" TO 2;

/* Definition for the `Plan_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Plan_BI" FOR "Plan"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Plan_generator",1); END^

SET TERM ; ^

/* Structure for the `Presupuesto` table :  */

CREATE TABLE "Presupuesto" (
  CODIGO INTEGER,
  LETRA CHAR(1),
  FECHA TIMESTAMP,
  CLIENTE INTEGER,
  TERMINOS VARCHAR(30),
  COMPROBANTE VARCHAR(15),
  REMITO VARCHAR(15),
  VENDEDOR INTEGER,
  EXCENTO CHAR(1),
  ANULADA CHAR(1),
  SUBTOTAL DOUBLE PRECISION,
  DESCUENTO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  IIBB DOUBLE PRECISION,
  MINIMP DOUBLE PRECISION,
  TOTAL DOUBLE PRECISION,
  CONTADO DOUBLE PRECISION,
  CHEQUE DOUBLE PRECISION,
  TARJETA DOUBLE PRECISION,
  OTROS DOUBLE PRECISION,
  MONEDAEXTRANJERA INTEGER,
  MEIMPORTE DOUBLE PRECISION,
  METIPOCAMBIO DOUBLE PRECISION,
  SALDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  DESCRIPCION VARCHAR(255),
  USUARIO INTEGER,
  EMPRESA INTEGER);

/* Definition for the `PresupuestoFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "PresupuestoFecha_BI" FOR "Presupuesto"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `Venta_generator` generator :  */

CREATE GENERATOR "Venta_generator";

/* Definition for the `Presupuesto_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Presupuesto_BI" FOR "Presupuesto"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Venta_generator",1); END^

SET TERM ; ^

/* Structure for the `Venta` table :  */

CREATE TABLE "Venta" (
  CODIGO INTEGER,
  LETRA CHAR(1),
  FECHA TIMESTAMP,
  CLIENTE INTEGER,
  TERMINOS VARCHAR(30),
  COMPROBANTE VARCHAR(15),
  REMITO VARCHAR(15),
  VENDEDOR INTEGER,
  EXCENTO CHAR(1),
  ANULADA CHAR(1),
  SUBTOTAL DOUBLE PRECISION,
  DESCUENTO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  IVA1 DOUBLE PRECISION,
  IVA2 DOUBLE PRECISION,
  IVA3 DOUBLE PRECISION,
  IIBB DOUBLE PRECISION,
  MINIMP DOUBLE PRECISION,
  TOTAL DOUBLE PRECISION,
  CONTADO DOUBLE PRECISION,
  CHEQUE DOUBLE PRECISION,
  TARJETA DOUBLE PRECISION,
  OTROS DOUBLE PRECISION,
  MONEDAEXTRANJERA INTEGER,
  MEIMPORTE DOUBLE PRECISION,
  METIPOCAMBIO DOUBLE PRECISION,
  SALDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  DESCRIPCION VARCHAR(255),
  USUARIO INTEGER,
  EMPRESA INTEGER,
  PAGARE VARCHAR(1),
  COSTO DOUBLE PRECISION,
  DEUDA DOUBLE PRECISION,
  COMISION DOUBLE PRECISION);

/* Definition for the `VentaFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "VentaFecha_BI" FOR "Venta"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `Venta_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Venta_BI" FOR "Venta"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Venta_generator",1); END^

SET TERM ; ^

/* Structure for the `PresupuestoItem` table :  */

CREATE TABLE "PresupuestoItem" (
  CODIGO INTEGER,
  OPERACION INTEGER,
  LINEA INTEGER,
  ARTICULO INTEGER,
  CANTIDAD DOUBLE PRECISION,
  COSTO DOUBLE PRECISION,
  PRECIO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  SERVICIO INTEGER,
  DESCRIPCION VARCHAR(255));

/* Definition for the `VentaItem_generator` generator :  */

CREATE GENERATOR "VentaItem_generator";

/* Definition for the `PresupuestoItem_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "PresupuestoItem_BI" FOR "PresupuestoItem"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("VentaItem_generator",1); END^

SET TERM ; ^

/* Structure for the `VentaItem` table :  */

CREATE TABLE "VentaItem" (
  CODIGO INTEGER,
  OPERACION INTEGER,
  LINEA INTEGER,
  ARTICULO INTEGER,
  CANTIDAD DOUBLE PRECISION,
  COSTO DOUBLE PRECISION,
  PRECIO DOUBLE PRECISION,
  IMPUESTO DOUBLE PRECISION,
  SERVICIO INTEGER,
  DESCRIPCION VARCHAR(255));

/* Definition for the `VentaItem_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "VentaItem_BI" FOR "VentaItem"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("VentaItem_generator",1); END^

SET TERM ; ^

/* Structure for the `RendidoCobrador` table :  */

CREATE TABLE "RendidoCobrador" (
  CODIGO INTEGER,
  COBRADOR INTEGER,
  VENTA INTEGER,
  CUOTA INTEGER,
  FECHA TIMESTAMP,
  RENDIDO DOUBLE PRECISION,
  PAGADO DOUBLE PRECISION,
  PROCESADO CHAR(2));

/* Definition for the `RendidoCobrador_generator` generator :  */

CREATE GENERATOR "RendidoCobrador_generator";

/* Definition for the `RendidoCobrador_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "RendidoCobrador_BI" FOR "RendidoCobrador"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("RendidoCobrador_generator",1); END^

SET TERM ; ^

/* Structure for the `RendidoVendedor` table :  */

CREATE TABLE "RendidoVendedor" (
  CODIGO INTEGER,
  VENDEDOR INTEGER,
  VENTA INTEGER,
  FECHA TIMESTAMP,
  IMPORTE DOUBLE PRECISION,
  PAGADO CHAR(3));

/* Definition for the `RendidoVendedorFecha_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "RendidoVendedorFecha_BI" FOR "RendidoVendedor"
ACTIVE BEFORE INSERT
POSITION 1
AS
BEGIN
  /* Trigger body */
     new."FECHA" = cast( 'now' as timestamp);
END^

SET TERM ; ^

/* Definition for the `RendidoVendedorPagado_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "RendidoVendedorPagado_BI" FOR "RendidoVendedor"
ACTIVE BEFORE INSERT
POSITION 2
AS
BEGIN   /* Trigger body */  if (new."PAGADO" is null ) then  new."PAGADO" = 'NO'; END^

SET TERM ; ^

/* Definition for the `RendidoVendedor_generator` generator :  */

CREATE GENERATOR "RendidoVendedor_generator";

/* Definition for the `RendidoVendedor_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "RendidoVendedor_BI" FOR "RendidoVendedor"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("RendidoVendedor_generator",1); END^

SET TERM ; ^

/* Structure for the `RubroContable` table :  */

CREATE TABLE "RubroContable" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


CREATE UNIQUE INDEX "PK_RubroContable" ON "RubroContable"(CODIGO);

/* Definition for the `RubroContable_generator` generator :  */

CREATE GENERATOR "RubroContable_generator";

SET GENERATOR "RubroContable_generator" TO 15;

/* Definition for the `RubroContable_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "RubroContable_BI" FOR "RubroContable"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("RubroContable_generator",1); END^

SET TERM ; ^

/* Structure for the `Socio` table :  */

CREATE TABLE "Socio" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(30),
  PROVINCIA VARCHAR(30),
  DEPARTAMENTO VARCHAR(30),
  CIUDAD VARCHAR(30),
  CP VARCHAR(20),
  CODIGOAREA VARCHAR(10),
  CELULAR VARCHAR(20),
  TELEFONO VARCHAR(15),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(15),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(30),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHAINGRESO TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(30),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  CONTACTO VARCHAR(50),
  GERENTE VARCHAR(50),
  BANCO VARCHAR(255),
  CTACTE VARCHAR(255),
  FORMADEPAGO INTEGER,
  VENCIMIENTO INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2));

/* Definition for the `Socio_generator` generator :  */

CREATE GENERATOR "Socio_generator";

SET GENERATOR "Socio_generator" TO 2;

/* Definition for the `Socio_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Socio_BI" FOR "Socio"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Socio_generator",1); END^

SET TERM ; ^

/* Structure for the `StillActivacion` table :  */

CREATE TABLE "StillActivacion" (
  CODIGO INTEGER,
  STORE VARCHAR(255),
  AGENTE VARCHAR(255),
  SUBAGENTE VARCHAR(255),
  COORDINADOR VARCHAR(255),
  VENDEDOR VARCHAR(255),
  DNIVENDEDOR VARCHAR(255),
  ENTIDAD VARCHAR(255),
  SDS VARCHAR(255),
  NIM VARCHAR(255),
  NSE VARCHAR(255),
  IMEI VARCHAR(255),
  CUENTA VARCHAR(255),
  TITULAR VARCHAR(255),
  BLOQUE VARCHAR(255),
  MERCADO VARCHAR(255),
  EQUIPO VARCHAR(255),
  PROMOCION VARCHAR(255),
  "Plan" VARCHAR(255),
  FORMAPAGO VARCHAR(255),
  FECHAACTIV VARCHAR(255),
  FECHAVENTA VARCHAR(255),
  PRESUSPENDIDA VARCHAR(255),
  POS VARCHAR(255),
  NOMBREPOS VARCHAR(255),
  CIUDADPOS VARCHAR(255),
  DPTOPCIAPOS VARCHAR(255));


CREATE UNIQUE INDEX "PK_StillActivacion" ON "StillActivacion"(CODIGO);

/* Definition for the `StillActivacion_generator` generator :  */

CREATE GENERATOR "StillActivacion_generator";

/* Definition for the `StillActivacion_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "StillActivacion_BI" FOR "StillActivacion"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("StillActivacion_generator",1); END^

SET TERM ; ^

/* Structure for the `Tarjeta` table :  */

CREATE TABLE "Tarjeta" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255),
  DIAS INTEGER,
  PORCENTAJE DOUBLE PRECISION,
  TIPO CHAR(3) COLLATE PXW_INTL);

/* Definition for the `Tarjeta_generator` generator :  */

CREATE GENERATOR "Tarjeta_generator";

/* Definition for the `Tarjeta_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Tarjeta_BI" FOR "Tarjeta"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Tarjeta_generator",1); END^

SET TERM ; ^

/* Structure for the `TipoCambio` table :  */

CREATE TABLE "TipoCambio" (
  CODIGO INTEGER,
  FECHA TIMESTAMP,
  DESCRIPCION VARCHAR(255),
  IMPORTE DOUBLE PRECISION,
  USUARIO INTEGER);


CREATE UNIQUE INDEX "PK_TipoCambio" ON "TipoCambio"(CODIGO);

/* Definition for the `TipoCambio_generator` generator :  */

CREATE GENERATOR "TipoCambio_generator";

/* Definition for the `TipoCambio_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "TipoCambio_BI" FOR "TipoCambio"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("TipoCambio_generator",1); END^

SET TERM ; ^

/* Structure for the `TipoGasto` table :  */

CREATE TABLE "TipoGasto" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


CREATE UNIQUE INDEX "PK_TipoGasto" ON "TipoGasto"(CODIGO);

/* Definition for the `TipoGasto_generator` generator :  */

CREATE GENERATOR "TipoGasto_generator";

SET GENERATOR "TipoGasto_generator" TO 4;

/* Definition for the `TipoGasto_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "TipoGasto_BI" FOR "TipoGasto"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("TipoGasto_generator",1); END^

SET TERM ; ^

/* Structure for the `Tratado` table :  */

CREATE TABLE "Tratado" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255));


CREATE UNIQUE INDEX "PK_Tratado" ON "Tratado"(CODIGO);

/* Definition for the `Tratado_generator` generator :  */

CREATE GENERATOR "Tratado_generator";

/* Definition for the `Tratado_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Tratado_BI" FOR "Tratado"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Tratado_generator",1); END^

SET TERM ; ^

/* Structure for the `Usuario` table :  */

CREATE TABLE "Usuario" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(50),
  "password" VARCHAR(50),
  DESCRIPCION VARCHAR(255),
  PERMISO INTEGER,
  EMPRESA INTEGER);

/* Definition for the `Usuario_generator` generator :  */

CREATE GENERATOR "Usuario_generator";

SET GENERATOR "Usuario_generator" TO 3;

/* Definition for the `Usuario_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Usuario_BI" FOR "Usuario"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Usuario_generator",1); END^

SET TERM ; ^

/* Structure for the `Vendedor` table :  */

CREATE TABLE "Vendedor" (
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  TITULAR VARCHAR(50),
  DIRECCION VARCHAR(50),
  DIRECCIONCOMERCIAL VARCHAR(50),
  PAIS VARCHAR(30),
  PROVINCIA VARCHAR(30),
  DEPARTAMENTO VARCHAR(30),
  CIUDAD VARCHAR(30),
  CP VARCHAR(20),
  CODIGOAREA VARCHAR(10),
  CELULAR VARCHAR(20),
  TELEFONO VARCHAR(15),
  EXTENCION VARCHAR(6),
  FAX VARCHAR(15),
  EMAIL VARCHAR(50),
  TERMINOS VARCHAR(30),
  VENDEDOR INTEGER,
  PRECIO INTEGER,
  SUSPENDIDO CHAR(2),
  EXCENTO CHAR(2),
  FECHAINGRESO TIMESTAMP,
  LIMITECREDITO DOUBLE PRECISION,
  NOTAS BLOB,
  DIASCREDITO INTEGER,
  DOCUMENTO VARCHAR(50),
  CUIT VARCHAR(30),
  IIBB VARCHAR(50),
  RUBRO VARCHAR(50),
  IVA VARCHAR(50),
  MSN VARCHAR(50),
  ALMANAQUES VARCHAR(50),
  PROMOCIONES VARCHAR(50),
  GARANTE INTEGER,
  ZONA INTEGER,
  CTA INTEGER,
  CTANOMBRE INTEGER,
  CTATIPO INTEGER,
  CTAANTICIPO INTEGER,
  PAGARE CHAR(2),
  COMISION DOUBLE PRECISION,
  PUNTOS DOUBLE PRECISION);

/* Definition for the `Vendedor_generator` generator :  */

CREATE GENERATOR "Vendedor_generator";

SET GENERATOR "Vendedor_generator" TO 1;

/* Definition for the `Vendedor_BI` trigger :  */

SET TERM ^ ;

CREATE TRIGGER "Vendedor_BI" FOR "Vendedor"
ACTIVE BEFORE INSERT
POSITION 0
AS
BEGIN   /* Trigger body */  if (new."CODIGO" is null ) then  new."CODIGO" = gen_id("Vendedor_generator",1); END^

SET TERM ; ^

/* Structure for the `ActivarCelular` table :  */

CREATE TABLE "ActivarCelular" (
  CODIGO INTEGER,
  IMEI VARCHAR(50) COLLATE PXW_INTL,
  NSE VARCHAR(50) COLLATE PXW_INTL,
  "Vendedor" INTEGER,
  "Fecha" TIMESTAMP);


CREATE UNIQUE INDEX "PK_ActivarCelular" ON "ActivarCelular"(CODIGO);

/* Structure for the `Area` table :  */

CREATE TABLE "Area" (
  CODIGO INTEGER,
  DESCRIPCION VARCHAR(255) COLLATE PXW_INTL,
  EMPRESA INTEGER);


CREATE UNIQUE INDEX "PK_Area" ON "Area"(CODIGO);

/* Structure for the `Cuenta` table :  */

CREATE TABLE "Cuenta" (
  CODIGO INTEGER,
  RUBRO INTEGER,
  CAPITULO INTEGER,
  TIPOGASTO INTEGER,
  JERARQUIA VARCHAR(50),
  DESCRIPCION VARCHAR(50),
  SALDO DOUBLE PRECISION,
  LEYENDADEUDORA VARCHAR(50),
  LEYENDAHACREEDORA VARCHAR(50));


CREATE INDEX "IDX_Cuenta" ON "Cuenta"(CODIGO);

/* Structure for the `HORARIO` table :  */

CREATE TABLE HORARIO (
  CODIGO INTEGER DEFAULT 0,
  PERSONAL INTEGER,
  ENTRADA TIMESTAMP,
  SALIDA TIMESTAMP,
  DESINI TIMESTAMP,
  DESFIN TIMESTAMP,
  DIAHAB INTEGER,
  DIALIB INTEGER);


ALTER TABLE HORARIO ADD CONSTRAINT PK_HORARIO PRIMARY KEY (CODIGO);

/* Definition for the `Articulo_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Articulo_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Categoria_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Categoria_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Cliente_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Cliente_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Color_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Color_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `IG_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "IG_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `IIBB_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "IIBB_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Marca_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Marca_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Proveedor_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Proveedor_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `Rubro_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "Rubro_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `SubCategoria_CODIGO_AutoInc` procedure :  */

SET TERM ^ ;

CREATE PROCEDURE "SubCategoria_CODIGO_AutoInc"
RETURNS(
  NEW_VALUE INTEGER)
AS
BEGIN
  EXIT;
END^

SET TERM ; ^

/* Definition for the `ActivarCelular_generator` generator :  */

CREATE GENERATOR "ActivarCelular_generator";

/* Definition for the `Area_generator` generator :  */

CREATE GENERATOR "Area_generator";

/* Definition for the `HORARIO_CODIGO_GEN` generator :  */

CREATE GENERATOR HORARIO_CODIGO_GEN;

SET GENERATOR HORARIO_CODIGO_GEN TO 1;

/* Definition for the `SubCategoria_generator` generator :  */

CREATE GENERATOR "SubCategoria_generator";

SET GENERATOR "SubCategoria_generator" TO 1;

/* Data for the `Categoria` table  (Records 1 - 1) */

INSERT INTO "Categoria"
VALUES (0, 'VARIOS');

COMMIT WORK;

/* Data for the `Color` table  (Records 1 - 1) */

INSERT INTO "Color"
VALUES (0, 'VARIOS');

COMMIT WORK;

/* Data for the `Marca` table  (Records 1 - 1) */

INSERT INTO "Marca"
VALUES (0, 'VARIOS');

COMMIT WORK;

/* Data for the `Proveedor` table  (Records 1 - 2) */

INSERT INTO "Proveedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (1, 'proveedor', NULL, 'Calle s/n', NULL, NULL, 'Mendoza', 'San Rafael', 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, 13, 36, NULL);

INSERT INTO "Proveedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (2, 'impuestos y servicios', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 88, 89, NULL);

COMMIT WORK;

/* Data for the `Rubro` table  (Records 1 - 1) */

INSERT INTO "Rubro"
VALUES (0, 'VARIOS');

COMMIT WORK;

/* Data for the `SubCategoria` table  (Records 1 - 1) */

INSERT INTO "SubCategoria"
VALUES (0, 'VARIOS');

COMMIT WORK;

/* Data for the `Articulo` table  (Records 1 - 5) */

INSERT INTO "Articulo"
VALUES (1, 'pendrive', 50, 50, 52.5, 55, 57.5, 60, 62.5, 65, 75, 50, NULL, 0, 0, 0, 0, NULL, 'c/u', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2010-07-07', NULL, NULL, '11000259', 0, 1, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66, NULL, NULL, NULL);

INSERT INTO "Articulo"
VALUES (2, 'articulo', 100, 100, 126, 131, 136, 141, 146, 151, 171, 50, NULL, 0, 0, 0, 0, NULL, 'c/u', 0, NULL, NULL, NULL, 21, 0, 1, NULL, NULL, NULL, '2010-07-07', NULL, NULL, '11000013', 0, 1, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66, NULL, NULL, NULL);

INSERT INTO "Articulo"
VALUES (3, 'celular', 500, 500, 525, 550, 575, 600, 625, 650, 750, 50, NULL, 0, 0, 0, 0, NULL, 'c/u', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2010-07-07', NULL, NULL, '11000303', 0, 1, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66, NULL, NULL, NULL);

INSERT INTO "Articulo"
VALUES (4, 'mercaderia', 1000, 1000, 1050, 1100, 1150, 1200, 1250, 1300, 1500, 50, NULL, 0, 0, 0, 0, NULL, 'c/u', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2010-07-07', NULL, NULL, '11000280', 0, 1, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13, 13, 66, NULL, NULL, NULL);

INSERT INTO "Articulo"
VALUES (5, 'telefonia e internet', 180, 180, 189, 198, 207, 216, 225, 234, 180, 0, NULL, 0, 0, 0, 0, NULL, 'c/u', 0, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '2010-07-19', NULL, NULL, 'EAN13', 0, 2, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 81, 28, 66, NULL, NULL, NULL);

COMMIT WORK;

/* Data for the `Cliente` table  (Records 1 - 2) */

INSERT INTO "Cliente" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, BARRIO, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHA, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (0, 'CONSUMIDOR FINAL', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', NULL, 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, 0, NULL, NULL, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 9, 9, 9, NULL);

INSERT INTO "Cliente" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, BARRIO, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHA, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (1, 'cliente', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', NULL, 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, 0, NULL, NULL, NULL, '2010-07-22 11:46:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 9, 9, 9, NULL);

COMMIT WORK;

/* Data for the `IG` table  (Records 1 - 1) */

INSERT INTO IG
VALUES (0, 'VARIOS', 1800, 0.005, 20);

COMMIT WORK;

/* Data for the `IIBB` table  (Records 1 - 5) */

INSERT INTO IIBB
VALUES (0, 'VARIOS', 3, NULL, NULL, NULL, 2000);

INSERT INTO IIBB
VALUES (1, 'REGIMEN LABORAL PARA COMPRA Y VENTA DE BIENES', 3, 0.8, NULL, NULL, 2000);

INSERT INTO IIBB
VALUES (3, 'REGIMEN DE CONVENIO MULTILATERAL PARA COMPRA Y VENTA DE BIENES', 3, 0.8, 0.7768, NULL, 2000);

INSERT INTO IIBB
VALUES (2, 'REGIMEN LABORAL PARA LOCACION DE OBRAS Y SERVICIOS', 3.5, 0.8, NULL, NULL, 2000);

INSERT INTO IIBB
VALUES (4, 'REGIMEN DE CONVENIO MULTILATERAL PARA LOCACION DE OBRAS Y SERVICIOS', 3.5, 0.8, 0.7768, NULL, 2000);

COMMIT WORK;

/* Data for the `MovCaja` table  (Records 1 - 2) */

INSERT INTO "MovCaja"
VALUES (5, 'RETIRO', '2010-12-18 15:17:31', NULL, 1, 100, '');

INSERT INTO "MovCaja"
VALUES (6, 'RETIRO', '2010-12-18 15:25:15', NULL, 1, 100, 'dfsdgfsgs');

COMMIT WORK;

/* Data for the `Capitulo` table  (Records 1 - 5) */

INSERT INTO "Capitulo"
VALUES (1, 'ACTIVO', 0);

INSERT INTO "Capitulo"
VALUES (2, 'PASIVO', 0);

INSERT INTO "Capitulo"
VALUES (3, 'PATRIMONIO NETO', 0);

INSERT INTO "Capitulo"
VALUES (4, 'RESULTADO NEGATIVO', 1);

INSERT INTO "Capitulo"
VALUES (5, 'RESULTADO POSITIVO', 0);

COMMIT WORK;

/* Data for the `Cobrador` table  (Records 1 - 1) */

INSERT INTO "Cobrador" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE, COMISION, PUNTOS)
VALUES (1, 'cobrador', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 51, 51, 26, NULL, 5, NULL);

COMMIT WORK;

/* Data for the `Config` table  (Records 1 - 1) */

INSERT INTO "Config"
VALUES (1, 1, '01/01/2010', 5, 10, 15, 20, 25, 30, 0, 0, 0, 0, 8, 13, 8, 5, 16, 46, 77, 36, 4, 45, 50, 25, 12, 58, 11, 9, 10, 79, 79, 86, 31, 14, 30, 0, 15, 13, 38, 0, 0, 76, 3, 28, 81, 3, 85, 0, 0, 1, 1, 1, 'SI', NULL, 'SI', 'NO', 0, 0, 0, NULL, 87);

COMMIT WORK;

/* Data for the `Empresa` table  (Records 1 - 1) */

INSERT INTO "Empresa" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, FAX, EMAIL, SUSPENDIDO, EXCENTO, FECHA, LIMITECREDITO, DIASCREDITO, DOCUMENTO, RAZONSOCIAL, CUIT, IIBB, RUBRO, IVA, MSN, WEB, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (1, 'Mi Empresa', 'Yo', NULL, 'Lejos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT WORK;

/* Data for the `Imprimir` table  (Records 1 - 9) */

INSERT INTO "Imprimir"
VALUES (1, 'Ticket', 'CTicket');

INSERT INTO "Imprimir"
VALUES (2, 'Original', 'COriginal');

INSERT INTO "Imprimir"
VALUES (3, 'Duplicado', 'CDuplicado');

INSERT INTO "Imprimir"
VALUES (4, 'Triplicado', 'CTriplicado');

INSERT INTO "Imprimir"
VALUES (5, 'Cuadruplicado', 'CCuadruplicado');

INSERT INTO "Imprimir"
VALUES (7, 'Preimpresa Original', 'CPOriginal');

INSERT INTO "Imprimir"
VALUES (8, 'Preimpresa Duplicado', 'CPDuplicado');

INSERT INTO "Imprimir"
VALUES (9, 'Preimpresa Triplicado', 'CPTriplicado');

INSERT INTO "Imprimir"
VALUES (10, 'Preimpresa Cuadruplicado', 'CPCuadruplicado');

COMMIT WORK;

/* Data for the `Permiso` table  (Records 1 - 4) */

INSERT INTO "Permiso"
VALUES (0, 'MINIMO', '0');

INSERT INTO "Permiso"
VALUES (1, 'BASICO', '0');

INSERT INTO "Permiso"
VALUES (2, 'AVANZADO', '0');

INSERT INTO "Permiso"
VALUES (3, 'ADMINISTRADOR', '0');

COMMIT WORK;

/* Data for the `Plan` table  (Records 1 - 2) */

INSERT INTO "Plan"
VALUES (1, '288 cuotas', 'plan diario', 150, 6, 1, 1, 288);

INSERT INTO "Plan"
VALUES (2, '180 cuotas', 'plan semanal de 180 cuotas.', 100, 7, 0, 7, 180);

COMMIT WORK;

/* Data for the `RubroContable` table  (Records 1 - 12) */

INSERT INTO "RubroContable"
VALUES (1, 'CAJA Y BANCOS');

INSERT INTO "RubroContable"
VALUES (2, 'CUENTAS POR COBRAR');

INSERT INTO "RubroContable"
VALUES (3, 'BIENES DE CAMBIO');

INSERT INTO "RubroContable"
VALUES (4, 'OTROS CREDITOS');

INSERT INTO "RubroContable"
VALUES (6, 'DEUDAS COMERCIALES');

INSERT INTO "RubroContable"
VALUES (7, 'DEUDAS IMPOSITIVAS');

INSERT INTO "RubroContable"
VALUES (9, 'CAPITAL SOCIAL');

INSERT INTO "RubroContable"
VALUES (10, 'INGRESOS POR VENTAS');

INSERT INTO "RubroContable"
VALUES (11, 'COSTO DE MERCADERIA VENDIDA');

INSERT INTO "RubroContable"
VALUES (12, 'GASTOS ADMINISTRATIVOS');

INSERT INTO "RubroContable"
VALUES (13, 'GASTOS COMERCIALES');

INSERT INTO "RubroContable"
VALUES (15, 'GASTOS IMPOSITIVOS');

COMMIT WORK;

/* Data for the `Socio` table  (Records 1 - 2) */

INSERT INTO "Socio" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (1, 'socio xx', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, 41, 90, NULL);

INSERT INTO "Socio" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, CONTACTO, GERENTE, BANCO, CTACTE, FORMADEPAGO, VENCIMIENTO, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE)
VALUES (2, 'socio yy', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', 'Ciudad', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, 42, 91, NULL);

COMMIT WORK;

/* Data for the `TipoGasto` table  (Records 1 - 4) */

INSERT INTO "TipoGasto"
VALUES (1, 'GASTOS GENERALES');

INSERT INTO "TipoGasto"
VALUES (2, 'GASTOS EN PERSONAL');

INSERT INTO "TipoGasto"
VALUES (3, 'INCOBRABLES');

INSERT INTO "TipoGasto"
VALUES (4, 'IMPUESTOS');

COMMIT WORK;

/* Data for the `Usuario` table  (Records 1 - 4) */

INSERT INTO "Usuario"
VALUES (0, 'minimo', 'minimo', 'minimo', 0, 0);

INSERT INTO "Usuario"
VALUES (1, 'basico', 'basico', 'basico', 1, 0);

INSERT INTO "Usuario"
VALUES (2, 'avanzado', 'avanzado', 'avanzado', 2, 0);

INSERT INTO "Usuario"
VALUES (3, 'admin', 'admin', 'admin', 3, 0);

COMMIT WORK;

/* Data for the `Vendedor` table  (Records 1 - 1) */

INSERT INTO "Vendedor" (CODIGO, NOMBRE, TITULAR, DIRECCION, DIRECCIONCOMERCIAL, PAIS, PROVINCIA, DEPARTAMENTO, CIUDAD, CP, CODIGOAREA, CELULAR, TELEFONO, EXTENCION, FAX, EMAIL, TERMINOS, VENDEDOR, PRECIO, SUSPENDIDO, EXCENTO, FECHAINGRESO, LIMITECREDITO, DIASCREDITO, DOCUMENTO, CUIT, IIBB, RUBRO, IVA, MSN, ALMANAQUES, PROMOCIONES, GARANTE, ZONA, CTA, CTANOMBRE, CTATIPO, CTAANTICIPO, PAGARE, COMISION, PUNTOS)
VALUES (1, 'vendedor', NULL, 'Calle s/n', 'Ruta s/n', NULL, 'Mendoza', 'San Rafael', 'San Rafael', NULL, NULL, '15', '4', NULL, '2627', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 50, 25, NULL, 5, NULL);

COMMIT WORK;

/* Data for the `Cuenta` table  (Records 1 - 80) */

INSERT INTO "Cuenta"
VALUES (90, 2, 1, NULL, '100290', 'SOCIO XX CTA PARTICULAR', NULL, NULL, NULL);

INSERT INTO "Cuenta"
VALUES (91, 2, 1, NULL, '100291', 'SOCIO YY CTA ARTICULAR', NULL, NULL, NULL);

INSERT INTO "Cuenta"
VALUES (88, 13, 4, 1, '401388', 'IMPUESTOS Y SERVICIOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (89, 6, 2, 1, '200689', 'IMPUESTOS Y SERVICIOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (10, 2, 1, 0, '100210', 'DOCUMENTOS COMERCIALES A COBRAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (1, 1, 1, 0, '100101', 'CAJA EN MONEDA NACIONAL', 0, '', '');

INSERT INTO "Cuenta"
VALUES (2, 1, 1, 0, '100102', 'CAJA EN MONEDA EXTRANJERA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (3, 1, 1, 0, '100103', 'VALORES AL COBRO', 0, '', '');

INSERT INTO "Cuenta"
VALUES (4, 1, 1, 0, '100104', 'BANCO XX CUENTA CORRIENTE', 0, '', '');

INSERT INTO "Cuenta"
VALUES (5, 1, 1, 0, '100105', 'BANCO YY CUENTA CORRIENTE', 0, '', '');

INSERT INTO "Cuenta"
VALUES (6, 1, 1, 0, '100106', 'BANCO ZZ CAJA DE AHORRO', 0, '', '');

INSERT INTO "Cuenta"
VALUES (7, 1, 1, 0, '100107', 'CAJA CHICA EN MONEDA NACIONAL', 0, '', '');

INSERT INTO "Cuenta"
VALUES (8, 1, 1, 0, '100108', 'CAJA CHICA EN MONEDA EXTRANJERA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (9, 2, 1, 0, '100209', 'DEUDORES POR VENTAS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (11, 2, 1, 0, '100211', 'DEUDORES MOROSOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (12, 2, 1, 0, '100212', 'DEUDORES EN GESTION JUDICIAL', 0, '', '');

INSERT INTO "Cuenta"
VALUES (13, 3, 1, 0, '100313', 'MERCADERIAS DE REVENTA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (14, 4, 1, 0, '100414', 'IVA CREDITO FISCAL', 0, '', '');

INSERT INTO "Cuenta"
VALUES (15, 3, 1, 0, '100315', 'MERCADERIA RECUPERADA JUDICIALMENTE', 0, '', '');

INSERT INTO "Cuenta"
VALUES (16, 4, 1, 0, '100416', 'OTROS CREDITOS VARIOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (17, 5, 2, 0, '200517', 'SUELDOS Y JORNALES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (18, 5, 2, 0, '200518', 'SAC A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (19, 5, 2, 0, '200519', 'CARGAS SOCIALES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (20, 5, 2, 0, '200520', 'SEGUROS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (21, 5, 2, 0, '200521', 'HONORARIOS CONTABLES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (22, 5, 2, 0, '200522', 'HONORARIOS LEGALES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (23, 5, 2, 0, '200523', 'HONORARIOS DIRECTORES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (24, 5, 2, 0, '200524', 'OTROS GASTOS ADMINISTRATIVOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (25, 6, 2, 0, '200625', 'COMISION VENDEDORES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (26, 6, 2, 0, '200626', 'COMISION COBRADORES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (27, 6, 2, 0, '200627', 'FLETES Y ACARREOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (28, 6, 2, 0, '200628', 'TELEFONIA INTERNET A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (29, 6, 2, 0, '200629', 'TELEFONIA MOVIL A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (30, 7, 2, 0, '200730', 'IVA DEBITO FISCAL', 0, '', '');

INSERT INTO "Cuenta"
VALUES (31, 7, 2, 0, '200731', 'IVA A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (32, 7, 2, 0, '200732', 'INGRESOS BRUTOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (33, 7, 2, 0, '200733', 'IMPUESTO A LAS GANANCIAS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (34, 7, 2, 0, '200734', 'OTROS IMPUESTOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (35, 5, 2, 0, '200535', 'ALQUILERES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (36, 2, 1, 0, '100236', 'ANTICIPO A PROVEEDORES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (37, 8, 2, 0, '200837', 'INTERESES BANCARIOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (38, 5, 2, 0, '200538', 'OBLIGACIONES A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (39, 6, 2, 0, '200639', 'VIATICOS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (40, 8, 2, 0, '200840', 'OTROS GASTOS FINANCIEROS A PAGAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (41, 9, 3, 0, '300941', 'ACCIONISTA SOCIO XX', 0, '', '');

INSERT INTO "Cuenta"
VALUES (42, 9, 3, 0, '300942', 'ACCIONISTA SOCIO YY', 0, '', '');

INSERT INTO "Cuenta"
VALUES (43, 9, 3, 0, '300943', 'ACCIONISTA SOCIO 3', 0, '', '');

INSERT INTO "Cuenta"
VALUES (44, 9, 3, 0, '300944', 'ACCIONISTA SOCIO 4', 0, '', '');

INSERT INTO "Cuenta"
VALUES (45, 11, 4, 1, '401145', 'COSTO DE MERCADERIA VENDIDA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (46, 10, 5, 0, '501046', 'VENTAS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (47, 12, 4, 2, '401247', 'SUELDOS Y JORNALES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (48, 12, 4, 2, '401248', 'CARGAS SOCIALES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (49, 12, 4, 2, '401249', 'SAC', 0, '', '');

INSERT INTO "Cuenta"
VALUES (50, 13, 4, 2, '401350', 'COMISION VENDEDOR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (51, 13, 4, 2, '401351', 'COMISION COBRADOR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (52, 13, 4, 2, '401352', 'MOVILIDAD Y VIATICOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (53, 13, 4, 1, '401353', 'FLETES Y ACARREOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (54, 13, 4, 1, '401354', 'GASTOS DE LIMPIEZA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (55, 4, 1, 0, '100455', 'MUEBLES Y UTILES DE OFICINA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (56, 13, 4, 1, '401356', 'PROPAGANDA Y PUBLICIDAD', 0, '', '');

INSERT INTO "Cuenta"
VALUES (57, 12, 4, 1, '401257', 'ALQUILERES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (58, 13, 4, 3, '401358', 'DEUDORES INCOBRABLES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (59, 12, 4, 1, '401259', 'GASTOS DE LIBRERIA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (60, 13, 4, 1, '401360', 'DIFERENCIA DE INVENTARIO', 0, '', '');

INSERT INTO "Cuenta"
VALUES (61, 9, 3, 0, '300961', 'APORTE CAPITAL SOCIO XX', 0, '', '');

INSERT INTO "Cuenta"
VALUES (62, 9, 3, 0, '300962', 'APORTE CAPITAL SOCIO YY', 0, '', '');

INSERT INTO "Cuenta"
VALUES (66, 15, 4, 4, '400158', 'INGRESOS BRUTOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (70, 12, 4, 1, '401212', 'PAPELERIA Y UTILES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (75, 2, 1, 0, '100217', 'PLANES VIGENTES A COBRAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (76, 6, 2, 0, '200618', 'PROVEEDORES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (77, 1, 1, 0, '100119', 'CAJA', 0, '', '');

INSERT INTO "Cuenta"
VALUES (78, 12, 4, 1, '401220', 'HONORARIOS CONTABLE', 0, '', '');

INSERT INTO "Cuenta"
VALUES (79, 12, 4, 1, '401221', 'HONORARIOS LEGALES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (80, 13, 4, 1, '401322', 'VIATICOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (81, 13, 4, 1, '401381', 'TELEFONO E INTERNET', 0, '', '');

INSERT INTO "Cuenta"
VALUES (82, 12, 4, 2, '401224', 'CARGAS SOCIALES', 0, '', '');

INSERT INTO "Cuenta"
VALUES (83, 11, 1, 1, '101125', 'ACREEDORES VARIOS', 0, '', '');

INSERT INTO "Cuenta"
VALUES (85, 1, 1, 1, '100185', 'VALORES A DEPOSITAR', 0, '', '');

INSERT INTO "Cuenta"
VALUES (86, 7, 2, 0, '200785', 'IVA REMANENTE', 0, '', '');

INSERT INTO "Cuenta"
VALUES (87, 9, 3, 0, '300987', 'CAPITAL SOCIAL', 0, '', '');

COMMIT WORK;

