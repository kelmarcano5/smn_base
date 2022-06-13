CREATE TABLE smn_base.smn_modulos(
  smn_modulos_id INTEGER NOT NULL,
  mod_empresa INTEGER NOT NULL,
  mod_codigo VARCHAR(16) NOT NULL,
  mod_nombre VARCHAR(48) NOT NULL,
  mod_idioma CHARACTER(2) NOT NULL,
  mod_usuario VARCHAR(10) NOT NULL,
  mod_fecha_registro DATE NOT NULL,
  mod_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_modulos;


CREATE TABLE smn_base.smn_clase_auxiliar(
  smn_clase_auxiliar_id INTEGER NOT NULL,
  cla_codigo VARCHAR(16) NOT NULL,
  cla_nombre VARCHAR(48) NOT NULL,
  cla_modulo INTEGER NOT NULL,
  cla_naturaleza INTEGER NOT NULL,
  cla_idioma CHARACTER(2) NOT NULL,
  cla_usuario VARCHAR(10) NOT NULL,
  cla_fecha_registro DATE NOT NULL,
  cla_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_clase_auxiliar;


CREATE TABLE smn_base.smn_auxiliar_categoria(
  smn_auxiliar_categoria_id INTEGER NOT NULL,
  aca_clase_auxiliar INTEGER NOT NULL,
  aca_tipo_persona CHARACTER(2) NOT NULL,
  aca_empresa INTEGER,
  aca_sucursal INTEGER,
  aca_unidad_negocio INTEGER,
  aca_area_servicio INTEGER,
  aca_unidad_servicio INTEGER,
  aca_idioma CHARACTER(2) NOT NULL,
  aca_usuario VARCHAR(10) NOT NULL,
  aca_fecha_registro DATE NOT NULL,
  aca_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_categoria;


CREATE TABLE smn_base.smn_naturaleza_auxiliar(
  smn_naturaleza_auxiliar_id INTEGER NOT NULL,
  naa_codigo VARCHAR(16) NOT NULL,
  naa_nombre VARCHAR(48) NOT NULL,
  naa_idioma CHARACTER(2) NOT NULL,
  naa_usuario VARCHAR(10) NOT NULL,
  naa_fecha_registro DATE NOT NULL,
  naa_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_naturaleza_auxiliar;


CREATE TABLE smn_base.smn_tipo_doc_oficial(
  smn_tipo_doc_oficial_id INTEGER NOT NULL,
  tdo_codigo VARCHAR(16) NOT NULL,
  tdo_descripcion VARCHAR(48) NOT NULL,
  tdo_idioma CHARACTER(2) NOT NULL,
  tdo_usuario VARCHAR(10) NOT NULL,
  tdo_fecha_registro DATE NOT NULL,
  tdo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_doc_oficial;


CREATE TABLE smn_base.smn_direccion(
  smn_direccion_id INTEGER NOT NULL,
  dir_codigo VARCHAR(16) NOT NULL,
  dir_descripcion VARCHAR(48) NOT NULL,
  dir_pais INTEGER NOT NULL,
  dir_entidad_federal INTEGER NOT NULL,
  dir_ciudad INTEGER NOT NULL,
  dir_municipio INTEGER NOT NULL,
  dir_parroquia INTEGER NOT NULL,
  dir_zona_postal INTEGER NOT NULL,
  dir_tipo_via INTEGER NOT NULL,
  dir_tipo_via_nom VARCHAR(48) NOT NULL,
  dir_tipo_via_num VARCHAR(16),
  dir_edificacion INTEGER NOT NULL,
  dir_edificacion_nom VARCHAR(48) NOT NULL,
  dir_edificacion_num VARCHAR(16),
  dir_tipo_localidad INTEGER NOT NULL,
  dir_tipo_localidad_nom VARCHAR(48),
  dir_apartado_postal VARCHAR(8),
  dir_categoria VARCHAR(48) NOT NULL,
  dir_mapa_longitud DOUBLE PRECISION,
  dir_mapa_latitud DOUBLE PRECISION,
  dir_idioma CHARACTER(2) NOT NULL,
  dir_usuario VARCHAR(10) NOT NULL,
  dir_fecha_registro DATE NOT NULL,
  dir_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_direccion;


CREATE TABLE smn_base.smn_comunidades(
  smn_comunidades_id INTEGER NOT NULL,
  cmn_codigo VARCHAR(16) NOT NULL,
  cmn_nombre VARCHAR(48) NOT NULL,
  cmn_unidad_negocio INTEGER,
  cmn_idioma CHARACTER(2) NOT NULL,
  cmn_usuario VARCHAR(10) NOT NULL,
  cmn_fecha_registro DATE NOT NULL,
  cmn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_comunidades;


CREATE TABLE smn_base.smn_auxiliar_corporaciones(
  smn_auxiliar_corporaciones_id INTEGER NOT NULL,
  tcp_codigo VARCHAR(16) NOT NULL,
  tcp_nombre VARCHAR(48) NOT NULL,
  tcp_auxiliar_unidad_negocio INTEGER,
  tcp_moneda INTEGER NOT NULL,
  tcp_direccion INTEGER NOT NULL,
  tcp_idioma CHARACTER(2) NOT NULL,
  tcp_usuario VARCHAR(10) NOT NULL,
  tcp_fecha_registro DATE NOT NULL,
  tcp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_corporaciones;


CREATE TABLE smn_base.smn_auxiliar_unidades_negocios(
  smn_auxiliar_unidades_negocios_id INTEGER NOT NULL,
  tun_codigo VARCHAR(16) NOT NULL,
  tun_nombre VARCHAR(48) NOT NULL,
  tun_responsable VARCHAR(48) NOT NULL,
  tun_direccion INTEGER NOT NULL,
  tun_telefono_fijo VARCHAR(24) NOT NULL,
  tun_telefono_movil VARCHAR(24) NOT NULL,
  tun_email VARCHAR(96) NOT NULL,
  tun_idioma CHARACTER(2) NOT NULL,
  tun_usuario VARCHAR(10) NOT NULL,
  tun_fecha_registro DATE NOT NULL,
  tun_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_unidades_negocios;


CREATE TABLE smn_base.smn_sectores_economicos(
  smn_sectores_economicos_id INTEGER NOT NULL,
  sec_codigo VARCHAR(16) NOT NULL,
  sec_descripcion VARCHAR(48) NOT NULL,
  sec_idioma CHARACTER(2) NOT NULL,
  sec_usuario VARCHAR(10) NOT NULL,
  sec_fecha_registro DATE NOT NULL,
  sec_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_sectores_economicos;


CREATE TABLE smn_base.smn_condicion_pago(
  smn_condicion_pago_id INTEGER NOT NULL,
  cop_codigo VARCHAR(16) NOT NULL,
  cop_descripcion VARCHAR(48) NOT NULL,
  cop_idioma CHARACTER(2) NOT NULL,
  cop_usuario VARCHAR(10) NOT NULL,
  cop_fecha_registro DATE NOT NULL,
  cop_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_condicion_pago;


CREATE TABLE smn_base.smn_paises(
  smn_paises_id INTEGER NOT NULL,
  pai_codigo VARCHAR(16) NOT NULL,
  pai_nombre_corto VARCHAR(24) NOT NULL,
  pai_nombre_largo VARCHAR(48) NOT NULL,
  pai_gentilicio VARCHAR(24) NOT NULL,
  pai_codigo_ddi VARCHAR(8) NOT NULL,
  pai_idioma_oficial INTEGER NOT NULL,
  pai_moneda_oficial INTEGER NOT NULL,
  pai_idioma CHARACTER(2) NOT NULL,
  pai_usuario VARCHAR(10) NOT NULL,
  pai_fecha_registro DATE NOT NULL,
  pai_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_paises;


CREATE TABLE smn_base.smn_titulo(
  smn_titulo_id INTEGER NOT NULL,
  tlo_codigo VARCHAR(16) NOT NULL,
  tlo_descripcion VARCHAR(48) NOT NULL,
  tlo_idioma CHARACTER(2) NOT NULL,
  tlo_usuario VARCHAR(10) NOT NULL,
  tlo_fecha_registro DATE NOT NULL,
  tlo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_titulo;


CREATE TABLE smn_base.smn_tipo_unidad_medida(
  smn_tipo_unidad_medida_id INTEGER NOT NULL,
  tum_codigo VARCHAR(16) NOT NULL,
  tum_descripcion VARCHAR(100) NOT NULL,
  tum_idioma CHARACTER(2) NOT NULL,
  tum_usuario VARCHAR(10) NOT NULL,
  tum_fecha_registro DATE NOT NULL,
  tum_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_unidad_medida;


CREATE TABLE smn_base.smn_unidad_medida(
  smn_unidad_medida_id INTEGER NOT NULL,
  unm_codigo VARCHAR(16) NOT NULL,
  unm_descripcion VARCHAR(100) NOT NULL,
  smn_tipo_unidad_medida_id INTEGER NOT NULL,
  unm_idioma CHARACTER(2) NOT NULL,
  unm_usuario VARCHAR(10) NOT NULL,
  unm_fecha_registro DATE NOT NULL,
  unm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidad_medida;


CREATE TABLE smn_base.smn_auxiliar(
  smn_auxiliar_id INTEGER NOT NULL,
  smn_naturaleza_auxiliar_id INTEGER NOT NULL,
  smn_clase_auxiliar_id INTEGER NOT NULL,
  aux_tipo_persona VARCHAR(2) NOT NULL,
  aux_codigo VARCHAR(16),
  aux_descripcion VARCHAR(64),
  aux_apellidos VARCHAR(64),
  aux_nombres VARCHAR(64),
  aux_denom_comercial VARCHAR(250),
  aux_razon_social VARCHAR(250),
  aux_representante_legal VARCHAR(250),
  aux_tipo_doc_oficial_rf INTEGER,
  aux_num_doc_oficial VARCHAR(12),
  aux_rif VARCHAR(16),
  aux_num_coleg_medicos VARCHAR(16),
  aux_num_minist_salud VARCHAR(16),
  aux_sexo CHARACTER(2),
  aux_estado_civil CHARACTER(2),
  aux_fecha_nac DATE,
  aux_lugar_nac VARCHAR(64),
  aux_direccion_rf INTEGER,
  aux_nacionalidad_rf BIGINT,
  aux_nacionalizado CHARACTER(2),
  aux_fecha_gaceta_nac DATE,
  aux_num_gaceta INTEGER,
  aux_afiliacion CHARACTER(2),
  aux_comunidad_rf INTEGER,
  aux_auxiliar_corporacion_rf INTEGER,
  aux_auxiliar_unidad_negocio_rf INTEGER,
  aux_sector_economico_rf INTEGER,
  aux_benef_pago VARCHAR(112),
  aux_beneficiario VARCHAR(96),
  aux_cond_pago_rf INTEGER,
  aux_condicion_financiera_rf INTEGER,
  aux_cuenta_bancaria_rf INTEGER,
  aux_maneja_sucursal CHARACTER(2),
  aux_persona_contacto VARCHAR(48),
  aux_titular_rf INTEGER,
  aux_observacion VARCHAR(96),
  aux_peso DOUBLE PRECISION,
  aux_unidad_med_peso_rf INTEGER,
  aux_estatura DOUBLE PRECISION,
  aux_unidad_med_estatura_rf INTEGER,
  aux_lateralidad CHARACTER(1),
  aux_talla_camisa DOUBLE PRECISION,
  aux_unidad_med_camisa_rf INTEGER,
  aux_talla_pantalon DOUBLE PRECISION,
  aux_unidad_med_pantalon_rf INTEGER,
  aux_talla_zapato DOUBLE PRECISION,
  aux_unidad_med_zapato_rf INTEGER,
  aux_talla_braga DOUBLE PRECISION,
  aux_unidad_med_braga_rf INTEGER,
  aux_talla_casco DOUBLE PRECISION,
  aux_unidad_med_casco_rf INTEGER,
  aux_idioma CHARACTER(2) NOT NULL,
  aux_usuario VARCHAR(10) NOT NULL,
  aux_fecha_registro DATE NOT NULL,
  aux_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar;


CREATE TABLE smn_base.smn_auxiliar_cond_financiera(
  smn_auxiliar_cond_financiera_id INTEGER NOT NULL,
  cfn_codigo VARCHAR(16) NOT NULL,
  cfn_descripcion VARCHAR(64) NOT NULL,
  smn_clase_auxiliar_id INTEGER,
  smn_auxiliar_id INTEGER,
  cfn_limite_credito DOUBLE PRECISION,
  cfn_porc_exceso_limite DOUBLE PRECISION,
  cfn_valida_saldos_vec CHARACTER(1),
  cfn_dias_adic_saldos_venc INTEGER,
  cfn_num_cheques_devuel INTEGER,
  cfn_idioma CHARACTER(2) NOT NULL,
  cfn_usuario VARCHAR(10) NOT NULL,
  cfn_fecha_registro DATE NOT NULL,
  cfn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_cond_financiera;


CREATE TABLE smn_base.smn_sucursales(
  smn_sucursales_id INTEGER NOT NULL,
  suc_empresa INTEGER NOT NULL,
  suc_codigo VARCHAR(16) NOT NULL,
  suc_nombre VARCHAR(48) NOT NULL,
  suc_unidad_negocio INTEGER,
  suc_maneja_area_servicio CHARACTER(1) NOT NULL,
  suc_responsable VARCHAR(48) NOT NULL,
  suc_direccion INTEGER NOT NULL,
  suc_telefono_fijo VARCHAR(24) NOT NULL,
  suc_telefono_movil VARCHAR(24) NOT NULL,
  suc_email VARCHAR(96) NOT NULL,
  suc_idioma CHARACTER(2) NOT NULL,
  suc_usuario VARCHAR(10) NOT NULL,
  suc_fecha_registro DATE NOT NULL,
  suc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_sucursales;


CREATE TABLE smn_base.smn_registros_usuarios(
  smn_registros_usuarios_id INTEGER NOT NULL,
  rgu_tipo_doc_oficial INTEGER NOT NULL,
  rgu_num_doc_oficial VARCHAR(12) NOT NULL,
  rgu_nro_id_fiscal VARCHAR(16) NOT NULL,
  rgu_nombres VARCHAR(32) NOT NULL,
  rgu_apellidos VARCHAR(32) NOT NULL,
  rgu_tipo_registro INTEGER NOT NULL,
  rgu_email VARCHAR(96) NOT NULL,
  rgu_idioma CHARACTER(2) NOT NULL,
  rgu_usuario VARCHAR(10) NOT NULL,
  rgu_fecha_registro DATE NOT NULL,
  rgu_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_registros_usuarios;


CREATE TABLE smn_base.smn_auxiliar_contacto(
  smn_auxiliar_contacto_id INTEGER NOT NULL,
  acn_telefono_fijo VARCHAR(24),
  acn_telefono_movil VARCHAR(24),
  acn_email VARCHAR(96),
  acn_facebook VARCHAR(96),
  acn_linkedin VARCHAR(96),
  acn_twitter VARCHAR(96),
  acn_swift VARCHAR(24),
  acn_idioma CHARACTER(2) NOT NULL,
  acn_usuario VARCHAR(10) NOT NULL,
  acn_fecha_registro DATE NOT NULL,
  acn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_contacto;


CREATE TABLE smn_base.smn_auxiliar_cuenta_bancaria(
  smn_auxiliar_cuenta_bancaria_id INTEGER NOT NULL,
  smn_clase_auxiliar_id INTEGER NOT NULL,
  smn_auxiliar_id INTEGER NOT NULL,
  acb_num_cuenta VARCHAR(24) NOT NULL,
  acb_tipo_cta_banco INTEGER NOT NULL,
  acb_respons_cuenta VARCHAR(96),
  acb_banco_pertenece INTEGER NOT NULL,
  acb_num_aba VARCHAR(24),
  acb_idioma CHARACTER(2) NOT NULL,
  acb_usuario VARCHAR(10) NOT NULL,
  acb_fecha_registro DATE NOT NULL,
  acb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_cuenta_bancaria;


CREATE TABLE smn_base.smn_idiomas(
  smn_idiomas_id INTEGER NOT NULL,
  idi_codigo VARCHAR(16) NOT NULL,
  idi_descripcion VARCHAR(48) NOT NULL,
  idi_idioma VARCHAR(2) NOT NULL,
  idi_usuario VARCHAR(10) NOT NULL,
  idi_fecha_registro DATE NOT NULL,
  idi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_idiomas;


CREATE TABLE smn_base.smn_documentos_generales(
  smn_documentos_generales_id INTEGER NOT NULL,
  dcg_codigo VARCHAR(16) NOT NULL,
  dcg_descripcion VARCHAR(48) NOT NULL,
  dcg_modulo_origen INTEGER NOT NULL,
  dcg_idioma CHARACTER(2) NOT NULL,
  dcg_usuario VARCHAR(10) NOT NULL,
  dcg_fecha_registro DATE NOT NULL,
  dcg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_documentos_generales;


CREATE TABLE smn_base.smn_medio_pago(
  smn_medio_pago_id INTEGER NOT NULL,
  mpa_codigo VARCHAR(16) NOT NULL,
  mpa_descripcion VARCHAR(48) NOT NULL,
  mpa_efectivo CHARACTER(1) NOT NULL,
  mpa_idioma CHARACTER(2) NOT NULL,
  mpa_usuario VARCHAR(10) NOT NULL,
  mpa_fecha_registro DATE NOT NULL,
  mpa_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_medio_pago;


CREATE TABLE smn_base.smn_franquicias(
  smn_franquicias_id INTEGER NOT NULL,
  fra_codigo VARCHAR(16) NOT NULL,
  fra_descripcion VARCHAR(48) NOT NULL,
  fra_idioma CHARACTER(2) NOT NULL,
  fra_usuario VARCHAR(10) NOT NULL,
  fra_fecha_registro DATE NOT NULL,
  fra_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_franquicias;


CREATE TABLE smn_base.smn_auxiliar_centro_costo(
  smn_auxiliar_centro_costo_id INTEGER NOT NULL,
  tco_codigo VARCHAR(16) NOT NULL,
  tco_descripcion_corta VARCHAR(32) NOT NULL,
  tco_descripcion_larga VARCHAR(48) NOT NULL,
  tco_clase_auxiliar INTEGER,
  tco_auxiliar INTEGER,
  tco_responsable VARCHAR(48) NOT NULL,
  tco_tipo_cco CHARACTER(2) NOT NULL,
  tco_nivel INTEGER NOT NULL,
  tco_idioma CHARACTER(2) NOT NULL,
  tco_usuario VARCHAR(10) NOT NULL,
  tco_fecha_registro DATE NOT NULL,
  tco_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_centro_costo;


CREATE TABLE smn_base.smn_auxiliar_sucursales(
  smn_auxiliar_sucursales_id INTEGER NOT NULL,
  trs_codigo VARCHAR(16) NOT NULL,
  trs_nombre VARCHAR(48) NOT NULL,
  trs_auxiliar_unidad_negocio INTEGER,
  trs_responsable VARCHAR(48) NOT NULL,
  trs_direccion INTEGER NOT NULL,
  trs_telefono_fijo VARCHAR(24) NOT NULL,
  trs_telefono_movil VARCHAR(24) NOT NULL,
  trs_email VARCHAR(96) NOT NULL,
  trs_idioma CHARACTER(2) NOT NULL,
  trs_usuario VARCHAR(10) NOT NULL,
  trs_fecha_registro DATE NOT NULL,
  trs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_sucursales;


CREATE TABLE smn_base.smn_prestadores_servicios(
  smn_prestadores_servicios_id INTEGER NOT NULL,
  prs_codigo VARCHAR(16) NOT NULL,
  prs_nombres VARCHAR(32) NOT NULL,
  prs_apellidos VARCHAR(32) NOT NULL,
  prs_area_servicio INTEGER NOT NULL,
  prs_unidad_servicio INTEGER NOT NULL,
  prs_clase_auxiliar INTEGER,
  prs_auxiliar INTEGER,
  smn_grupos_prestadores INTEGER NOT NULL,
  prs_direccion INTEGER NOT NULL,
  prs_telefono_fijo VARCHAR(24) NOT NULL,
  prs_telefono_movil VARCHAR(24) NOT NULL,
  prs_frecuencia DOUBLE PRECISION,
  prs_idioma CHARACTER(2) NOT NULL,
  prs_usuario VARCHAR(10) NOT NULL,
  prs_fecha_registro DATE NOT NULL,
  prs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestadores_servicios;


CREATE TABLE smn_base.smn_agenda(
  smn_agenda_id INTEGER NOT NULL,
  age_codigo VARCHAR(16) NOT NULL,
  age_descripcion VARCHAR(48) NOT NULL,
  age_dia_semana CHARACTER(2) NOT NULL,
  age_hora_desde CHARACTER(5) NOT NULL,
  age_jornada_desde CHARACTER(2) NOT NULL,
  age_hora_hasta CHARACTER(5) NOT NULL,
  age_jornada_hasta CHARACTER(2) NOT NULL,
  age_localidad VARCHAR(56),
  age_idioma CHARACTER(2) NOT NULL,
  age_usuario VARCHAR(10) NOT NULL,
  age_fecha_registro DATE NOT NULL,
  age_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_agenda;


CREATE TABLE smn_base.smn_prestadores_servicios_agenda(
  smn_prestadores_servicios_agenda_id INTEGER NOT NULL,
  smn_prestadores_servicios_id INTEGER NOT NULL,
  smn_agenda_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestadores_servicios_agenda;


CREATE TABLE smn_base.smn_modelos_contratos(
  smn_modelos_contratos_id INTEGER NOT NULL,
  mct_codigo VARCHAR(16) NOT NULL,
  mct_descripcion VARCHAR(500) NOT NULL,
  mct_modulo INTEGER NOT NULL,
  mct_archivo VARCHAR(400) NOT NULL,
  mct_contenido VARCHAR(150) NOT NULL,
  mct_tamano INTEGER NOT NULL,
  mct_datos BYTEA NOT NULL,
  mct_idioma CHARACTER(2) NOT NULL,
  mct_usuario VARCHAR(10) NOT NULL,
  mct_fecha_registro DATE NOT NULL,
  mct_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_modelos_contratos;


CREATE TABLE smn_base.smn_contactos(
  smn_contactos_id INTEGER NOT NULL,
  cnt_nombres VARCHAR(32) NOT NULL,
  cnt_apellidos VARCHAR(32) NOT NULL,
  cnt_email VARCHAR(96) NOT NULL,
  cnt_idioma CHARACTER(2) NOT NULL,
  cnt_usuario VARCHAR(10) NOT NULL,
  cnt_fecha_registro DATE NOT NULL,
  cnt_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_contactos;


CREATE TABLE smn_base.smn_mensajes(
  smn_mensajes_id INTEGER NOT NULL,
  msj_asunto VARCHAR(96) NOT NULL,
  msj_texto VARCHAR(5000) NOT NULL,
  msj_idioma CHARACTER(2) NOT NULL,
  msj_usuario VARCHAR(10) NOT NULL,
  msj_fecha_registro DATE NOT NULL,
  msj_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_mensajes;


CREATE TABLE smn_base.smn_mensajes_contactos(
  smn_mensajes_contactos_id INTEGER NOT NULL,
  smn_mensajes_id INTEGER NOT NULL,
  smn_contactos_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_mensajes_contactos;


CREATE TABLE smn_base.smn_respuestas(
  smn_respuestas_id INTEGER NOT NULL,
  smn_mensajes_id INTEGER NOT NULL,
  rsp_texto VARCHAR(5000) NOT NULL,
  rsp_idioma CHARACTER(2) NOT NULL,
  rsp_usuario VARCHAR(10) NOT NULL,
  rsp_fecha_registro DATE NOT NULL,
  rsp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_respuestas;


CREATE TABLE smn_base.smn_formas_pago(
  smn_formas_pago_id INTEGER NOT NULL,
  fop_codigo VARCHAR(16) NOT NULL,
  fop_descripcion VARCHAR(48) NOT NULL,
  fop_medio_pago INTEGER NOT NULL,
  fop_requiere_banco CHARACTER(1) NOT NULL,
  fop_franquicia INTEGER,
  fop_idioma CHARACTER(2) NOT NULL,
  fop_usuario VARCHAR(10) NOT NULL,
  fop_fecha_registro DATE NOT NULL,
  fop_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_formas_pago;


CREATE TABLE smn_base.smn_almacen(
  smn_almacen_id INTEGER NOT NULL,
  alm_codigo VARCHAR(16) NOT NULL,
  alm_nombre VARCHAR(48) NOT NULL,
  alm_empresa INTEGER,
  alm_unidad_negocio INTEGER,
  alm_sucursal INTEGER,
  alm_area_servicio INTEGER,
  alm_unidad_servicio INTEGER,
  alm_idioma CHARACTER(2) NOT NULL,
  alm_usuario VARCHAR(10) NOT NULL,
  alm_fecha_registro DATE NOT NULL,
  alm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_almacen;


CREATE TABLE smn_base.smn_configuracion(
  smn_configuracion_id INTEGER NOT NULL,
  cfg_descripcion VARCHAR(5000) NOT NULL,
  cfg_idioma CHARACTER(2) NOT NULL,
  cfg_usuario VARCHAR(10) NOT NULL,
  cfg_fecha_registro DATE NOT NULL,
  cfg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_configuracion;


CREATE TABLE smn_base.smn_componentes(
  smn_componentes_id INTEGER NOT NULL,
  cmp_codigo VARCHAR(16) NOT NULL,
  cmp_descripcion VARCHAR(48) NOT NULL,
  cmp_area_servicio INTEGER,
  cmp_unidad_servicio INTEGER,
  cmp_vigencia_desde DATE NOT NULL,
  cmp_vigencia_hasta DATE NOT NULL,
  cmp_visible CHARACTER(1) NOT NULL,
  cmp_req_grupo_prestador CHARACTER(1) NOT NULL,
  cmp_grupo_prestador INTEGER NOT NULL,
  cmp_req_honorario CHARACTER(1) NOT NULL,
  cmp_tiempo_estimado DOUBLE PRECISION NOT NULL,
  cmp_clase_auxiliar INTEGER,
  cmp_tipo CHARACTER(2) NOT NULL,
  cmp_almacen INTEGER,
  cmp_calculo CHARACTER(2) NOT NULL,
  cmp_cantidad DOUBLE PRECISION NOT NULL,
  cmp_precio DOUBLE PRECISION NOT NULL,
  cmp_porcentaje DOUBLE PRECISION NOT NULL,
  cmp_trans_general INTEGER NOT NULL,
  cmp_idioma CHARACTER(2) NOT NULL,
  cmp_usuario VARCHAR(10) NOT NULL,
  cmp_fecha_registro DATE NOT NULL,
  cmp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_componentes;


CREATE TABLE smn_base.smn_baremos(
  smn_baremos_id INTEGER NOT NULL,
  bar_codigo VARCHAR(16) NOT NULL,
  bar_descripcion VARCHAR(48) NOT NULL,
  bar_entidad INTEGER NOT NULL,
  bar_vigencia_desde DATE NOT NULL,
  bar_vigencia_hasta DATE NOT NULL,
  bar_idioma CHARACTER(2) NOT NULL,
  bar_usuario VARCHAR(10) NOT NULL,
  bar_fecha_registro DATE NOT NULL,
  bar_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_baremos;


CREATE TABLE smn_base.smn_baremos_detalle(
  smn_baremos_detalle_id INTEGER NOT NULL,
  smn_baremos_id INTEGER NOT NULL,
  bad_tipo CHARACTER(2) NOT NULL,
  bad_servicio INTEGER NOT NULL,
  bad_auxiliar INTEGER,
  bad_tipo_compuesto CHARACTER(2) NOT NULL,
  bad_codigo_articulo VARCHAR(16) NOT NULL,
  bad_almacen INTEGER NOT NULL,
  bad_calculo CHARACTER(2) NOT NULL,
  bad_cantidad DOUBLE PRECISION NOT NULL,
  bad_precio DOUBLE PRECISION NOT NULL,
  bad_porcentaje DOUBLE PRECISION,
  bad_inactivo CHARACTER(1) NOT NULL,
  bad_idioma CHARACTER(2) NOT NULL,
  bad_usuario VARCHAR(10) NOT NULL,
  bad_fecha_registro DATE NOT NULL,
  bad_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_baremos_detalle;


CREATE TABLE smn_base.smn_servicios(
  smn_servicios_id INTEGER NOT NULL,
  svc_codigo VARCHAR(16) NOT NULL,
  svc_descripcion VARCHAR(56) NOT NULL,
  svc_clase_auxiliar INTEGER,
  svc_tipo_servicio INTEGER NOT NULL,
  svc_area_servicio INTEGER NOT NULL,
  svc_unidad_servicio INTEGER NOT NULL,
  svc_centro_costo INTEGER,
  svc_frecuencia DOUBLE PRECISION,
  svc_precio_general DOUBLE PRECISION NOT NULL,
  svc_inactivo CHARACTER(1) NOT NULL,
  svc_req_honorario CHARACTER(1) NOT NULL,
  svc_vigencia_desde DATE NOT NULL,
  svc_vigencia_hasta DATE NOT NULL,
  svc_requisitos VARCHAR(2048),
  svc_trans_general INTEGER,
  svc_compuesto INTEGER,
  svc_idioma CHARACTER(2) NOT NULL,
  svc_usuario VARCHAR(10) NOT NULL,
  svc_fecha_registro DATE NOT NULL,
  svc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicios;


CREATE TABLE smn_base.smn_servicios_baremos(
  smn_servicios_baremos_id INTEGER NOT NULL,
  smn_servicios_id INTEGER NOT NULL,
  smn_baremos_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicios_baremos;


CREATE TABLE smn_base.smn_tipos_servicios(
  smn_tipos_servicios_id INTEGER NOT NULL,
  tsr_codigo VARCHAR(16) NOT NULL,
  tsr_descripcion VARCHAR(48) NOT NULL,
  tsr_idioma CHARACTER(2) NOT NULL,
  tsr_usuario VARCHAR(10) NOT NULL,
  tsr_fecha_registro DATE NOT NULL,
  trs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipos_servicios;


CREATE TABLE smn_base.smn_areas_servicios(
  smn_areas_servicios_id INTEGER NOT NULL,
  smn_tipos_servicios_id INTEGER NOT NULL,
  ase_codigo VARCHAR(16) NOT NULL,
  ase_descripcion VARCHAR(48) NOT NULL,
  ase_empresa INTEGER NOT NULL,
  ase_sucursal INTEGER,
  ase_unidad_negocio INTEGER,
  ase_idioma CHARACTER(2) NOT NULL,
  ase_usuario VARCHAR(10) NOT NULL,
  ase_fecha_registro DATE NOT NULL,
  ase_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_areas_servicios;


CREATE TABLE smn_base.smn_unidades_servicios(
  smn_unidades_servicios_id INTEGER NOT NULL,
  smn_areas_servicios_id INTEGER NOT NULL,
  uns_codigo VARCHAR(16) NOT NULL,
  uns_descripcion VARCHAR(48) NOT NULL,
  uns_idioma CHARACTER(2) NOT NULL,
  uns_usuario VARCHAR(10) NOT NULL,
  uns_fecha_registro DATE NOT NULL,
  uns_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidades_servicios;


CREATE TABLE smn_base.smn_feriados(
  smn_feriados_id INTEGER NOT NULL,
  fer_codigo VARCHAR(16) NOT NULL,
  fer_descripcion VARCHAR(48) NOT NULL,
  fer_pais INTEGER,
  fer_entidad_federal INTEGER,
  fer_ciudad INTEGER,
  fer_municipio INTEGER,
  fer_feriado CHARACTER(5) NOT NULL,
  fer_laborable CHARACTER(1) NOT NULL,
  fer_idioma CHARACTER(2) NOT NULL,
  fer_usuario VARCHAR(10) NOT NULL,
  fer_fecha_registro DATE NOT NULL,
  fer_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_feriados;


CREATE TABLE smn_base.smn_panel_traduccion(
  smn_panel_traduccion_id INTEGER NOT NULL,
  pat_panel INTEGER NOT NULL,
  pat_description VARCHAR(350) NOT NULL,
  pat_locale CHARACTER(2) NOT NULL,
  pat_idioma CHARACTER(2) NOT NULL,
  pat_usuario VARCHAR(10) NOT NULL,
  pat_fecha_registro DATE NOT NULL,
  pat_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_panel_traduccion;


CREATE TABLE smn_base.smn_tipo_localidad(
  smn_tipo_localidad_id INTEGER NOT NULL,
  til_codigo VARCHAR(16) NOT NULL,
  til_descripcion VARCHAR(48) NOT NULL,
  til_idioma CHARACTER(2) NOT NULL,
  til_usuario VARCHAR(10) NOT NULL,
  til_fecha_registro DATE NOT NULL,
  til_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_localidad;


CREATE TABLE smn_base.smn_edificacion(
  smn_edificacion_id INTEGER NOT NULL,
  edf_codigo VARCHAR(16) NOT NULL,
  edf_descripcion VARCHAR(48) NOT NULL,
  edf_idioma CHARACTER(2) NOT NULL,
  edf_usuario VARCHAR(10) NOT NULL,
  edf_fecha_registro DATE NOT NULL,
  edf_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_edificacion;


CREATE TABLE smn_base.smn_tipo_via(
  smn_tipo_via_id INTEGER NOT NULL,
  tiv_codigo VARCHAR(16) NOT NULL,
  tiv_descripcion VARCHAR(48) NOT NULL,
  tiv_idioma CHARACTER(2) NOT NULL,
  tiv_usuario VARCHAR(10) NOT NULL,
  tiv_fecha_registro DATE NOT NULL,
  tiv_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_via;


CREATE TABLE smn_base.smn_centro_costo(
  smn_centro_costo_id INTEGER NOT NULL,
  cco_codigo VARCHAR(16) NOT NULL,
  cco_descripcion_corta VARCHAR(24) NOT NULL,
  cco_descripcion_larga VARCHAR(48) NOT NULL,
  cco_empresa INTEGER NOT NULL,
  cco_sucursal INTEGER,
  cco_area_servicio INTEGER,
  cco_unidad_servicio INTEGER,
  cco_almacen INTEGER,
  cco_nivel CHARACTER(2) NOT NULL,
  cco_idioma CHARACTER(2) NOT NULL,
  cco_usuario VARCHAR(10) NOT NULL,
  cco_fecha_registro DATE NOT NULL,
  cco_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_centro_costo;


CREATE TABLE smn_base.smn_servicio_traduccion(
  smn_servicio_traduccion_id INTEGER NOT NULL,
  set_app_id INTEGER NOT NULL,
  set_menu_id INTEGER NOT NULL,
  set_servicio_id INTEGER NOT NULL,
  set_servicio VARCHAR(100) NOT NULL,
  set_locale CHARACTER(2) NOT NULL,
  set_idioma CHARACTER(2) NOT NULL,
  set_usuario VARCHAR(10) NOT NULL,
  set_fecha_registro DATE NOT NULL,
  set_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicio_traduccion;


CREATE TABLE smn_base.smn_menu_traduccion(
  smn_menu_traduccion_id INTEGER NOT NULL,
  mnt_app_id INTEGER NOT NULL,
  mnt_menu_id INTEGER NOT NULL,
  mnt_title VARCHAR(100) NOT NULL,
  mnt_locale CHARACTER(2) NOT NULL,
  mnt_idioma CHARACTER(2) NOT NULL,
  mnt_usuario VARCHAR(10) NOT NULL,
  mnt_fecha_registro DATE NOT NULL,
  mnt_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_menu_traduccion;


CREATE TABLE smn_base.smn_tipo_cuenta_banco(
  smn_tipo_cuenta_banco_id INTEGER NOT NULL,
  tcb_codigo VARCHAR(16) NOT NULL,
  tcb_descripcion VARCHAR(48) NOT NULL,
  tcb_idioma VARCHAR(2) NOT NULL,
  tcb_usuario VARCHAR(10) NOT NULL,
  tcb_fecha_registro DATE NOT NULL,
  tcb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_cuenta_banco;


CREATE TABLE smn_base.smn_unidades_impositivas(
  smn_unidades_impositivas_id INTEGER NOT NULL,
  uim_codigo VARCHAR(16) NOT NULL,
  uim_descripcion VARCHAR(48) NOT NULL,
  uim_moneda_referencia INTEGER NOT NULL,
  uim_idioma CHARACTER(2) NOT NULL,
  uim_usuario VARCHAR(10) NOT NULL,
  uim_fecha_registro DATE NOT NULL,
  uim_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidades_impositivas;


CREATE TABLE smn_base.smn_cuentas_bancarias(
  smn_cuentas_bancarias_id INTEGER NOT NULL,
  smn_clase_auxiliar_rf INTEGER NOT NULL,
  smn_auxiliar_rf INTEGER NOT NULL,
  acb_nro_cuenta VARCHAR(24) NOT NULL,
  acb_tipo_cta_banco INTEGER NOT NULL,
  acb_respons_cuenta VARCHAR(96),
  acb_banco_pertenece INTEGER NOT NULL,
  acb_num_aba VARCHAR(24),
  acb_idioma CHARACTER(2) NOT NULL,
  acb_usuario VARCHAR(10) NOT NULL,
  acb_fecha_registro DATE NOT NULL,
  acb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_cuentas_bancarias;


CREATE TABLE smn_base.smn_periodos(
  smn_periodos_id INTEGER NOT NULL,
  prd_codigo VARCHAR(16) NOT NULL,
  prd_descripcion VARCHAR(48) NOT NULL,
  prd_idioma CHARACTER(2) NOT NULL,
  prd_usuario VARCHAR(10) NOT NULL,
  prd_fecha_registro DATE NOT NULL,
  prd_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_periodos;


CREATE TABLE smn_base.smn_tasas_impositivas(
  smn_tasas_impositivas_id INTEGER NOT NULL,
  smn_unidades_impositivas_id INTEGER NOT NULL,
  tim_fecha_vigencia DATE NOT NULL,
  tim_valor DOUBLE PRECISION NOT NULL,
  tim_idioma CHARACTER(2) NOT NULL,
  tim_usuario VARCHAR(10) NOT NULL,
  tim_fecha_registro DATE NOT NULL,
  tim_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tasas_impositivas;


CREATE TABLE smn_base.smn_codigos_impuestos(
  smn_codigos_impuestos_id INTEGER NOT NULL,
  imp_codigo VARCHAR(16) NOT NULL,
  imp_descripcion VARCHAR(48) NOT NULL,
  imp_tipo_codigo CHARACTER(2) NOT NULL,
  imp_modalidad_registro CHARACTER(2) NOT NULL,
  imp_porcentaje_base DOUBLE PRECISION,
  imp_porcentaje_calculo DOUBLE PRECISION,
  imp_tipo_libro CHARACTER(2) NOT NULL,
  imp_tipo_persona CHARACTER(2) NOT NULL,
  imp_tipo_contribuyente CHARACTER(2) NOT NULL,
  imp_unidad_impositiva INTEGER NOT NULL,
  imp_ui_minima DOUBLE PRECISION,
  imp_ui_maxima DOUBLE PRECISION,
  imp_ui_sustraendo DOUBLE PRECISION,
  imp_monto_minimo DOUBLE PRECISION,
  imp_monto_maximo DOUBLE PRECISION,
  imp_monto_sustraendo DOUBLE PRECISION,
  imp_idioma CHARACTER(2) NOT NULL,
  imp_usuario VARCHAR(10) NOT NULL,
  imp_fecha_registro DATE NOT NULL,
  imp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_codigos_impuestos;


CREATE TABLE smn_base.smn_monedas(
  smn_monedas_id INTEGER NOT NULL,
  mon_codigo VARCHAR(16) NOT NULL,
  mon_nombre VARCHAR(48) NOT NULL,
  mon_idioma CHARACTER(2) NOT NULL,
  mon_usuario VARCHAR(10) NOT NULL,
  mon_fecha_registro DATE NOT NULL,
  mon_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_monedas;


CREATE TABLE smn_base.smn_tasas_de_cambio(
  smn_tasas_de_cambio_id INTEGER NOT NULL,
  smn_monedas_id INTEGER NOT NULL,
  tca_moneda_referencia INTEGER NOT NULL,
  tca_fecha_vigencia DATE NOT NULL,
  tca_tasa_cambio DOUBLE PRECISION NOT NULL,
  tca_idioma CHARACTER(2) NOT NULL,
  tca_usuario VARCHAR(10) NOT NULL,
  tca_fecha_registro DATE NOT NULL,
  tca_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tasas_de_cambio;


CREATE TABLE smn_base.smn_zonas_postales(
  smn_zonas_postales_id INTEGER NOT NULL,
  zpo_parroquias INTEGER NOT NULL,
  zpo_sector VARCHAR(64) NOT NULL,
  zpo_codigo VARCHAR(16) NOT NULL,
  zpo_idioma CHARACTER(2) NOT NULL,
  zpo_usuario VARCHAR(10) NOT NULL,
  zpo_fecha_registro DATE NOT NULL,
  zpo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_zonas_postales;


CREATE TABLE smn_base.smn_entidades_financieras(
  smn_entidades_financieras_id INTEGER NOT NULL,
  efi_codigo VARCHAR(16) NOT NULL,
  efi_nombre VARCHAR(48) NOT NULL,
  efi_direccion INTEGER NOT NULL,
  efi_telefono_fijo VARCHAR(24) NOT NULL,
  efi_telefono_movil VARCHAR(24) NOT NULL,
  efi_codigo_aba VARCHAR(24),
  efi_codigo_swift VARCHAR(24),
  efi_req_banco_intermediario CHARACTER(1) NOT NULL,
  efi_banco_intermediario INTEGER,
  efi_routing VARCHAR(24),
  efi_contacto VARCHAR(48),
  efi_idioma CHARACTER(2) NOT NULL,
  efi_usuario VARCHAR(10) NOT NULL,
  efi_fecha_registro DATE NOT NULL,
  efi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_entidades_financieras;


CREATE TABLE smn_base.smn_unidades_negocios(
  smn_unidades_negocios_id INTEGER NOT NULL,
  uen_codigo VARCHAR(16) NOT NULL,
  uen_nombre VARCHAR(48) NOT NULL,
  uen_responsable VARCHAR(48) NOT NULL,
  uen_direccion INTEGER NOT NULL,
  uen_telefono_fijo VARCHAR(24) NOT NULL,
  uen_telefono_movil VARCHAR(24) NOT NULL,
  uen_email VARCHAR(96) NOT NULL,
  uen_idioma CHARACTER(2) NOT NULL,
  uen_usuario VARCHAR(10) NOT NULL,
  uen_fecha_registro DATE NOT NULL,
  uen_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidades_negocios;


CREATE TABLE smn_base.smn_corporaciones(
  smn_corporaciones_id INTEGER NOT NULL,
  crp_codigo VARCHAR(16) NOT NULL,
  crp_nombre VARCHAR(48) NOT NULL,
  crp_unidad_negocio INTEGER,
  crp_moneda INTEGER NOT NULL,
  crp_direccion INTEGER,
  crp_idioma CHARACTER(2) NOT NULL,
  crp_usuario VARCHAR(10) NOT NULL,
  crp_fecha_registro DATE NOT NULL,
  crp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_corporaciones;


CREATE TABLE smn_base.smn_ciudades(
  smn_ciudades_id INTEGER NOT NULL,
  ciu_entidades_federales INTEGER NOT NULL,
  ciu_codigo VARCHAR(16) NOT NULL,
  ciu_nombre_corto VARCHAR(24) NOT NULL,
  ciu_nombre_largo VARCHAR(48) NOT NULL,
  ciu_idioma CHARACTER(2) NOT NULL,
  ciu_usuario VARCHAR(10) NOT NULL,
  ciu_fecha_registro DATE NOT NULL,
  ciu_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_ciudades;


CREATE TABLE smn_base.smn_entidades_federales(
  smn_entidades_federales_id INTEGER NOT NULL,
  efe_paises INTEGER NOT NULL,
  efe_codigo VARCHAR(16) NOT NULL,
  efe_nombre_corto VARCHAR(24) NOT NULL,
  efe_nombre_largo VARCHAR(48) NOT NULL,
  efe_idioma CHARACTER(2) NOT NULL,
  efe_usuario VARCHAR(10) NOT NULL,
  efe_fecha_registro DATE NOT NULL,
  efe_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_entidades_federales;


CREATE TABLE smn_base.smn_entidades(
  smn_entidades_id INTEGER NOT NULL,
  ent_codigo VARCHAR(16) NOT NULL,
  ent_comunidad INTEGER,
  ent_corporacion INTEGER,
  ent_unidad_negocio INTEGER,
  ent_maneja_sucursal CHARACTER(1) NOT NULL,
  ent_moneda INTEGER NOT NULL,
  ent_sector_economico INTEGER,
  ent_descripcion_corta VARCHAR(24) NOT NULL,
  ent_descripcion_larga VARCHAR(56) NOT NULL,
  ent_nro_id_fiscal VARCHAR(12) NOT NULL,
  ent_direccion INTEGER NOT NULL,
  ent_contacto VARCHAR(56) NOT NULL,
  ent_telefono_fijo VARCHAR(24) NOT NULL,
  ent_telefono_movil VARCHAR(24),
  ent_email VARCHAR(96) NOT NULL,
  ent_act_economica VARCHAR(1024) NOT NULL,
  ent_idioma CHARACTER(2) NOT NULL,
  ent_usuario VARCHAR(10) NOT NULL,
  ent_fecha_registro DATE NOT NULL,
  ent_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_entidades;


CREATE TABLE smn_base.smn_periodos_detalle(
  smn_periodos_detalle_id INTEGER NOT NULL,
  smn_periodos_id INTEGER NOT NULL,
  pdl_num_periodo INTEGER NOT NULL,
  pdl_inicio_periodo CHARACTER(5) NOT NULL,
  pdl_final_periodo CHARACTER(5) NOT NULL,
  pdl_idioma CHARACTER(2) NOT NULL,
  pdl_usuario VARCHAR(10) NOT NULL,
  pdl_fecha_registro DATE NOT NULL,
  pdl_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_periodos_detalle;


CREATE TABLE smn_base.smn_transaccion_general(
  smn_transaccion_general_id INTEGER NOT NULL,
  trg_codigo VARCHAR(16) NOT NULL,
  trg_descripcion VARCHAR(48) NOT NULL,
  trg_modulo_origen INTEGER NOT NULL,
  trg_idioma CHARACTER(2) NOT NULL,
  trg_usuario VARCHAR(10) NOT NULL,
  trg_fecha_registro DATE NOT NULL,
  trg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_transaccion_general;


CREATE TABLE smn_base.smn_estructura_uen(
  smn_estructura_uen_id INTEGER NOT NULL,
  eue_aplica_uen CHARACTER(2) NOT NULL,
  eue_aplica_auxiliar_uen CHARACTER(2) NOT NULL,
  eue_idioma CHARACTER(2) NOT NULL,
  eue_usuario VARCHAR(10) NOT NULL,
  eue_fecha_registro DATE NOT NULL,
  eue_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_estructura_uen;


CREATE TABLE smn_base.smn_auxiliar_tipos_servicios(
  smn_auxiliar_tipos_servicios_id INTEGER NOT NULL,
  tts_codigo VARCHAR(16) NOT NULL,
  tts_descripcion VARCHAR(48) NOT NULL,
  tts_idioma CHARACTER(2) NOT NULL,
  tts_usuario VARCHAR(10) NOT NULL,
  tts_fecha_registro DATE NOT NULL,
  tts_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_tipos_servicios;


CREATE TABLE smn_base.smn_auxiliar_areas_servicios(
  smn_auxiliar_areas_servicios_id INTEGER NOT NULL,
  smn_auxiliar_tipos_servicios_id INTEGER NOT NULL,
  tse_codigo VARCHAR(16) NOT NULL,
  tse_descripcion VARCHAR(48) NOT NULL,
  tse_auxiliar INTEGER NOT NULL,
  tse_auxiliar_sucursal INTEGER,
  tse_auxiliar_unidad_negocio INTEGER,
  tse_idioma CHARACTER(2) NOT NULL,
  tse_usuario VARCHAR(10) NOT NULL,
  tse_fecha_registro DATE NOT NULL,
  tse_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_areas_servicios;


CREATE TABLE smn_base.smn_auxiliar_unidades_servicios(
  smn_auxiliar_unidades_servicios_id INTEGER NOT NULL,
  smn_auxiliar_areas_servicios_id INTEGER NOT NULL,
  tns_codigo VARCHAR(16) NOT NULL,
  tns_descripcion VARCHAR(48) NOT NULL,
  tns_idioma CHARACTER(2) NOT NULL,
  tns_usuario VARCHAR(10) NOT NULL,
  tns_fecha_registro DATE NOT NULL,
  tns_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_unidades_servicios;


CREATE TABLE smn_base.smn_municipios(
  smn_municipios_id INTEGER NOT NULL,
  mun_ciudades INTEGER NOT NULL,
  mun_codigo VARCHAR(16) NOT NULL,
  mun_nombre_corto VARCHAR(24) NOT NULL,
  mun_nombre_largo VARCHAR(48) NOT NULL,
  mun_idioma CHARACTER(2) NOT NULL,
  mun_usuario VARCHAR(10) NOT NULL,
  mun_fecha_registro DATE NOT NULL,
  mun_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_municipios;


CREATE TABLE smn_base.smn_parroquias(
  smn_parroquias_id INTEGER NOT NULL,
  prr_municipios INTEGER NOT NULL,
  prr_codigo VARCHAR(16) NOT NULL,
  prr_nombre_corto VARCHAR(24) NOT NULL,
  prr_nombre_largo VARCHAR(48) NOT NULL,
  prr_idioma CHARACTER(2) NOT NULL,
  prr_usuario VARCHAR(10) NOT NULL,
  prr_fecha_registro DATE NOT NULL,
  prr_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_parroquias;


CREATE TABLE smn_base.smn_grupos_prestadores(
  smn_grupos_prestadores_id INTEGER NOT NULL,
  gpp_codigo VARCHAR(16) NOT NULL,
  gpp_descripcion VARCHAR(56) NOT NULL,
  gpp_area_servicio INTEGER NOT NULL,
  gpp_unidad_servicio INTEGER NOT NULL,
  gpp_orden_atencion CHARACTER(2) NOT NULL,
  gpp_idioma CHARACTER(2) NOT NULL,
  gpp_usuario VARCHAR(10) NOT NULL,
  gpp_fecha_registro DATE NOT NULL,
  gpp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_grupos_prestadores;


CREATE TABLE smn_base.smn_especialidad(
  smn_especialidad_id INTEGER NOT NULL,
  esp_codigo VARCHAR(16) NOT NULL,
  esp_descripcion VARCHAR(48) NOT NULL,
  esp_idioma CHARACTER(2) NOT NULL,
  esp_usuario VARCHAR(10) NOT NULL,
  esp_fecha_registro DATE NOT NULL,
  esp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_especialidad;


CREATE TABLE smn_base.smn_afiliaciones(
  smn_afiliaciones_id INTEGER NOT NULL,
  afc_codigo VARCHAR(16) NOT NULL,
  afc_descripcion VARCHAR(48) NOT NULL,
  afc_afiliado INTEGER NOT NULL,
  afc_modulo INTEGER NOT NULL,
  afc_es_titular CHARACTER(1) NOT NULL,
  afc_parentezco INTEGER,
  afc_idioma CHARACTER(2) NOT NULL,
  afc_usuario VARCHAR(10) NOT NULL,
  afc_fecha_registro DATE NOT NULL,
  afc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_afiliaciones;


CREATE TABLE smn_base.smn_parentezco(
  smn_parentezco_id INTEGER NOT NULL,
  ptz_codigo VARCHAR(16) NOT NULL,
  ptz_descripcion VARCHAR(48) NOT NULL,
  ptz_idioma CHARACTER(2) NOT NULL,
  ptz_usuario VARCHAR(10) NOT NULL,
  ptz_fecha_registro DATE NOT NULL,
  ptz_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_parentezco;


CREATE TABLE smn_base.smn_transaccion_general_modulos(
  smn_transaccion_general_modulos_id INTEGER NOT NULL,
  smn_transaccion_general_id INTEGER NOT NULL,
  smn_modulos_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_transaccion_general_modulos;


CREATE TABLE smn_base.smn_tipo_registro(
  smn_tipo_registro_id INTEGER NOT NULL,
  trg_codigo VARCHAR(16) NOT NULL,
  trg_descripcion VARCHAR(64) NOT NULL,
  trg_idioma CHARACTER(2) NOT NULL,
  trg_usuario VARCHAR(10) NOT NULL,
  trg_fecha_registro DATE NOT NULL,
  trg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_registro;


CREATE TABLE smn_base.smn_ticket(
  smn_ticket_id INTEGER NOT NULL,
  tik_asunto VARCHAR(400) NOT NULL,
  tik_texto VARCHAR(5000) NOT NULL,
  tik_idioma CHARACTER(2) NOT NULL,
  tik_usuario VARCHAR(10) NOT NULL,
  tik_fecha_registro DATE NOT NULL,
  tik_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_ticket;


CREATE TABLE smn_base.smn_anexo(
  smn_anexo_id INTEGER NOT NULL,
  anx_titulo VARCHAR(100) NOT NULL,
  smn_ticket_id INTEGER,
  anx_archivo VARCHAR(250),
  anx_tipo_contenido VARCHAR(100),
  anx_tamano INTEGER,
  anx_datos_imagen BYTEA,
  anx_idioma CHARACTER(2) NOT NULL,
  anx_usuario VARCHAR(10) NOT NULL,
  anx_fecha_registro DATE NOT NULL,
  anx_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_anexo;


CREATE TABLE smn_base.smn_prestadores_servicios_especialidad(
  smn_prestadores_servicios_especialidad_id INTEGER NOT NULL,
  smn_prestadores_servicios_id INTEGER NOT NULL,
  smn_especialidad_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestadores_servicios_especialidad;


CREATE TABLE smn_base.smn_servicios_componentes(
  smn_servicios_componentes_id INTEGER NOT NULL,
  smn_servicios_id INTEGER NOT NULL,
  smn_componentes_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicios_componentes;


CREATE TABLE smn_base.smn_configuracion_estructura(
  smn_configuracion_estructura_id INTEGER NOT NULL,
  coe_codigo VARCHAR(16) NOT NULL,
  coe_nombre VARCHAR(48) NOT NULL,
  coe_niveles INTEGER NOT NULL,
  coe_mascara VARCHAR(48) NOT NULL,
  coe_separador CHARACTER(1) NOT NULL,
  coe_idioma CHARACTER(2) NOT NULL,
  coe_usuario VARCHAR(10) NOT NULL,
  coe_fecha_registro DATE NOT NULL,
  coe_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_configuracion_estructura;


CREATE TABLE smn_base.smn_estructura_organizacional(
  smn_estructura_organizacional_id INTEGER NOT NULL,
  smn_configuracion_estructura_id INTEGER NOT NULL,
  eor_codigo VARCHAR(24) NOT NULL,
  eor_nombre VARCHAR(64) NOT NULL,
  eor_centro_costo INTEGER NOT NULL,
  eor_clase_auxiliar INTEGER,
  eor_auxiliar INTEGER NOT NULL,
  eor_idioma CHARACTER(2) NOT NULL,
  eor_usuario VARCHAR(10) NOT NULL,
  eor_fecha_registro DATE NOT NULL,
  eor_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_estructura_organizacional;


CREATE TABLE smn_base.smn_panel(
  smn_panel_id INTEGER NOT NULL,
  pan_service_description VARCHAR(350) NOT NULL,
  pan_service_path VARCHAR(150) NOT NULL,
  pan_icon_path VARCHAR(200) NOT NULL,
  pan_app_id INTEGER NOT NULL,
  pan_role_id INTEGER NOT NULL,
  pan_orden INTEGER NOT NULL,
  pan_idioma CHARACTER(2) NOT NULL,
  pan_usuario VARCHAR(10) NOT NULL,
  pan_fecha_registro DATE NOT NULL,
  pan_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_panel;


CREATE TABLE smn_base.smn_item(
  smn_item_id INTEGER NOT NULL,
  itm_codigo VARCHAR(16) NOT NULL,
  itm_nombre VARCHAR(64) NOT NULL,
  itm_proveedor_exclusivo CHARACTER(2),
  smn_almacenado CHARACTER(2),
  itm_idioma CHARACTER(2) NOT NULL,
  itm_usuario VARCHAR(10) NOT NULL,
  itm_fecha_registro DATE NOT NULL,
  itm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_item;


CREATE TABLE smn_base.smn_activo_fijo(
  smn_afijo_id INTEGER NOT NULL,
  acf_codigo VARCHAR(16) NOT NULL,
  acf_nombre VARCHAR(64) NOT NULL,
  acf_proveedor_exclusivo CHARACTER(2),
  acf_idioma CHARACTER(2) NOT NULL,
  acf_usuario VARCHAR(10) NOT NULL,
  acf_fecha_registro DATE NOT NULL,
  acf_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_activo_fijo;


CREATE TABLE smn_base.smn_rel_aux_contacto(
  smn_rel_aux_contacto_id INTEGER NOT NULL,
  smn_auxiliar_id INTEGER NOT NULL,
  smn_auxiliar_contacto_rf INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_aux_contacto;


CREATE TABLE smn_base.smn_rel_aux_sucursal(
  smn_rel_aux_sucursal_id INTEGER NOT NULL,
  smn_auxiliar_id INTEGER NOT NULL,
  smn_auxiliar_sucursal_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_aux_sucursal;


CREATE TABLE smn_base.smn_rel_entidad_estructura(
  smn_rel_ent?idad_estructura_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  smn_configuracion_estructura_id INTEGER NOT NULL,
  rec_status CHARACTER(1) NOT NULL,
  rec_idioma CHARACTER(2) NOT NULL,
  rec_usuario VARCHAR(10) NOT NULL,
  rec_fecha_registro DATE NOT NULL,
  rec_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_entidad_estructura;


CREATE TABLE smn_base.smn_clasificacion_abc(
  smn_clasificacion_abc_id INTEGER NOT NULL,
  clf_codigo VARCHAR(16) NOT NULL,
  clf_descripcion VARCHAR(48) NOT NULL,
  clf_ponderacion INTEGER NOT NULL,
  clf_idioma CHARACTER(2) NOT NULL,
  clf_usuario VARCHAR(10) NOT NULL,
  clf_fecha_registro DATE NOT NULL,
  clf_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_clasificacion_abc;


CREATE TABLE smn_base.smn_proyecto(
  smn_proyecto_id INTEGER NOT NULL,
  pry_codigo VARCHAR(16) NOT NULL,
  pry_nombre VARCHAR(256) NOT NULL,
  smn_clase_auxiliar_rf INTEGER NOT NULL,
  smn_auxiliar_rf INTEGER NOT NULL,
  pry_fecha_inicio DATE NOT NULL,
  pry_fecha_fin_estimada DATE NOT NULL,
  pry_fecha_cierre DATE NOT NULL,
  pry_estatus CHARACTER(2) NOT NULL,
  pry_idioma CHARACTER(2) NOT NULL,
  pry_usuario VARCHAR(10) NOT NULL,
  pry_fecha_registro DATE NOT NULL,
  pry_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_proyecto;


CREATE TABLE smn_base.smn_contrato_base(
  smn_contrato_base_id INTEGER NOT NULL,
  ctr_codigo VARCHAR(16) NOT NULL,
  ctr_nombre VARCHAR(300) NOT NULL,
  ctr_transaccion_rf INTEGER NOT NULL,
  ctr_tipo CHARACTER(2) NOT NULL,
  ctr_consecutivo INTEGER NOT NULL,
  ctr_fecha_inicio DATE NOT NULL,
  ctr_fec_registro DATE NOT NULL,
  ctr_fecha_vencimiento DATE NOT NULL,
  ctr_dias_renovacion INTEGER NOT NULL,
  ctr_frecuencia_pago_dias INTEGER NOT NULL,
  ctr_moneda_rf INTEGER NOT NULL,
  ctr_monto_otra_moneda DOUBLE PRECISION NOT NULL,
  ctr_corporacion_rf INTEGER NOT NULL,
  ctr_empresa_rf INTEGER NOT NULL,
  ctr_sucursal_rf INTEGER NOT NULL,
  ctr_area_servicio_rf INTEGER NOT NULL,
  ctr_unidad_servicio_rf INTEGER NOT NULL,
  ctr_centro_costo_rf INTEGER NOT NULL,
  ctr_observaciones VARCHAR(250),
  ctr_vigencia CHARACTER(2) NOT NULL,
  ctr_idioma CHARACTER(2) NOT NULL,
  ctr_usuario VARCHAR(10) NOT NULL,
  ctr_fecha_registro DATE NOT NULL,
  ctr_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_contrato_base;


CREATE TABLE smn_base.smn_tipo_contactos(
  smn_tipo_contactos_id INTEGER NOT NULL,
  tco_codigo VARCHAR(10) NOT NULL,
  tco_descripcion VARCHAR(60) NOT NULL,
  tco_clase CHARACTER(2) NOT NULL,
  tco_idioma CHARACTER(2) NOT NULL,
  tco_usuario VARCHAR(10) NOT NULL,
  tco_fecha_registro DATE NOT NULL,
  tco_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_contactos;


CREATE TABLE smn_base.smn_auxiliar_contacto(
  smn_auxiliar_contacto_id INTEGER NOT NULL,
  smn_clase_auxiliar_id INTEGER NOT NULL,
  smn_auxiliar_id INTEGER NOT NULL,
  smn_tipo_contactos_id INTEGER NOT NULL,
  auc_descripcion VARCHAR(24) NOT NULL,
  auc_idioma CHARACTER(2) NOT NULL,
  auc_usuario VARCHAR(10) NOT NULL,
  auc_fecha_registro DATE NOT NULL,
  auc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_contacto;


CREATE TABLE smn_base.smn_rel_modulo_clase_aux(
  smn_rel_modulo_clase_aux_id INTEGER NOT NULL,
  smn_modulos_rf INTEGER NOT NULL,
  smn_clase_auxiliar_rf INTEGER NOT NULL,
  rma_idioma CHARACTER(2) NOT NULL,
  rma_usuario VARCHAR(10) NOT NULL,
  rma_fecha_registro DATE NOT NULL,
  rma_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_modulo_clase_aux;


CREATE TABLE smn_base.smn_auxiliar_persona_contacto(
  smn_auxiliar_persona_contacto_id INTEGER NOT NULL,
  smn_clase_auxiliar_id INTEGER NOT NULL,
  smn_auxiliar_id INTEGER NOT NULL,
  apc_apellidos VARCHAR(64) NOT NULL,
  apc_nombres VARCHAR(64) NOT NULL,
  apc_telefono_contacto VARCHAR(64),
  apc_email VARCHAR(100),
  apc_direccion VARCHAR(250),
  apc_idioma CHARACTER(2) NOT NULL,
  apc_usuario VARCHAR(10) NOT NULL,
  apc_fecha_registro DATE NOT NULL,
  apc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_persona_contacto;


CREATE TABLE smn_base.smn_rel_grupo_prestador_servicio(
  smn_rel_grupo_prestador_servicio_id INTEGER NOT NULL,
  smn_grupos_prestadores_rf INTEGER NOT NULL,
  smn_prestadores_servicios_rf INTEGER NOT NULL,
  rgp_idioma CHARACTER(2) NOT NULL,
  rgp_usuario VARCHAR(10) NOT NULL,
  rgp_fecha_registro DATE NOT NULL,
  rgp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_grupo_prestador_servicio;


CREATE TABLE smn_base.smn_rel_unid_grup_prest_contado(
  smn_rel_unid_grup_prest_contado_id INTEGER NOT NULL,
  smn_unidades_servicios_rf INTEGER NOT NULL,
  smn_grupo_prestador_rf INTEGER NOT NULL,
  smn_prestador_servicio_rf INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_rel_unid_grup_prest_contado;



ALTER TABLE smn_base.smn_modulos ADD PRIMARY KEY (smn_modulos_id);

ALTER TABLE smn_base.smn_clase_auxiliar ADD PRIMARY KEY (smn_clase_auxiliar_id);

ALTER TABLE smn_base.smn_auxiliar_categoria ADD PRIMARY KEY (smn_auxiliar_categoria_id);

ALTER TABLE smn_base.smn_naturaleza_auxiliar ADD PRIMARY KEY (smn_naturaleza_auxiliar_id);

ALTER TABLE smn_base.smn_tipo_doc_oficial ADD PRIMARY KEY (smn_tipo_doc_oficial_id);

ALTER TABLE smn_base.smn_direccion ADD PRIMARY KEY (smn_direccion_id);

ALTER TABLE smn_base.smn_comunidades ADD PRIMARY KEY (smn_comunidades_id);

ALTER TABLE smn_base.smn_auxiliar_corporaciones ADD PRIMARY KEY (smn_auxiliar_corporaciones_id);

ALTER TABLE smn_base.smn_auxiliar_unidades_negocios ADD PRIMARY KEY (smn_auxiliar_unidades_negocios_id);

ALTER TABLE smn_base.smn_sectores_economicos ADD PRIMARY KEY (smn_sectores_economicos_id);

ALTER TABLE smn_base.smn_condicion_pago ADD PRIMARY KEY (smn_condicion_pago_id);

ALTER TABLE smn_base.smn_paises ADD PRIMARY KEY (smn_paises_id);

ALTER TABLE smn_base.smn_titulo ADD PRIMARY KEY (smn_titulo_id);

ALTER TABLE smn_base.smn_tipo_unidad_medida ADD PRIMARY KEY (smn_tipo_unidad_medida_id);

ALTER TABLE smn_base.smn_unidad_medida ADD PRIMARY KEY (smn_unidad_medida_id);
ALTER TABLE smn_base.smn_unidad_medida ADD CONSTRAINT FK_smn_unidad_medida_0 FOREIGN KEY (smn_tipo_unidad_medida_id) REFERENCES smn_base.smn_tipo_unidad_medida (smn_tipo_unidad_medida_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_auxiliar ADD PRIMARY KEY (smn_auxiliar_id);
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_0 FOREIGN KEY (smn_naturaleza_auxiliar_id) REFERENCES smn_base.smn_naturaleza_auxiliar (smn_naturaleza_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_1 FOREIGN KEY (smn_clase_auxiliar_id) REFERENCES smn_base.smn_clase_auxiliar (smn_clase_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_2 FOREIGN KEY (aux_tipo_doc_oficial_rf) REFERENCES smn_base.smn_tipo_doc_oficial (smn_tipo_doc_oficial_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_3 FOREIGN KEY (aux_direccion_rf) REFERENCES smn_base.smn_direccion (smn_direccion_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_4 FOREIGN KEY (aux_comunidad_rf) REFERENCES smn_base.smn_comunidades (smn_comunidades_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_5 FOREIGN KEY (aux_auxiliar_corporacion_rf) REFERENCES smn_base.smn_auxiliar_corporaciones (smn_auxiliar_corporaciones_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_6 FOREIGN KEY (aux_auxiliar_unidad_negocio_rf) REFERENCES smn_base.smn_auxiliar_unidades_negocios (smn_auxiliar_unidades_negocios_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_7 FOREIGN KEY (aux_sector_economico_rf) REFERENCES smn_base.smn_sectores_economicos (smn_sectores_economicos_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_8 FOREIGN KEY (aux_cond_pago_rf) REFERENCES smn_base.smn_condicion_pago (smn_condicion_pago_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_9 FOREIGN KEY (aux_nacionalidad_rf) REFERENCES smn_base.smn_paises (smn_paises_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_10 FOREIGN KEY (aux_titular_rf) REFERENCES smn_base.smn_titulo (smn_titulo_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar ADD CONSTRAINT FK_smn_auxiliar_11 FOREIGN KEY (aux_unidad_med_peso_rf) REFERENCES smn_base.smn_unidad_medida (smn_unidad_medida_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_auxiliar_cond_financiera ADD PRIMARY KEY (smn_auxiliar_cond_financiera_id);
ALTER TABLE smn_base.smn_auxiliar_cond_financiera ADD CONSTRAINT FK_smn_auxiliar_cond_financiera_0 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar_cond_financiera ADD CONSTRAINT FK_smn_auxiliar_cond_financiera_1 FOREIGN KEY (smn_clase_auxiliar_id) REFERENCES smn_base.smn_clase_auxiliar (smn_clase_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_sucursales ADD PRIMARY KEY (smn_sucursales_id);

ALTER TABLE smn_base.smn_registros_usuarios ADD PRIMARY KEY (smn_registros_usuarios_id);

ALTER TABLE smn_base.smn_auxiliar_contacto ADD PRIMARY KEY (smn_auxiliar_contacto_id);

ALTER TABLE smn_base.smn_auxiliar_cuenta_bancaria ADD PRIMARY KEY (smn_auxiliar_cuenta_bancaria_id);
ALTER TABLE smn_base.smn_auxiliar_cuenta_bancaria ADD CONSTRAINT FK_smn_auxiliar_cuenta_bancaria_0 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar_cuenta_bancaria ADD CONSTRAINT FK_smn_auxiliar_cuenta_bancaria_1 FOREIGN KEY (smn_clase_auxiliar_id) REFERENCES smn_base.smn_clase_auxiliar (smn_clase_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_idiomas ADD PRIMARY KEY (smn_idiomas_id);

ALTER TABLE smn_base.smn_documentos_generales ADD PRIMARY KEY (smn_documentos_generales_id);

ALTER TABLE smn_base.smn_medio_pago ADD PRIMARY KEY (smn_medio_pago_id);

ALTER TABLE smn_base.smn_franquicias ADD PRIMARY KEY (smn_franquicias_id);

ALTER TABLE smn_base.smn_auxiliar_centro_costo ADD PRIMARY KEY (smn_auxiliar_centro_costo_id);

ALTER TABLE smn_base.smn_auxiliar_sucursales ADD PRIMARY KEY (smn_auxiliar_sucursales_id);

ALTER TABLE smn_base.smn_prestadores_servicios ADD PRIMARY KEY (smn_prestadores_servicios_id);

ALTER TABLE smn_base.smn_agenda ADD PRIMARY KEY (smn_agenda_id);

ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD PRIMARY KEY (smn_prestadores_servicios_agenda_id);
ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD CONSTRAINT FK_smn_prestadores_servicios_agenda_0 FOREIGN KEY (smn_prestadores_servicios_id) REFERENCES smn_base.smn_prestadores_servicios (smn_prestadores_servicios_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD CONSTRAINT FK_smn_prestadores_servicios_agenda_1 FOREIGN KEY (smn_agenda_id) REFERENCES smn_base.smn_agenda (smn_agenda_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_modelos_contratos ADD PRIMARY KEY (smn_modelos_contratos_id);

ALTER TABLE smn_base.smn_contactos ADD PRIMARY KEY (smn_contactos_id);

ALTER TABLE smn_base.smn_mensajes ADD PRIMARY KEY (smn_mensajes_id);

ALTER TABLE smn_base.smn_mensajes_contactos ADD PRIMARY KEY (smn_mensajes_contactos_id);
ALTER TABLE smn_base.smn_mensajes_contactos ADD CONSTRAINT FK_smn_mensajes_contactos_0 FOREIGN KEY (smn_contactos_id) REFERENCES smn_base.smn_contactos (smn_contactos_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_mensajes_contactos ADD CONSTRAINT FK_smn_mensajes_contactos_1 FOREIGN KEY (smn_mensajes_id) REFERENCES smn_base.smn_mensajes (smn_mensajes_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_respuestas ADD PRIMARY KEY (smn_respuestas_id);
ALTER TABLE smn_base.smn_respuestas ADD CONSTRAINT FK_smn_respuestas_0 FOREIGN KEY (smn_mensajes_id) REFERENCES smn_base.smn_mensajes (smn_mensajes_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_formas_pago ADD PRIMARY KEY (smn_formas_pago_id);

ALTER TABLE smn_base.smn_almacen ADD PRIMARY KEY (smn_almacen_id);

ALTER TABLE smn_base.smn_configuracion ADD PRIMARY KEY (smn_configuracion_id);

ALTER TABLE smn_base.smn_componentes ADD PRIMARY KEY (smn_componentes_id);

ALTER TABLE smn_base.smn_baremos ADD PRIMARY KEY (smn_baremos_id);

ALTER TABLE smn_base.smn_baremos_detalle ADD PRIMARY KEY (smn_baremos_detalle_id);
ALTER TABLE smn_base.smn_baremos_detalle ADD CONSTRAINT FK_smn_baremos_detalle_0 FOREIGN KEY (smn_baremos_id) REFERENCES smn_base.smn_baremos (smn_baremos_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_servicios ADD PRIMARY KEY (smn_servicios_id);

ALTER TABLE smn_base.smn_servicios_baremos ADD PRIMARY KEY (smn_servicios_baremos_id);
ALTER TABLE smn_base.smn_servicios_baremos ADD CONSTRAINT FK_smn_servicios_baremos_0 FOREIGN KEY (smn_baremos_id) REFERENCES smn_base.smn_baremos (smn_baremos_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_servicios_baremos ADD CONSTRAINT FK_smn_servicios_baremos_1 FOREIGN KEY (smn_servicios_id) REFERENCES smn_base.smn_servicios (smn_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_tipos_servicios ADD PRIMARY KEY (smn_tipos_servicios_id);

ALTER TABLE smn_base.smn_areas_servicios ADD PRIMARY KEY (smn_areas_servicios_id);
ALTER TABLE smn_base.smn_areas_servicios ADD CONSTRAINT FK_smn_areas_servicios_0 FOREIGN KEY (smn_tipos_servicios_id) REFERENCES smn_base.smn_tipos_servicios (smn_tipos_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_unidades_servicios ADD PRIMARY KEY (smn_unidades_servicios_id);
ALTER TABLE smn_base.smn_unidades_servicios ADD CONSTRAINT FK_smn_unidades_servicios_0 FOREIGN KEY (smn_areas_servicios_id) REFERENCES smn_base.smn_areas_servicios (smn_areas_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_feriados ADD PRIMARY KEY (smn_feriados_id);

ALTER TABLE smn_base.smn_panel_traduccion ADD PRIMARY KEY (smn_panel_traduccion_id);

ALTER TABLE smn_base.smn_tipo_localidad ADD PRIMARY KEY (smn_tipo_localidad_id);

ALTER TABLE smn_base.smn_edificacion ADD PRIMARY KEY (smn_edificacion_id);

ALTER TABLE smn_base.smn_tipo_via ADD PRIMARY KEY (smn_tipo_via_id);

ALTER TABLE smn_base.smn_centro_costo ADD PRIMARY KEY (smn_centro_costo_id);

ALTER TABLE smn_base.smn_servicio_traduccion ADD PRIMARY KEY (smn_servicio_traduccion_id);

ALTER TABLE smn_base.smn_menu_traduccion ADD PRIMARY KEY (smn_menu_traduccion_id);

ALTER TABLE smn_base.smn_tipo_cuenta_banco ADD PRIMARY KEY (smn_tipo_cuenta_banco_id);

ALTER TABLE smn_base.smn_unidades_impositivas ADD PRIMARY KEY (smn_unidades_impositivas_id);

ALTER TABLE smn_base.smn_cuentas_bancarias ADD PRIMARY KEY (smn_cuentas_bancarias_id);

ALTER TABLE smn_base.smn_periodos ADD PRIMARY KEY (smn_periodos_id);

ALTER TABLE smn_base.smn_tasas_impositivas ADD PRIMARY KEY (smn_tasas_impositivas_id);
ALTER TABLE smn_base.smn_tasas_impositivas ADD CONSTRAINT FK_smn_tasas_impositivas_0 FOREIGN KEY (smn_unidades_impositivas_id) REFERENCES smn_base.smn_unidades_impositivas (smn_unidades_impositivas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_codigos_impuestos ADD PRIMARY KEY (smn_codigos_impuestos_id);

ALTER TABLE smn_base.smn_monedas ADD PRIMARY KEY (smn_monedas_id);

ALTER TABLE smn_base.smn_tasas_de_cambio ADD PRIMARY KEY (smn_tasas_de_cambio_id);
ALTER TABLE smn_base.smn_tasas_de_cambio ADD CONSTRAINT FK_smn_tasas_de_cambio_0 FOREIGN KEY (smn_monedas_id) REFERENCES smn_base.smn_monedas (smn_monedas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_zonas_postales ADD PRIMARY KEY (smn_zonas_postales_id);

ALTER TABLE smn_base.smn_entidades_financieras ADD PRIMARY KEY (smn_entidades_financieras_id);

ALTER TABLE smn_base.smn_unidades_negocios ADD PRIMARY KEY (smn_unidades_negocios_id);

ALTER TABLE smn_base.smn_corporaciones ADD PRIMARY KEY (smn_corporaciones_id);

ALTER TABLE smn_base.smn_ciudades ADD PRIMARY KEY (smn_ciudades_id);

ALTER TABLE smn_base.smn_entidades_federales ADD PRIMARY KEY (smn_entidades_federales_id);

ALTER TABLE smn_base.smn_entidades ADD PRIMARY KEY (smn_entidades_id);

ALTER TABLE smn_base.smn_periodos_detalle ADD PRIMARY KEY (smn_periodos_detalle_id);
ALTER TABLE smn_base.smn_periodos_detalle ADD CONSTRAINT FK_smn_periodos_detalle_0 FOREIGN KEY (smn_periodos_id) REFERENCES smn_base.smn_periodos (smn_periodos_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_transaccion_general ADD PRIMARY KEY (smn_transaccion_general_id);

ALTER TABLE smn_base.smn_estructura_uen ADD PRIMARY KEY (smn_estructura_uen_id);

ALTER TABLE smn_base.smn_auxiliar_tipos_servicios ADD PRIMARY KEY (smn_auxiliar_tipos_servicios_id);

ALTER TABLE smn_base.smn_auxiliar_areas_servicios ADD PRIMARY KEY (smn_auxiliar_areas_servicios_id);
ALTER TABLE smn_base.smn_auxiliar_areas_servicios ADD CONSTRAINT FK_smn_auxiliar_areas_servicios_0 FOREIGN KEY (smn_auxiliar_tipos_servicios_id) REFERENCES smn_base.smn_auxiliar_tipos_servicios (smn_auxiliar_tipos_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_auxiliar_unidades_servicios ADD PRIMARY KEY (smn_auxiliar_unidades_servicios_id);
ALTER TABLE smn_base.smn_auxiliar_unidades_servicios ADD CONSTRAINT FK_smn_auxiliar_unidades_servicios_0 FOREIGN KEY (smn_auxiliar_areas_servicios_id) REFERENCES smn_base.smn_auxiliar_areas_servicios (smn_auxiliar_areas_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_municipios ADD PRIMARY KEY (smn_municipios_id);

ALTER TABLE smn_base.smn_parroquias ADD PRIMARY KEY (smn_parroquias_id);

ALTER TABLE smn_base.smn_grupos_prestadores ADD PRIMARY KEY (smn_grupos_prestadores_id);

ALTER TABLE smn_base.smn_especialidad ADD PRIMARY KEY (smn_especialidad_id);

ALTER TABLE smn_base.smn_afiliaciones ADD PRIMARY KEY (smn_afiliaciones_id);

ALTER TABLE smn_base.smn_parentezco ADD PRIMARY KEY (smn_parentezco_id);

ALTER TABLE smn_base.smn_transaccion_general_modulos ADD PRIMARY KEY (smn_transaccion_general_modulos_id);
ALTER TABLE smn_base.smn_transaccion_general_modulos ADD CONSTRAINT FK_smn_transaccion_general_modulos_0 FOREIGN KEY (smn_transaccion_general_id) REFERENCES smn_base.smn_transaccion_general (smn_transaccion_general_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_transaccion_general_modulos ADD CONSTRAINT FK_smn_transaccion_general_modulos_1 FOREIGN KEY (smn_modulos_id) REFERENCES smn_base.smn_modulos (smn_modulos_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_tipo_registro ADD PRIMARY KEY (smn_tipo_registro_id);

ALTER TABLE smn_base.smn_ticket ADD PRIMARY KEY (smn_ticket_id);

ALTER TABLE smn_base.smn_anexo ADD PRIMARY KEY (smn_anexo_id);
ALTER TABLE smn_base.smn_anexo ADD CONSTRAINT FK_smn_anexo_0 FOREIGN KEY (smn_ticket_id) REFERENCES smn_base.smn_ticket (smn_ticket_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_prestadores_servicios_especialidad ADD PRIMARY KEY (smn_prestadores_servicios_especialidad_id);
ALTER TABLE smn_base.smn_prestadores_servicios_especialidad ADD CONSTRAINT FK_smn_prestadores_servicios_especialidad_0 FOREIGN KEY (smn_prestadores_servicios_id) REFERENCES smn_base.smn_prestadores_servicios (smn_prestadores_servicios_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_prestadores_servicios_especialidad ADD CONSTRAINT FK_smn_prestadores_servicios_especialidad_1 FOREIGN KEY (smn_especialidad_id) REFERENCES smn_base.smn_especialidad (smn_especialidad_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_servicios_componentes ADD PRIMARY KEY (smn_servicios_componentes_id);
ALTER TABLE smn_base.smn_servicios_componentes ADD CONSTRAINT FK_smn_servicios_componentes_0 FOREIGN KEY (smn_servicios_id) REFERENCES smn_base.smn_servicios (smn_servicios_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_servicios_componentes ADD CONSTRAINT FK_smn_servicios_componentes_1 FOREIGN KEY (smn_componentes_id) REFERENCES smn_base.smn_componentes (smn_componentes_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_configuracion_estructura ADD PRIMARY KEY (smn_configuracion_estructura_id);

ALTER TABLE smn_base.smn_estructura_organizacional ADD PRIMARY KEY (smn_estructura_organizacional_id);
ALTER TABLE smn_base.smn_estructura_organizacional ADD CONSTRAINT FK_smn_estructura_organizacional_0 FOREIGN KEY (smn_configuracion_estructura_id) REFERENCES smn_base.smn_configuracion_estructura (smn_configuracion_estructura_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_panel ADD PRIMARY KEY (smn_panel_id);

ALTER TABLE smn_base.smn_item ADD PRIMARY KEY (smn_item_id);

ALTER TABLE smn_base.smn_activo_fijo ADD PRIMARY KEY (smn_afijo_id);

ALTER TABLE smn_base.smn_rel_aux_contacto ADD PRIMARY KEY (smn_rel_aux_contacto_id);
ALTER TABLE smn_base.smn_rel_aux_contacto ADD CONSTRAINT FK_smn_rel_aux_contacto_0 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_rel_aux_sucursal ADD PRIMARY KEY (smn_rel_aux_sucursal_id);
ALTER TABLE smn_base.smn_rel_aux_sucursal ADD CONSTRAINT FK_smn_rel_aux_sucursal_0 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_rel_entidad_estructura ADD PRIMARY KEY (smn_rel_ent?idad_estructura_id);
ALTER TABLE smn_base.smn_rel_entidad_estructura ADD CONSTRAINT FK_smn_rel_entidad_estructura_0 FOREIGN KEY (smn_configuracion_estructura_id) REFERENCES smn_base.smn_configuracion_estructura (smn_configuracion_estructura_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_rel_entidad_estructura ADD CONSTRAINT FK_smn_rel_entidad_estructura_1 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_clasificacion_abc ADD PRIMARY KEY (smn_clasificacion_abc_id);

ALTER TABLE smn_base.smn_proyecto ADD PRIMARY KEY (smn_proyecto_id);

ALTER TABLE smn_base.smn_contrato_base ADD PRIMARY KEY (smn_contrato_base_id);

ALTER TABLE smn_base.smn_tipo_contactos ADD PRIMARY KEY (smn_tipo_contactos_id);

ALTER TABLE smn_base.smn_auxiliar_contacto ADD PRIMARY KEY (smn_auxiliar_contacto_id);
ALTER TABLE smn_base.smn_auxiliar_contacto ADD CONSTRAINT FK_smn_auxiliar_contacto_0 FOREIGN KEY (smn_tipo_contactos_id) REFERENCES smn_base.smn_tipo_contactos (smn_tipo_contactos_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar_contacto ADD CONSTRAINT FK_smn_auxiliar_contacto_1 FOREIGN KEY (smn_clase_auxiliar_id) REFERENCES smn_base.smn_clase_auxiliar (smn_clase_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar_contacto ADD CONSTRAINT FK_smn_auxiliar_contacto_2 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_rel_modulo_clase_aux ADD PRIMARY KEY (smn_rel_modulo_clase_aux_id);

ALTER TABLE smn_base.smn_auxiliar_persona_contacto ADD PRIMARY KEY (smn_auxiliar_persona_contacto_id);
ALTER TABLE smn_base.smn_auxiliar_persona_contacto ADD CONSTRAINT FK_smn_auxiliar_persona_contacto_0 FOREIGN KEY (smn_clase_auxiliar_id) REFERENCES smn_base.smn_clase_auxiliar (smn_clase_auxiliar_id) ON DELETE NO ACTION;
ALTER TABLE smn_base.smn_auxiliar_persona_contacto ADD CONSTRAINT FK_smn_auxiliar_persona_contacto_1 FOREIGN KEY (smn_auxiliar_id) REFERENCES smn_base.smn_auxiliar (smn_auxiliar_id) ON DELETE NO ACTION;

ALTER TABLE smn_base.smn_rel_grupo_prestador_servicio ADD PRIMARY KEY (smn_rel_grupo_prestador_servicio_id);

ALTER TABLE smn_base.smn_rel_unid_grup_prest_contado ADD PRIMARY KEY (smn_rel_unid_grup_prest_contado_id);

