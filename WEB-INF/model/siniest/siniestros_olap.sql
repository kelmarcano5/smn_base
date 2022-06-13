USE WillisSiniestros
GO
DROP TABLE dw_siniestralidad;
DROP TABLE dw_aniofiscal;
DROP TABLE dw_siniestros;
DROP TABLE dw_poliza;
DROP TABLE dw_moneda;
DROP TABLE dw_estatussiniestro;
DROP TABLE dw_causarechazo;
DROP TABLE dw_causasiniestro;
DROP TABLE dw_agrupacion;
DROP TABLE dw_ramo;
DROP TABLE dw_asegurado;
DROP TABLE dw_unidadnegocio;
DROP TABLE dw_estatuspago;
DROP TABLE dw_tiempo;
DROP TABLE dw_ubicaciongeografica;

CREATE TABLE dw_ubicaciongeografica(
  ug_codigo_id INTEGER NOT NULL,
  ug_descripcion VARCHAR(50) NOT NULL,
  ug_codigo_ubge_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión ubicación geográfica'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_ubicaciongeografica', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo ubicación geográfica', N'USER', N'dbo', N'TABLE', N'dw_ubicaciongeografica', N'COLUMN', N'ug_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción de la ubicación geográfica por estado', N'USER', N'dbo', N'TABLE', N'dw_ubicaciongeografica', N'COLUMN', N'ug_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código asociado al estado', N'USER', N'dbo', N'TABLE', N'dw_ubicaciongeografica', N'COLUMN', N'ug_codigo_ubge_id'
GO

CREATE TABLE dw_tiempo(
  ti_codigo_id INTEGER NOT NULL,
  ti_fecha_siniestro DATETIME NOT NULL,
  ti_periodo_fiscal VARCHAR(9) NOT NULL,
  ti_dia_siniestro INTEGER NOT NULL,
  ti_mes_siniestro INTEGER NOT NULL,
  ti_anio_siniestro INTEGER NOT NULL,
  ti_trimestre_siniestro VARCHAR(2) NOT NULL,
  ti_semestre_siniestro VARCHAR(2) NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión tiempo'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_tiempo', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Tiempo', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Fecha de ocurrencia del siniestro en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_fecha_siniestro'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Vigencia o periodo fiscal', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_periodo_fiscal'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Día@{1=DOMINGO|2=LUNES|3=MARTES|4=MIERCOLES|5=JUEVES|6=VIERNES|7=SABADO}', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_dia_siniestro'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Mes@{1=01|2=02|3=03|4=04|5=05|6=06|7=07|8=08|9=09|10=10|11=11|12=12}', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_mes_siniestro'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Año calendario de ocurrencia del siniestro', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_anio_siniestro'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Trimestre@{T1=TRIMESTRE1|T2=TRIMESTRE2|T3=TRIMESTRE3|T4=TRIMESTRE4}', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_trimestre_siniestro'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Semestre@{S1=SEMESTRE1|S2=SEMESTRE2}', N'USER', N'dbo', N'TABLE', N'dw_tiempo', N'COLUMN', N'ti_semestre_siniestro'
GO

CREATE TABLE dw_estatuspago(
  ep_codigo_id INTEGER NOT NULL,
  ep_descripcion VARCHAR(64) NOT NULL,
  ep_estatus INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión estatus de pago'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_estatuspago', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo estatus de pago', N'USER', N'dbo', N'TABLE', N'dw_estatuspago', N'COLUMN', N'ep_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción del estatus de pago', N'USER', N'dbo', N'TABLE', N'dw_estatuspago', N'COLUMN', N'ep_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Número asociado al estatus de pago', N'USER', N'dbo', N'TABLE', N'dw_estatuspago', N'COLUMN', N'ep_estatus'
GO

CREATE TABLE dw_unidadnegocio(
  un_codigo_id INTEGER NOT NULL,
  un_descripcion VARCHAR(50) NOT NULL,
  un_codigo_negocio INTEGER NOT NULL,
  un_codigo_orden INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimension Unidad de Negocio'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_unidadnegocio', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Unidad de Negocio', N'USER', N'dbo', N'TABLE', N'dw_unidadnegocio', N'COLUMN', N'un_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción', N'USER', N'dbo', N'TABLE', N'dw_unidadnegocio', N'COLUMN', N'un_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código', N'USER', N'dbo', N'TABLE', N'dw_unidadnegocio', N'COLUMN', N'un_codigo_negocio'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Orden', N'USER', N'dbo', N'TABLE', N'dw_unidadnegocio', N'COLUMN', N'un_codigo_orden'
GO

CREATE TABLE dw_asegurado(
  as_codigo_id INTEGER NOT NULL,
  as_nombre VARCHAR(80) NOT NULL,
  as_codigo_aseg_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión asegurado'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_asegurado', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de asegurado', N'USER', N'dbo', N'TABLE', N'dw_asegurado', N'COLUMN', N'as_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Nombre del asegurado en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_asegurado', N'COLUMN', N'as_nombre'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código del asegurado en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_asegurado', N'COLUMN', N'as_codigo_aseg_id'
GO

CREATE TABLE dw_ramo(
  ra_codigo_id INTEGER NOT NULL,
  ra_descripcion VARCHAR(30) NOT NULL,
  ra_codigo_ramo_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión ramo'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_ramo', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Ramo', N'USER', N'dbo', N'TABLE', N'dw_ramo', N'COLUMN', N'ra_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción del ramo en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_ramo', N'COLUMN', N'ra_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código del ramo en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_ramo', N'COLUMN', N'ra_codigo_ramo_id'
GO

CREATE TABLE dw_agrupacion(
  agr_codigo_id INTEGER NOT NULL,
  af_codigo_id INTEGER NOT NULL,
  agr_codigo_grp INTEGER NOT NULL,
  agr_descripcion VARCHAR(50) NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimension agrupación'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_agrupacion', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Agrupacion', N'USER', N'dbo', N'TABLE', N'dw_agrupacion', N'COLUMN', N'agr_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Vigencia', N'USER', N'dbo', N'TABLE', N'dw_agrupacion', N'COLUMN', N'af_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de agrupaciones', N'USER', N'dbo', N'TABLE', N'dw_agrupacion', N'COLUMN', N'agr_codigo_grp'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Agrupación', N'USER', N'dbo', N'TABLE', N'dw_agrupacion', N'COLUMN', N'agr_descripcion'
GO

CREATE TABLE dw_causasiniestro(
  cs_codigo_id INTEGER NOT NULL,
  cs_descripcion VARCHAR(50) NOT NULL,
  cs_codigo_casi_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión causas de siniestros'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_causasiniestro', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo causa de siniestro', N'USER', N'dbo', N'TABLE', N'dw_causasiniestro', N'COLUMN', N'cs_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción de la causa de siniestro en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_causasiniestro', N'COLUMN', N'cs_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de la causa de siniestro en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_causasiniestro', N'COLUMN', N'cs_codigo_casi_id'
GO

CREATE TABLE dw_causarechazo(
  cr_codigo_id INTEGER NOT NULL,
  cr_descripcion VARCHAR(50) NOT NULL,
  cr_codigo_care_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión causas de rechazos'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_causarechazo', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Causa de rechazo', N'USER', N'dbo', N'TABLE', N'dw_causarechazo', N'COLUMN', N'cr_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción de la causa de rechazo en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_causarechazo', N'COLUMN', N'cr_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de la causa rechazo en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_causarechazo', N'COLUMN', N'cr_codigo_care_id'
GO

CREATE TABLE dw_estatussiniestro(
  es_codigo_id INTEGER NOT NULL,
  es_descripcion VARCHAR(50) NOT NULL,
  es_codigo_essi_id INTEGER NOT NULL,
  es_estatus VARCHAR(10) NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión estatus de siniestros'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_estatussiniestro', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Estatus de Siniestros', N'USER', N'dbo', N'TABLE', N'dw_estatussiniestro', N'COLUMN', N'es_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Descripción del estatus de siniestro en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_estatussiniestro', N'COLUMN', N'es_descripcion'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código del estatus siniestro en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_estatussiniestro', N'COLUMN', N'es_codigo_essi_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Situación de Estatus', N'USER', N'dbo', N'TABLE', N'dw_estatussiniestro', N'COLUMN', N'es_estatus'
GO

CREATE TABLE dw_moneda(
  mo_codigo_id INTEGER NOT NULL,
  mo_simbolo VARCHAR(24) NOT NULL,
  mo_codigo_mone_id INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión moneda'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_moneda', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo de la moneda', N'USER', N'dbo', N'TABLE', N'dw_moneda', N'COLUMN', N'mo_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Símbolo de la moneda en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_moneda', N'COLUMN', N'mo_simbolo'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de la moneda en el iSeries', N'USER', N'dbo', N'TABLE', N'dw_moneda', N'COLUMN', N'mo_codigo_mone_id'
GO

CREATE TABLE dw_poliza(
  po_codigo_id INTEGER NOT NULL,
  po_numero VARCHAR(15) NOT NULL,
  po_compania INTEGER NOT NULL,
  po_ramo INTEGER NOT NULL,
  po_certificado INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Dimensión póliza'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_poliza', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'ID Póliza', N'USER', N'dbo', N'TABLE', N'dw_poliza', N'COLUMN', N'po_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Número de póliza', N'USER', N'dbo', N'TABLE', N'dw_poliza', N'COLUMN', N'po_numero'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Número de compañía de seguro', N'USER', N'dbo', N'TABLE', N'dw_poliza', N'COLUMN', N'po_compania'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Código de ramo', N'USER', N'dbo', N'TABLE', N'dw_poliza', N'COLUMN', N'po_ramo'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Número de certificado', N'USER', N'dbo', N'TABLE', N'dw_poliza', N'COLUMN', N'po_certificado'
GO

CREATE TABLE dw_siniestros(
  dw_codigo_id INTEGER NOT NULL,
  un_codigo_id INTEGER NOT NULL,
  agr_codigo_id INTEGER NOT NULL,
  as_codigo_id INTEGER NOT NULL,
  po_codigo_id INTEGER NOT NULL,
  ra_codigo_id INTEGER NOT NULL,
  mo_codigo_id INTEGER NOT NULL,
  cs_codigo_id INTEGER NOT NULL,
  cr_codigo_id INTEGER NOT NULL,
  es_codigo_id INTEGER NOT NULL,
  ug_codigo_id INTEGER NOT NULL,
  ep_codigo_id INTEGER NOT NULL,
  ti_codigo_id INTEGER NOT NULL,
  dw_pagado FLOAT NOT NULL,
  dw_pagado_parcial FLOAT NOT NULL,
  dw_pendiente_pago FLOAT NOT NULL,
  dw_prima FLOAT NOT NULL,
  dw_psiniestralidad FLOAT NOT NULL,
  dw_tasa_cambio FLOAT NOT NULL,
  dw_nivel INTEGER NOT NULL,
  dw_poliza_agrupadora VARCHAR(15) NOT NULL,
  dw_codigo_sini_id INTEGER NOT NULL,
  dw_monto_ajustado FLOAT NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Tabla de Hechos de Siniestros'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_siniestros', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Movimiento de Siniestros', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Unidad de Negocio', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'un_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Agrupaciones', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'agr_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Asegurado', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'as_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Numero de póliza', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'po_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Ramo', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'ra_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Moneda', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'mo_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Causa de Siniestro', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'cs_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Causa de Rechazo', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'cr_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Estatus de Siniestros', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'es_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Ubicación Geográfica', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'ug_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Estatus de Pago', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'ep_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Tiempo', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'ti_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Pagado', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_pagado'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Parcialmente Pagado', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_pagado_parcial'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Pendiente de Pago', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_pendiente_pago'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Prima', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_prima'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'% Siniestralidad', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_psiniestralidad'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Tasa', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_tasa_cambio'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Nivel', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_nivel'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Póliza Agrupadora', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_poliza_agrupadora'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Número de Siniestro', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_codigo_sini_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Ajustado', N'USER', N'dbo', N'TABLE', N'dw_siniestros', N'COLUMN', N'dw_monto_ajustado'
GO

CREATE TABLE dw_aniofiscal(
  af_codigo_id INTEGER NOT NULL,
  af_periodo_fiscal VARCHAR(9) NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Tabla maestro transaccional vigencia'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_aniofiscal', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'ID Vigencia', N'USER', N'dbo', N'TABLE', N'dw_aniofiscal', N'COLUMN', N'af_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Periodo asociado al año fiscal', N'USER', N'dbo', N'TABLE', N'dw_aniofiscal', N'COLUMN', N'af_periodo_fiscal'
GO

CREATE TABLE dw_siniestralidad(
  dw_codigo_id INTEGER NOT NULL,
  un_codigo_id INTEGER NOT NULL,
  agr_codigo_id INTEGER NOT NULL,
  as_codigo_id INTEGER NOT NULL,
  po_codigo_id INTEGER NOT NULL,
  ra_codigo_id INTEGER NOT NULL,
  mo_codigo_id INTEGER NOT NULL,
  af_codigo_id INTEGER NOT NULL,
  dw_prima FLOAT NOT NULL,
  dw_pagado FLOAT NOT NULL,
  dw_pagado_parcial FLOAT NOT NULL,
  dw_pendiente_pago FLOAT NOT NULL,
  dw_monto_ajustado FLOAT NOT NULL,
  dw_tasa_cambio FLOAT NOT NULL,
  dw_psiniestralidad FLOAT NOT NULL,
  dw_nivel INTEGER NOT NULL
);
DECLARE @v sql_variant
SET @v = N'Tabla de Hechos de Siniestralidad'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', NULL, NULL
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Siniestralidad', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Unidad de Negocio', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'un_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Agrupaciones', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'agr_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Asegurado', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'as_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Numero de póliza', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'po_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Codigo Ramo', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'ra_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Moneda', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'mo_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Tiempo', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'af_codigo_id'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Prima', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_prima'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Pagado', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_pagado'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Parcialmente Pagado', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_pagado_parcial'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Pendiente de Pago', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_pendiente_pago'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Monto Ajustado', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_monto_ajustado'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Tasa', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_tasa_cambio'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'% Siniestralidad', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_psiniestralidad'
GO
EXECUTE sp_addextendedproperty N'MS_Description', N'Nivel', N'USER', N'dbo', N'TABLE', N'dw_siniestralidad', N'COLUMN', N'dw_nivel'
GO


ALTER TABLE dw_ubicaciongeografica ADD PRIMARY KEY (ug_codigo_id);

ALTER TABLE dw_tiempo ADD PRIMARY KEY (ti_codigo_id);

ALTER TABLE dw_estatuspago ADD PRIMARY KEY (ep_codigo_id);

ALTER TABLE dw_unidadnegocio ADD PRIMARY KEY (un_codigo_id);

ALTER TABLE dw_asegurado ADD PRIMARY KEY (as_codigo_id);

ALTER TABLE dw_ramo ADD PRIMARY KEY (ra_codigo_id);

ALTER TABLE dw_agrupacion ADD PRIMARY KEY (agr_codigo_id);

ALTER TABLE dw_causasiniestro ADD PRIMARY KEY (cs_codigo_id);

ALTER TABLE dw_causarechazo ADD PRIMARY KEY (cr_codigo_id);

ALTER TABLE dw_estatussiniestro ADD PRIMARY KEY (es_codigo_id);

ALTER TABLE dw_moneda ADD PRIMARY KEY (mo_codigo_id);

ALTER TABLE dw_poliza ADD PRIMARY KEY (po_codigo_id);

ALTER TABLE dw_siniestros ADD PRIMARY KEY (dw_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_0 FOREIGN KEY (ug_codigo_id) REFERENCES dw_ubicaciongeografica (ug_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_1 FOREIGN KEY (ti_codigo_id) REFERENCES dw_tiempo (ti_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_2 FOREIGN KEY (ep_codigo_id) REFERENCES dw_estatuspago (ep_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_3 FOREIGN KEY (un_codigo_id) REFERENCES dw_unidadnegocio (un_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_4 FOREIGN KEY (as_codigo_id) REFERENCES dw_asegurado (as_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_5 FOREIGN KEY (ra_codigo_id) REFERENCES dw_ramo (ra_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_6 FOREIGN KEY (agr_codigo_id) REFERENCES dw_agrupacion (agr_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_7 FOREIGN KEY (cs_codigo_id) REFERENCES dw_causasiniestro (cs_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_8 FOREIGN KEY (cr_codigo_id) REFERENCES dw_causarechazo (cr_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_9 FOREIGN KEY (es_codigo_id) REFERENCES dw_estatussiniestro (es_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_10 FOREIGN KEY (mo_codigo_id) REFERENCES dw_moneda (mo_codigo_id);
ALTER TABLE dw_siniestros ADD CONSTRAINT FK_dw_siniestros_11 FOREIGN KEY (po_codigo_id) REFERENCES dw_poliza (po_codigo_id);

ALTER TABLE dw_aniofiscal ADD PRIMARY KEY (af_codigo_id);

ALTER TABLE dw_siniestralidad ADD PRIMARY KEY (dw_codigo_id);
ALTER TABLE dw_siniestralidad ADD CONSTRAINT FK_dw_siniestralidad_0 FOREIGN KEY (af_codigo_id) REFERENCES dw_aniofiscal (af_codigo_id);

