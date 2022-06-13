DROP TABLE smn_base.smn_terceros_comunidades;
DROP TABLE smn_base.smn_terceros_corporaciones;
DROP TABLE smn_base.smn_personas_juridicas;
DROP TABLE smn_base.smn_auxiliar_jur;
DROP TABLE smn_base.smn_personas_naturales;
DROP TABLE smn_base.smn_direccion;
DROP TABLE smn_base.smn_componentes_prestadores_servicios;
DROP TABLE smn_base.smn_terceros_centro_costo;
DROP TABLE smn_base.smn_terceros_unidades_negocios;
DROP TABLE smn_base.smn_terceros_modulos;
DROP TABLE smn_base.smn_terceros_sucursales;
DROP TABLE smn_base.smn_terceros_usuarios;
DROP TABLE smn_base.smn_terceros;
DROP TABLE smn_base.smn_prestadores_servicios_agenda;
DROP TABLE smn_base.smn_prestadores_servicios;
DROP TABLE smn_base.smn_agenda_horario;
DROP TABLE smn_base.smn_agenda;
DROP TABLE smn_base.smn_modelos_contratos;
DROP TABLE smn_base.smn_mensajes_contactos;
DROP TABLE smn_base.smn_respuestas;
DROP TABLE smn_base.smn_contactos;
DROP TABLE smn_base.smn_mensajes;
DROP TABLE smn_base.smn_formas_pago;
DROP TABLE smn_base.smn_prestaciones;
DROP TABLE smn_base.smn_transaccion_general;
DROP TABLE smn_base.smn_almacen;
DROP TABLE smn_base.smn_configuracion;
DROP TABLE smn_base.smn_componentes;
DROP TABLE smn_base.smn_servicios_baremos;
DROP TABLE smn_base.smn_baremos;
DROP TABLE smn_base.smn_unidades_servicios;
DROP TABLE smn_base.smn_areas_servicios;
DROP TABLE smn_base.smn_tipos_servicios;
DROP TABLE smn_base.smn_servicios;
DROP TABLE smn_base.smn_feriados;
DROP TABLE smn_base.smn_panel;
DROP TABLE smn_base.smn_tipo_terceros;
DROP TABLE smn_base.smn_tipo_localidad;
DROP TABLE smn_base.smn_edificacion;
DROP TABLE smn_base.smn_tipo_via;
DROP TABLE smn_base.smn_tipo_doc_oficial;
DROP TABLE smn_base.smn_condicion_pago;
DROP TABLE smn_base.smn_auxiliar_nat;
DROP TABLE smn_base.smn_centro_costo;
DROP TABLE smn_base.smn_clase_auxiliar;
DROP TABLE smn_base.smn_tipo_auxiliar;
DROP TABLE smn_base.smn_servicio_traduccion;
DROP TABLE smn_base.smn_menu_traduccion;
DROP TABLE smn_base.smn_tipo_cuenta_banco;
DROP TABLE smn_base.smn_cuentas_bancarias;
DROP TABLE smn_base.smn_periodos;
DROP TABLE smn_base.smn_tasas_impositivas;
DROP TABLE smn_base.smn_unidades_impositivas;
DROP TABLE smn_base.smn_impuestos;
DROP TABLE smn_base.smn_tasas_cambio;
DROP TABLE smn_base.smn_zonas_postales;
DROP TABLE smn_base.smn_entidades_financieras;
DROP TABLE smn_base.smn_monedas;
DROP TABLE smn_base.smn_unidades_negocios;
DROP TABLE smn_base.smn_corporaciones;
DROP TABLE smn_base.smn_modulos;
DROP TABLE smn_base.smn_ciudades;
DROP TABLE smn_base.smn_entidades_federales;
DROP TABLE smn_base.smn_paises;
DROP TABLE smn_base.smn_comunidades;
DROP TABLE smn_base.smn_sectores_economicos;
DROP TABLE smn_base.smn_sucursales;
DROP TABLE smn_base.smn_usuarios;
DROP TABLE smn_base.smn_entidades;

CREATE TABLE smn_base.smn_entidades(
  smn_entidades_id INTEGER NOT NULL,
  ent_codigo VARCHAR(8) NOT NULL,
  ent_comunidad INTEGER,
  ent_corporacion INTEGER,
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


CREATE TABLE smn_base.smn_usuarios(
  smn_usuarios_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  usr_usuario_id INTEGER NOT NULL,
  usr_codigo VARCHAR(12) NOT NULL,
  usr_nombre VARCHAR(32) NOT NULL,
  usr_apellido VARCHAR(32) NOT NULL,
  usr_nacionalidad INTEGER NOT NULL,
  usr_nro_doc_identidad VARCHAR(10) NOT NULL,
  usr_nro_id_fiscal VARCHAR(10),
  usr_direccion INTEGER NOT NULL,
  usr_email VARCHAR(96) NOT NULL,
  usr_telefono_fijo VARCHAR(24) NOT NULL,
  usr_telefono_movil VARCHAR(24) NOT NULL,
  usr_idioma CHARACTER(2) NOT NULL,
  usr_usuario VARCHAR(10) NOT NULL,
  usr_fecha_registro DATE NOT NULL,
  usr_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_usuarios;


CREATE TABLE smn_base.smn_sucursales(
  smn_sucursales_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  suc_codigo VARCHAR(12) NOT NULL,
  suc_nombre VARCHAR(56) NOT NULL,
  suc_responsable VARCHAR(56) NOT NULL,
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


CREATE TABLE smn_base.smn_sectores_economicos(
  smn_sectores_economicos_id INTEGER NOT NULL,
  sec_codigo VARCHAR(8) NOT NULL,
  sec_descripcion VARCHAR(56) NOT NULL,
  sec_idioma CHARACTER(2) NOT NULL,
  sec_usuario VARCHAR(10) NOT NULL,
  sec_fecha_registro DATE NOT NULL,
  sec_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_sectores_economicos;


CREATE TABLE smn_base.smn_comunidades(
  smn_comunidades_id INTEGER NOT NULL,
  cmn_codigo VARCHAR(8) NOT NULL,
  cmn_nombre VARCHAR(56) NOT NULL,
  cmn_idioma CHARACTER(2) NOT NULL,
  cmn_usuario VARCHAR(10) NOT NULL,
  cmn_fecha_registro DATE NOT NULL,
  cmn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_comunidades;


CREATE TABLE smn_base.smn_paises(
  smn_paises_id INTEGER NOT NULL,
  pai_codigo VARCHAR(8) NOT NULL,
  pai_nombre_corto VARCHAR(32) NOT NULL,
  pai_nombre_largo VARCHAR(56) NOT NULL,
  pai_gentilicio VARCHAR(32) NOT NULL,
  pai_idioma CHARACTER(2) NOT NULL,
  pai_usuario VARCHAR(10) NOT NULL,
  pai_fecha_registro DATE NOT NULL,
  pai_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_paises;


CREATE TABLE smn_base.smn_entidades_federales(
  smn_entidades_federales_id INTEGER NOT NULL,
  smn_paises_id INTEGER NOT NULL,
  efe_codigo VARCHAR(8) NOT NULL,
  efe_nombre_corto VARCHAR(32) NOT NULL,
  efe_nombre_largo VARCHAR(56) NOT NULL,
  efe_idioma CHARACTER(2) NOT NULL,
  efe_usuario VARCHAR(10) NOT NULL,
  efe_fecha_registro DATE NOT NULL,
  efe_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_entidades_federales;


CREATE TABLE smn_base.smn_ciudades(
  smn_ciudades_id INTEGER NOT NULL,
  smn_entidades_federales_id INTEGER NOT NULL,
  ciu_codigo VARCHAR(8) NOT NULL,
  ciu_nombre_corto VARCHAR(32) NOT NULL,
  ciu_nombre_largo VARCHAR(56) NOT NULL,
  ciu_idioma CHARACTER(2) NOT NULL,
  ciu_usuario VARCHAR(10) NOT NULL,
  ciu_fecha_registro DATE NOT NULL,
  ciu_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_ciudades;


CREATE TABLE smn_base.smn_modulos(
  smn_modulos_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  smn_app_id INTEGER NOT NULL,
  mod_codigo VARCHAR(8) NOT NULL,
  mod_nombre VARCHAR(56) NOT NULL,
  mod_idioma CHARACTER(2) NOT NULL,
  mod_usuario VARCHAR(10) NOT NULL,
  mod_fecha_registro DATE NOT NULL,
  mod_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_modulos;


CREATE TABLE smn_base.smn_corporaciones(
  smn_corporaciones_id INTEGER NOT NULL,
  crp_codigo VARCHAR(8) NOT NULL,
  crp_nombre VARCHAR(56) NOT NULL,
  crp_moneda INTEGER NOT NULL,
  crp_direccion INTEGER,
  crp_idioma CHARACTER(2) NOT NULL,
  crp_usuario VARCHAR(10) NOT NULL,
  crp_fecha_registro DATE NOT NULL,
  crp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_corporaciones;


CREATE TABLE smn_base.smn_unidades_negocios(
  smn_unidades_negocios_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  uen_codigo VARCHAR(8) NOT NULL,
  uen_nombre VARCHAR(56) NOT NULL,
  uen_responsable VARCHAR(56) NOT NULL,
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


CREATE TABLE smn_base.smn_monedas(
  smn_monedas_id INTEGER NOT NULL,
  mon_codigo VARCHAR(8) NOT NULL,
  mon_nombre VARCHAR(56) NOT NULL,
  mon_idioma CHARACTER(2) NOT NULL,
  mon_usuario VARCHAR(10) NOT NULL,
  mon_fecha_registro DATE NOT NULL,
  mon_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_monedas;


CREATE TABLE smn_base.smn_entidades_financieras(
  smn_entidades_financieras_id INTEGER NOT NULL,
  efi_codigo VARCHAR(8) NOT NULL,
  efi_nombre VARCHAR(56) NOT NULL,
  efi_direccion INTEGER NOT NULL,
  efi_telefono_fijo VARCHAR(24) NOT NULL,
  efi_telefono_movil VARCHAR(24) NOT NULL,
  efi_codigo_aba VARCHAR(16),
  efi_codigo_swift VARCHAR(16),
  efi_contacto VARCHAR(56),
  efi_idioma CHARACTER(2) NOT NULL,
  efi_usuario VARCHAR(10) NOT NULL,
  efi_fecha_registro DATE NOT NULL,
  efi_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_entidades_financieras;


CREATE TABLE smn_base.smn_zonas_postales(
  smn_zonas_postales_id INTEGER NOT NULL,
  smn_ciudades_id INTEGER NOT NULL,
  zpo_codigo VARCHAR(12) NOT NULL,
  zpo_idioma CHARACTER(2) NOT NULL,
  zpo_usuario VARCHAR(10) NOT NULL,
  zpo_fecha DATE NOT NULL,
  zpo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_zonas_postales;


CREATE TABLE smn_base.smn_tasas_cambio(
  smn_tasas_de_cambio_id INTEGER NOT NULL,
  smn_monedas_id INTEGER NOT NULL,
  tca_codigo VARCHAR(8) NOT NULL,
  tca_fecha_vigencia DATE NOT NULL,
  tca_tasa_cambio DOUBLE PRECISION NOT NULL,
  tca_idioma CHARACTER(2) NOT NULL,
  tca_usuario VARCHAR(10) NOT NULL,
  tca_fecha_registro DATE NOT NULL,
  tca_hora INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tasas_cambio;


CREATE TABLE smn_base.smn_impuestos(
  smn_impuestos_id INTEGER NOT NULL,
  imp_codigo VARCHAR(8) NOT NULL,
  imp_descripcion VARCHAR(56) NOT NULL,
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

CREATE SEQUENCE smn_base.seq_smn_impuestos;


CREATE TABLE smn_base.smn_unidades_impositivas(
  smn_unidades_impositivas_id INTEGER NOT NULL,
  uim_codigo VARCHAR(8) NOT NULL,
  uim_descripcion VARCHAR(56) NOT NULL,
  uim_idioma CHARACTER(2) NOT NULL,
  uim_usuario VARCHAR(10) NOT NULL,
  uim_fecha_registro DATE NOT NULL,
  uim_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidades_impositivas;


CREATE TABLE smn_base.smn_tasas_impositivas(
  smn_tasas_impositivas_id INTEGER NOT NULL,
  smn_unidades_impositivas_id INTEGER NOT NULL,
  tim_codigo VARCHAR(8) NOT NULL,
  tim_descripcion VARCHAR(56) NOT NULL,
  tim_valor DOUBLE PRECISION NOT NULL,
  tim_fecha_vigencia DATE NOT NULL,
  tim_idioma CHARACTER(2) NOT NULL,
  tim_usuario VARCHAR(10) NOT NULL,
  tim_fecha_registro DATE NOT NULL,
  tim_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tasas_impositivas;


CREATE TABLE smn_base.smn_periodos(
  smn_periodos_id INTEGER NOT NULL,
  prd_codigo VARCHAR(8) NOT NULL,
  prd_descripcion VARCHAR(56) NOT NULL,
  prd_inicio_periodo CHARACTER(5) NOT NULL,
  prd_final_periodo CHARACTER(5) NOT NULL,
  prd_idioma CHARACTER(2) NOT NULL,
  prd_usuario VARCHAR(10) NOT NULL,
  prd_fecha_registro DATE NOT NULL,
  prd_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_periodos;


CREATE TABLE smn_base.smn_cuentas_bancarias(
  smn_cuentas_bancarias_id INTEGER NOT NULL,
  cba_entidades_financieras INTEGER NOT NULL,
  cba_codigo VARCHAR(8) NOT NULL,
  cba_nombre VARCHAR(56) NOT NULL,
  cba_nro_cuenta VARCHAR(24) NOT NULL,
  cba_tipo_cta_banco INTEGER NOT NULL,
  cba_moneda INTEGER NOT NULL,
  cba_idioma CHARACTER(2) NOT NULL,
  cba_usuario VARCHAR(10) NOT NULL,
  cba_fecha_registro DATE NOT NULL,
  cba_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_cuentas_bancarias;


CREATE TABLE smn_base.smn_tipo_cuenta_banco(
  smn_tipo_cuenta_banco_id INTEGER NOT NULL,
  tcb_codigo VARCHAR(8) NOT NULL,
  tcb_descripcion VARCHAR(32) NOT NULL,
  tcb_idioma VARCHAR(2) NOT NULL,
  tcb_usuario VARCHAR(10) NOT NULL,
  tcb_fecha_registro DATE NOT NULL,
  tcb_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_cuenta_banco;


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


CREATE TABLE smn_base.smn_tipo_auxiliar(
  smn_tipo_auxiliar_id INTEGER NOT NULL,
  tia_codigo VARCHAR(8) NOT NULL,
  tia_nombre VARCHAR(48) NOT NULL,
  tia_idioma CHARACTER(2) NOT NULL,
  tia_usuario VARCHAR(10) NOT NULL,
  tia_fecha_registro DATE NOT NULL,
  tia_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_auxiliar;


CREATE TABLE smn_base.smn_clase_auxiliar(
  smn_clase_auxiliar_id INTEGER NOT NULL,
  smn_tipo_auxiliar_id INTEGER NOT NULL,
  cla_codigo VARCHAR(8) NOT NULL,
  cla_nombre VARCHAR(64) NOT NULL,
  cla_modulo INTEGER NOT NULL,
  cla_idioma CHARACTER(2) NOT NULL,
  cla_usuario VARCHAR(10) NOT NULL,
  cla_fecha_registro DATE NOT NULL,
  cla_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_clase_auxiliar;


CREATE TABLE smn_base.smn_centro_costo(
  smn_centro_costo_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  cco_codigo VARCHAR(12) NOT NULL,
  cco_descripcion_corta VARCHAR(32) NOT NULL,
  cco_descripcion_larga VARCHAR(56) NOT NULL,
  cco_responsable VARCHAR(56) NOT NULL,
  cco_tipo_cco CHARACTER(2) NOT NULL,
  cco_nivel INTEGER NOT NULL,
  cco_clase_auxiliar INTEGER,
  cco_auxiliar INTEGER,
  cco_idioma CHARACTER(2) NOT NULL,
  cco_usuario VARCHAR(10) NOT NULL,
  cco_fecha_registro DATE NOT NULL,
  cco_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_centro_costo;


CREATE TABLE smn_base.smn_auxiliar_nat(
  smn_auxiliar_nat_id INTEGER NOT NULL,
  axn_persona_id INTEGER NOT NULL,
  axn_codigo VARCHAR(12) NOT NULL,
  axn_descripcion VARCHAR(64) NOT NULL,
  axn_tipo_auxiliar INTEGER,
  axn_clasif_abc CHARACTER(1),
  axn_benef_pago VARCHAR(128),
  axn_cond_pago INTEGER,
  axn_tipo_facturac CHARACTER(2),
  axn_observacion VARCHAR(96),
  axn_idioma CHARACTER(2) NOT NULL,
  axn_usuario VARCHAR(10) NOT NULL,
  axn_fecha_registro DATE NOT NULL,
  axn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_nat;


CREATE TABLE smn_base.smn_condicion_pago(
  smn_condicion_pago_id INTEGER NOT NULL,
  cop_codigo VARCHAR(8) NOT NULL,
  cop_descripcion VARCHAR(48) NOT NULL,
  cop_idioma CHARACTER(2) NOT NULL,
  cop_usuario VARCHAR(10) NOT NULL,
  cop_fecha_registro DATE NOT NULL,
  cop_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_condicion_pago;


CREATE TABLE smn_base.smn_tipo_doc_oficial(
  smn_tipo_doc_oficial_id INTEGER NOT NULL,
  tdo_codigo VARCHAR(8) NOT NULL,
  tdo_descripcion VARCHAR(48) NOT NULL,
  tdo_idioma CHARACTER(2) NOT NULL,
  tdo_usuario VARCHAR(10) NOT NULL,
  tdo_fecha_registro DATE NOT NULL,
  tdo_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_doc_oficial;


CREATE TABLE smn_base.smn_tipo_via(
  smn_tipo_via_id INTEGER NOT NULL,
  tiv_codigo VARCHAR(8) NOT NULL,
  tiv_descripcion VARCHAR(48) NOT NULL,
  tiv_idioma CHARACTER(2) NOT NULL,
  tiv_usuario VARCHAR(10) NOT NULL,
  tiv_fecha_registro DATE NOT NULL,
  tiv_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_via;


CREATE TABLE smn_base.smn_edificacion(
  smn_edificacion_id INTEGER NOT NULL,
  edf_codigo VARCHAR(8) NOT NULL,
  edf_descripcion VARCHAR(48) NOT NULL,
  edf_idioma CHARACTER(2) NOT NULL,
  edf_usuario VARCHAR(10) NOT NULL,
  edf_fecha_registro DATE NOT NULL,
  edf_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_edificacion;


CREATE TABLE smn_base.smn_tipo_localidad(
  smn_tipo_localidad_id INTEGER NOT NULL,
  til_codigo VARCHAR(8) NOT NULL,
  til_descripcion VARCHAR(48) NOT NULL,
  til_idioma CHARACTER(2) NOT NULL,
  til_usuario VARCHAR(10) NOT NULL,
  til_fecha_registro DATE NOT NULL,
  til_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_localidad;


CREATE TABLE smn_base.smn_tipo_terceros(
  smn_tipo_terceros_id INTEGER NOT NULL,
  tpt_codigo VARCHAR(8) NOT NULL,
  tpt_descripcion VARCHAR(56) NOT NULL,
  tpt_idioma CHARACTER(2) NOT NULL,
  tpt_usuario VARCHAR(10) NOT NULL,
  tpt_fecha_registro DATE NOT NULL,
  tpt_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipo_terceros;


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


CREATE TABLE smn_base.smn_feriados(
  smn_feriados_id INTEGER NOT NULL,
  fer_codigo VARCHAR(8) NOT NULL,
  fer_descripcion VARCHAR(56) NOT NULL,
  fer_fecha DATE NOT NULL,
  fer_idioma CHARACTER(2) NOT NULL,
  fer_usuario VARCHAR(10) NOT NULL,
  fer_fecha_registro DATE NOT NULL,
  fer_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_feriados;


CREATE TABLE smn_base.smn_servicios(
  smn_servicios_id INTEGER NOT NULL,
  svc_codigo VARCHAR(8) NOT NULL,
  svc_descripcion VARCHAR(56) NOT NULL,
  svc_tipo INTEGER NOT NULL,
  svc_area INTEGER NOT NULL,
  svc_unidad INTEGER NOT NULL,
  svc_precio_general DOUBLE PRECISION NOT NULL,
  svc_inactivo INTEGER NOT NULL,
  svc_vigencia_desde DATE NOT NULL,
  svc_vigencia_hasta DATE NOT NULL,
  svc_requisitos VARCHAR(5000) NOT NULL,
  svc_transaccion_id INTEGER,
  svc_centro_costo INTEGER,
  svc_idioma CHARACTER(2) NOT NULL,
  svc_usuario VARCHAR(10) NOT NULL,
  svc_fecha_registro DATE NOT NULL,
  svc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicios;


CREATE TABLE smn_base.smn_tipos_servicios(
  smn_tipos_servicios_id INTEGER NOT NULL,
  tsr_codigo VARCHAR(8) NOT NULL,
  tsr_descripcion VARCHAR(56) NOT NULL,
  tsr_idioma CHARACTER(2) NOT NULL,
  tsr_usuario VARCHAR(10) NOT NULL,
  tsr_fecha_registro DATE NOT NULL,
  trs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_tipos_servicios;


CREATE TABLE smn_base.smn_areas_servicios(
  smn_areas_servicios_id INTEGER NOT NULL,
  smn_tipos_servicios_id INTEGER NOT NULL,
  ase_codigo VARCHAR(8) NOT NULL,
  ase_descripcion VARCHAR(56) NOT NULL,
  ase_centro_costo INTEGER,
  ase_idioma CHARACTER(2) NOT NULL,
  ase_usuario VARCHAR(10) NOT NULL,
  ase_fecha_registro DATE NOT NULL,
  ase_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_areas_servicios;


CREATE TABLE smn_base.smn_unidades_servicios(
  smn_unidades_servicios_id INTEGER NOT NULL,
  smn_areas_servicios_id INTEGER NOT NULL,
  uns_codigo VARCHAR(8) NOT NULL,
  uns_descripcion VARCHAR(56) NOT NULL,
  uns_centro_costo INTEGER,
  uns_idioma CHARACTER(2) NOT NULL,
  uns_usuario VARCHAR(10) NOT NULL,
  uns_fecha_registro DATE NOT NULL,
  uns_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_unidades_servicios;


CREATE TABLE smn_base.smn_baremos(
  smn_baremos_id INTEGER NOT NULL,
  bar_codigo VARCHAR(8) NOT NULL,
  bar_descripcion VARCHAR(56) NOT NULL,
  bar_entidad INTEGER NOT NULL,
  bar_tipo CHARACTER(2) NOT NULL,
  bar_tercero INTEGER,
  bar_servicio INTEGER NOT NULL,
  bar_precio DOUBLE PRECISION NOT NULL,
  bar_vigencia_desde DATE NOT NULL,
  bar_vigencia_hasta DATE NOT NULL,
  bar_compuesto_id INTEGER NOT NULL,
  bar_tipo_compuesto CHARACTER(2) NOT NULL,
  bar_codigo_articulo INTEGER NOT NULL,
  bar_almacen INTEGER NOT NULL,
  bar_calculo CHARACTER(2) NOT NULL,
  bar_cantidad DOUBLE PRECISION NOT NULL,
  bar_precio DOUBLE PRECISION NOT NULL,
  bar_porcentaje DOUBLE PRECISION,
  bar_inactivo CHARACTER(1) NOT NULL,
  bar_idioma CHARACTER(2) NOT NULL,
  bar_usuario VARCHAR(10) NOT NULL,
  bar_fecha_registro DATE NOT NULL,
  bar_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_baremos;


CREATE TABLE smn_base.smn_servicios_baremos(
  smn_servicios_baremos_id INTEGER NOT NULL,
  smn_servicios_id INTEGER NOT NULL,
  smn_baremos_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_servicios_baremos;


CREATE TABLE smn_base.smn_componentes(
  smn_componentes_id INTEGER NOT NULL,
  smn_servicios_id INTEGER NOT NULL,
  cmp_codigo VARCHAR(8) NOT NULL,
  cmp_descripcion VARCHAR(56) NOT NULL,
  cmp_vigencia_desde DATE NOT NULL,
  cmp_vigencia_hasta DATE NOT NULL,
  cmp_tiempo_estimado DOUBLE PRECISION NOT NULL,
  cmp_tipo CHARACTER(2) NOT NULL,
  cmp_almacen INTEGER NOT NULL,
  cmp_calculo CHARACTER(2) NOT NULL,
  cmp_cantidad DOUBLE PRECISION NOT NULL,
  cmp_precio DOUBLE PRECISION NOT NULL,
  cmp_porcentaje DOUBLE PRECISION NOT NULL,
  cmp_trans_fact INTEGER NOT NULL,
  cmp_idioma CHARACTER(2) NOT NULL,
  cmp_usuario VARCHAR(10) NOT NULL,
  cmp_fecha_registro DATE NOT NULL,
  cmp_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_componentes;


CREATE TABLE smn_base.smn_configuracion(
  smn_configuracion_id INTEGER NOT NULL,
  cfg_descripcion VARCHAR(1024) NOT NULL,
  cfg_idioma CHARACTER(2) NOT NULL,
  cfg_usuario VARCHAR(10) NOT NULL,
  cfg_fecha_registro DATE NOT NULL,
  cfg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_configuracion;


CREATE TABLE smn_base.smn_almacen(
  smn_almacen_id INTEGER NOT NULL,
  alm_codigo VARCHAR(8) NOT NULL,
  alm_nombre VARCHAR(56) NOT NULL,
  alm_idioma CHARACTER(2) NOT NULL,
  alm_usuario VARCHAR(10) NOT NULL,
  alm_fecha_registro DATE NOT NULL,
  alm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_almacen;


CREATE TABLE smn_base.smn_transaccion_general(
  smn_transaccion_id INTEGER NOT NULL,
  trg_codigo VARCHAR(8) NOT NULL,
  trg_descripcion VARCHAR(64) NOT NULL,
  trg_modulo INTEGER NOT NULL,
  trg_idioma CHARACTER(2) NOT NULL,
  trg_usuario VARCHAR(10) NOT NULL,
  trg_fecha_registro DATE NOT NULL,
  trg_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_transaccion_general;


CREATE TABLE smn_base.smn_prestaciones(
  smn_prestaciones_id INTEGER NOT NULL,
  prt_codigo VARCHAR(8) NOT NULL,
  prt_descripcion VARCHAR(56) NOT NULL,
  prt_trans_fact INTEGER NOT NULL,
  prt_idioma CHARACTER(2) NOT NULL,
  prt_usuario VARCHAR(10) NOT NULL,
  prt_fecha_registro DATE NOT NULL,
  prt_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestaciones;


CREATE TABLE smn_base.smn_formas_pago(
  smn_formas_pago_id INTEGER NOT NULL,
  fop_codigo VARCHAR(10) NOT NULL,
  fop_descripcion VARCHAR(56) NOT NULL,
  fop_requiere_banco CHARACTER(1) NOT NULL,
  fop_idioma CHARACTER(2) NOT NULL,
  fop_usuario VARCHAR(10) NOT NULL,
  fop_fecha_registro DATE NOT NULL,
  fop_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_formas_pago;


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


CREATE TABLE smn_base.smn_contactos(
  smn_contactos_id INTEGER NOT NULL,
  cnt_nombres VARCHAR(30) NOT NULL,
  cnt_apellidos VARCHAR(30) NOT NULL,
  cnt_email VARCHAR(96) NOT NULL,
  cnt_idioma CHARACTER(2) NOT NULL,
  cnt_usuario VARCHAR(10) NOT NULL,
  cnt_fecha_registro DATE NOT NULL,
  cnt_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_contactos;


CREATE TABLE smn_base.smn_respuestas(
  smn_respuestas_id INTEGER NOT NULL,
  smn_mensajes_id INTEGER NOT NULL,
  rsp_texto VARCHAR(5000) NOT NULL,
  rsp_idioma CHARACTER(2) NOT NULL,
  rsp_usuario VARCHAR(10) NOT NULL,
  rsp_fecha_registro DATE NOT NULL,
  rsp_hora VARCHAR(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_respuestas;


CREATE TABLE smn_base.smn_mensajes_contactos(
  smn_mensajes_contactos_id INTEGER NOT NULL,
  smn_mensajes_id INTEGER NOT NULL,
  smn_contactos_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_mensajes_contactos;


CREATE TABLE smn_base.smn_modelos_contratos(
  smn_modelos_contratos_id INTEGER NOT NULL,
  mct_modulo INTEGER NOT NULL,
  mct_archivo VARCHAR(400) NOT NULL,
  mct_contenido VARCHAR(150) NOT NULL,
  mct_descripcion VARCHAR(500) NOT NULL,
  mct_tamano INTEGER NOT NULL,
  mct_datos BYTEA NOT NULL,
  mct_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_modelos_contratos;


CREATE TABLE smn_base.smn_agenda(
  smn_agenda_id INTEGER NOT NULL,
  age_codigo VARCHAR(8) NOT NULL,
  age_descripcion VARCHAR(56) NOT NULL,
  age_dia_semana CHARACTER(2) NOT NULL,
  age_jornada CHARACTER(2) NOT NULL,
  age_idioma CHARACTER(2) NOT NULL,
  age_usuario VARCHAR(10) NOT NULL,
  age_fecha_registro DATE NOT NULL,
  age_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_agenda;


CREATE TABLE smn_base.smn_agenda_horario(
  smn_agenda_hora_id INTEGER NOT NULL,
  smn_agenda_id INTEGER NOT NULL,
  agd_desde INTEGER NOT NULL,
  agd_hasta INTEGER NOT NULL,
  agd_idioma CHARACTER(2) NOT NULL,
  agd_usuario VARCHAR(10) NOT NULL,
  agd_fecha_registro DATE NOT NULL,
  agd_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_agenda_horario;


CREATE TABLE smn_base.smn_prestadores_servicios(
  smn_prestadores_servicios_id INTEGER NOT NULL,
  prs_area INTEGER NOT NULL,
  prs_unidad INTEGER NOT NULL,
  prs_codigo VARCHAR(10) NOT NULL,
  prs_nombre VARCHAR(32) NOT NULL,
  prs_apellido VARCHAR(32) NOT NULL,
  prs_direccion INTEGER NOT NULL,
  prs_telefono_fijo VARCHAR(24) NOT NULL,
  prs_telefono_movil VARCHAR(24) NOT NULL,
  prs_agenda INTEGER NOT NULL,
  prs_frecuencia DOUBLE PRECISION,
  prs_clase_auxiliar INTEGER,
  prs_auxiliar INTEGER,
  prs_idioma CHARACTER(2) NOT NULL,
  prs_usuario VARCHAR(10) NOT NULL,
  prs_fecha_registro DATE NOT NULL,
  prs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestadores_servicios;


CREATE TABLE smn_base.smn_prestadores_servicios_agenda(
  smn_prestadores_servicios_agenda_id INTEGER NOT NULL,
  smn_prestadores_servicios_id INTEGER NOT NULL,
  smn_agenda_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_prestadores_servicios_agenda;


CREATE TABLE smn_base.smn_terceros(
  smn_terceros_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  ter_codigo VARCHAR(8) NOT NULL,
  ter_corporacion INTEGER,
  ter_comunidad INTEGER,
  ter_tipo INTEGER NOT NULL,
  ter_moneda INTEGER NOT NULL,
  ter_sector_economico INTEGER,
  ter_descripcion_corta VARCHAR(24) NOT NULL,
  ter_descripcion_larga VARCHAR(56) NOT NULL,
  ter_nro_id_fiscal VARCHAR(12) NOT NULL,
  ter_direccion INTEGER NOT NULL,
  ter_contacto VARCHAR(56) NOT NULL,
  ter_telefono_fijo VARCHAR(24) NOT NULL,
  ter_telefono_movil VARCHAR(24),
  ter_email VARCHAR(96) NOT NULL,
  ter_act_economica VARCHAR(1024) NOT NULL,
  ter_idioma CHARACTER(2) NOT NULL,
  ter_usuario VARCHAR(10) NOT NULL,
  ter_fecha_registro DATE NOT NULL,
  ter_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros;


CREATE TABLE smn_base.smn_terceros_usuarios(
  smn_terceros_usuarios_id INTEGER NOT NULL,
  smn_terceros_id INTEGER NOT NULL,
  tru_usuario_id INTEGER NOT NULL,
  tru_codigo VARCHAR(12) NOT NULL,
  tru_nombre VARCHAR(32) NOT NULL,
  tru_apellido VARCHAR(32) NOT NULL,
  tru_nacionalidad INTEGER NOT NULL,
  tru_nro_doc_identidad VARCHAR(10) NOT NULL,
  tru_nro_id_fiscal VARCHAR(10),
  tru_direccion INTEGER NOT NULL,
  tru_email VARCHAR(96) NOT NULL,
  tru_telefono_fijo VARCHAR(24) NOT NULL,
  tru_telefono_movil VARCHAR(24) NOT NULL,
  tru_idioma CHARACTER(2) NOT NULL,
  tru_usuario VARCHAR(10) NOT NULL,
  tru_fecha_registro DATE NOT NULL,
  tru_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_usuarios;


CREATE TABLE smn_base.smn_terceros_sucursales(
  smn_terceros_sucursales_id INTEGER NOT NULL,
  smn_terceros_id INTEGER NOT NULL,
  trs_codigo VARCHAR(12) NOT NULL,
  trs_nombre VARCHAR(56) NOT NULL,
  trs_responsable VARCHAR(56) NOT NULL,
  trs_direccion INTEGER NOT NULL,
  trs_telefono_fijo VARCHAR(24) NOT NULL,
  trs_telefono_movil VARCHAR(24) NOT NULL,
  trs_email VARCHAR(96) NOT NULL,
  trs_idioma CHARACTER(2) NOT NULL,
  trs_usuario VARCHAR(10) NOT NULL,
  trs_fecha_registro DATE NOT NULL,
  trs_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_sucursales;


CREATE TABLE smn_base.smn_terceros_modulos(
  smn_terceros_modulos_id INTEGER NOT NULL,
  smn_terceros_id INTEGER NOT NULL,
  smn_app_id INTEGER NOT NULL,
  trm_codigo VARCHAR(8) NOT NULL,
  trm_nombre VARCHAR(56) NOT NULL,
  trm_idioma CHARACTER(2) NOT NULL,
  trm_usuario VARCHAR(10) NOT NULL,
  trm_fecha_registro DATE NOT NULL,
  trm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_modulos;


CREATE TABLE smn_base.smn_terceros_unidades_negocios(
  smn_terceros_unidades_negocios_id INTEGER NOT NULL,
  smn_terceros_id INTEGER NOT NULL,
  tun_codigo VARCHAR(8) NOT NULL,
  tun_nombre VARCHAR(56) NOT NULL,
  tun_responsable VARCHAR(56) NOT NULL,
  tun_direccion INTEGER NOT NULL,
  tun_telefono_fijo VARCHAR(24) NOT NULL,
  tun_telefono_movil VARCHAR(24) NOT NULL,
  tun_email VARCHAR(96) NOT NULL,
  tun_idioma CHARACTER(2) NOT NULL,
  tun_usuario VARCHAR(10) NOT NULL,
  tun_fecha_registro DATE NOT NULL,
  tun_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_unidades_negocios;


CREATE TABLE smn_base.smn_terceros_centro_costo(
  smn_terceros_centro_costo_id INTEGER NOT NULL,
  smn_terceros_id INTEGER NOT NULL,
  trc_codigo VARCHAR(12) NOT NULL,
  trc_descripcion_corta VARCHAR(32) NOT NULL,
  trc_descripcion_larga VARCHAR(56) NOT NULL,
  trc_responsable VARCHAR(56) NOT NULL,
  trc_tipo_cco CHARACTER(2) NOT NULL,
  trc_nivel INTEGER NOT NULL,
  trc_clase_auxiliar INTEGER,
  trc_auxiliar INTEGER,
  trc_idioma CHARACTER(2) NOT NULL,
  trc_usuario VARCHAR(10) NOT NULL,
  trc_fecha_registro DATE NOT NULL,
  trc_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_centro_costo;


CREATE TABLE smn_base.smn_componentes_prestadores_servicios(
  smn_componentes_prestadores_servicios_id INTEGER NOT NULL,
  smn_componentes_id INTEGER NOT NULL,
  smn_prestadores_servicios_id INTEGER NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_componentes_prestadores_servicios;


CREATE TABLE smn_base.smn_direccion(
  smn_direccion_id INTEGER NOT NULL,
  dir_codigo VARCHAR(8) NOT NULL,
  dir_descripcion VARCHAR(56) NOT NULL,
  dir_pais INTEGER NOT NULL,
  dir_entidad_federal INTEGER NOT NULL,
  dir_ciudad INTEGER NOT NULL,
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
  dir_idioma CHARACTER(2) NOT NULL,
  dir_usuario VARCHAR(10) NOT NULL,
  dir_fecha_registro DATE NOT NULL,
  dir_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_direccion;


CREATE TABLE smn_base.smn_personas_naturales(
  smn_personas_id INTEGER NOT NULL,
  prn_nombres VARCHAR(64) NOT NULL,
  prn_apellidos VARCHAR(64) NOT NULL,
  prn_nro_tipo_oficial INTEGER NOT NULL,
  prn_num_doc_oficial CHARACTER(12) NOT NULL,
  prn_fecha_nacimiento DATE,
  prn_nacionalidad INTEGER,
  prn_sexo CHARACTER(2),
  prn_rif VARCHAR(10) NOT NULL,
  prn_telefono_fijo VARCHAR(24) NOT NULL,
  prn_telefono_movil VARCHAR(24) NOT NULL,
  prn_email VARCHAR(96) NOT NULL,
  prn_direccion INTEGER NOT NULL,
  prn_facebook VARCHAR(96),
  prn_linkedin VARCHAR(96),
  prn_twiter VARCHAR(96),
  prn_observacion VARCHAR(96),
  prn_idioma CHARACTER(2) NOT NULL,
  prn_usuario VARCHAR(10) NOT NULL,
  prn_fecha_registro DATE NOT NULL,
  prn_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_personas_naturales;


CREATE TABLE smn_base.smn_auxiliar_jur(
  smn_auxiliar_jur_id INTEGER NOT NULL,
  axj_persona_juridica_id INTEGER NOT NULL,
  axj_codigo VARCHAR(12) NOT NULL,
  axj_descripcion VARCHAR(64) NOT NULL,
  axj_tipo_persona CHARACTER(2) NOT NULL,
  axj_tipo_auxiliar INTEGER,
  axj_benef_pago VARCHAR(112),
  axj_cond_pago INTEGER,
  axj_gru_asociado INTEGER,
  axj_tipo_facturac CHARACTER(2),
  axj_num_cuenta VARCHAR(24),
  axj_tipo_cta_banco INTEGER,
  axj_respons_cuenta VARCHAR(96),
  axj_banco_pertenece INTEGER,
  axj_observacion VARCHAR(96),
  axj_idioma CHARACTER(2) NOT NULL,
  axj_usuario VARCHAR(10) NOT NULL,
  axj_fecha_registro DATE NOT NULL,
  axj_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_auxiliar_jur;


CREATE TABLE smn_base.smn_personas_juridicas(
  smn_auxiliar_id INTEGER NOT NULL,
  jur_razon_social VARCHAR(64) NOT NULL,
  jur_rif VARCHAR(10) NOT NULL,
  jur_nit VARCHAR(10),
  jur_denom_comercial VARCHAR(64),
  jur_nacional CHARACTER(1) NOT NULL,
  jur_clasif_abc INTEGER NOT NULL,
  jur_telefono_fijo VARCHAR(24) NOT NULL,
  jur_telefono_movil VARCHAR(24) NOT NULL,
  jur_telefono_fax INTEGER,
  jur_email VARCHAR(96),
  jur_persona_contacto VARCHAR(48),
  jur_persona_contacto_email VARCHAR(96) NOT NULL,
  jur_representante_legal VARCHAR(64),
  jur_direccion1 INTEGER NOT NULL,
  jur_direccion2 INTEGER,
  jur_facebook VARCHAR(96),
  jur_linkedin VARCHAR(96),
  jur_twiter VARCHAR(96),
  jur_swift VARCHAR(24),
  jur_aba VARCHAR(24),
  jur_num_cuenta VARCHAR(24),
  jur_tipo_cta_banco INTEGER,
  jur_respons_cuenta VARCHAR(96),
  jur_banco_pertenece INTEGER,
  jur_observacion VARCHAR(96),
  jur_idioma CHARACTER(2) NOT NULL,
  jur_usuario VARCHAR(10) NOT NULL,
  jur_fecha_registro DATE NOT NULL,
  jur_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_personas_juridicas;


CREATE TABLE smn_base.smn_terceros_corporaciones(
  smn_terceros_corporaciones_id INTEGER NOT NULL,
  tcr_codigo VARCHAR(8) NOT NULL,
  tcr_nombre VARCHAR(56) NOT NULL,
  tcr_moneda INTEGER NOT NULL,
  tcr_direccion INTEGER NOT NULL,
  tcr_idioma CHARACTER(2) NOT NULL,
  tcr_usuario VARCHAR(10) NOT NULL,
  tcr_fecha_registro DATE NOT NULL,
  tcr_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_corporaciones;


CREATE TABLE smn_base.smn_terceros_comunidades(
  smn_terceros_comunidades_id INTEGER NOT NULL,
  tcm_codigo VARCHAR(8) NOT NULL,
  tcm_nombre VARCHAR(56) NOT NULL,
  tcm_idioma CHARACTER(2) NOT NULL,
  tcm_usuario VARCHAR(10) NOT NULL,
  tcm_fecha_registro DATE NOT NULL,
  tcm_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_terceros_comunidades;



ALTER TABLE smn_base.smn_entidades ADD PRIMARY KEY (smn_entidades_id);

ALTER TABLE smn_base.smn_usuarios ADD PRIMARY KEY (smn_usuarios_id);
ALTER TABLE smn_base.smn_usuarios ADD CONSTRAINT FK_smn_usuarios_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_sucursales ADD PRIMARY KEY (smn_sucursales_id);
ALTER TABLE smn_base.smn_sucursales ADD CONSTRAINT FK_smn_sucursales_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_sectores_economicos ADD PRIMARY KEY (smn_sectores_economicos_id);

ALTER TABLE smn_base.smn_comunidades ADD PRIMARY KEY (smn_comunidades_id);

ALTER TABLE smn_base.smn_paises ADD PRIMARY KEY (smn_paises_id);

ALTER TABLE smn_base.smn_entidades_federales ADD PRIMARY KEY (smn_entidades_federales_id);
ALTER TABLE smn_base.smn_entidades_federales ADD CONSTRAINT FK_smn_entidades_federales_0 FOREIGN KEY (smn_paises_id) REFERENCES smn_base.smn_paises (smn_paises_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_ciudades ADD PRIMARY KEY (smn_ciudades_id);
ALTER TABLE smn_base.smn_ciudades ADD CONSTRAINT FK_smn_ciudades_0 FOREIGN KEY (smn_entidades_federales_id) REFERENCES smn_base.smn_entidades_federales (smn_entidades_federales_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_modulos ADD PRIMARY KEY (smn_modulos_id);
ALTER TABLE smn_base.smn_modulos ADD CONSTRAINT FK_smn_modulos_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_corporaciones ADD PRIMARY KEY (smn_corporaciones_id);

ALTER TABLE smn_base.smn_unidades_negocios ADD PRIMARY KEY (smn_unidades_negocios_id);
ALTER TABLE smn_base.smn_unidades_negocios ADD CONSTRAINT FK_smn_unidades_negocios_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_monedas ADD PRIMARY KEY (smn_monedas_id);

ALTER TABLE smn_base.smn_entidades_financieras ADD PRIMARY KEY (smn_entidades_financieras_id);

ALTER TABLE smn_base.smn_zonas_postales ADD PRIMARY KEY (smn_zonas_postales_id);
ALTER TABLE smn_base.smn_zonas_postales ADD CONSTRAINT FK_smn_zonas_postales_0 FOREIGN KEY (smn_ciudades_id) REFERENCES smn_base.smn_ciudades (smn_ciudades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_tasas_cambio ADD PRIMARY KEY (smn_tasas_de_cambio_id);
ALTER TABLE smn_base.smn_tasas_cambio ADD CONSTRAINT FK_smn_tasas_cambio_0 FOREIGN KEY (smn_monedas_id) REFERENCES smn_base.smn_monedas (smn_monedas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_impuestos ADD PRIMARY KEY (smn_impuestos_id);

ALTER TABLE smn_base.smn_unidades_impositivas ADD PRIMARY KEY (smn_unidades_impositivas_id);

ALTER TABLE smn_base.smn_tasas_impositivas ADD PRIMARY KEY (smn_tasas_impositivas_id);
ALTER TABLE smn_base.smn_tasas_impositivas ADD CONSTRAINT FK_smn_tasas_impositivas_0 FOREIGN KEY (smn_unidades_impositivas_id) REFERENCES smn_base.smn_unidades_impositivas (smn_unidades_impositivas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_periodos ADD PRIMARY KEY (smn_periodos_id);

ALTER TABLE smn_base.smn_cuentas_bancarias ADD PRIMARY KEY (smn_cuentas_bancarias_id);

ALTER TABLE smn_base.smn_tipo_cuenta_banco ADD PRIMARY KEY (smn_tipo_cuenta_banco_id);

ALTER TABLE smn_base.smn_menu_traduccion ADD PRIMARY KEY (smn_menu_traduccion_id);

ALTER TABLE smn_base.smn_servicio_traduccion ADD PRIMARY KEY (smn_servicio_traduccion_id);

ALTER TABLE smn_base.smn_tipo_auxiliar ADD PRIMARY KEY (smn_tipo_auxiliar_id);

ALTER TABLE smn_base.smn_clase_auxiliar ADD PRIMARY KEY (smn_clase_auxiliar_id);
ALTER TABLE smn_base.smn_clase_auxiliar ADD CONSTRAINT FK_smn_clase_auxiliar_0 FOREIGN KEY (smn_tipo_auxiliar_id) REFERENCES smn_base.smn_tipo_auxiliar (smn_tipo_auxiliar_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_centro_costo ADD PRIMARY KEY (smn_centro_costo_id);
ALTER TABLE smn_base.smn_centro_costo ADD CONSTRAINT FK_smn_centro_costo_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_auxiliar_nat ADD PRIMARY KEY (smn_auxiliar_nat_id);

ALTER TABLE smn_base.smn_condicion_pago ADD PRIMARY KEY (smn_condicion_pago_id);

ALTER TABLE smn_base.smn_tipo_doc_oficial ADD PRIMARY KEY (smn_tipo_doc_oficial_id);

ALTER TABLE smn_base.smn_tipo_via ADD PRIMARY KEY (smn_tipo_via_id);

ALTER TABLE smn_base.smn_edificacion ADD PRIMARY KEY (smn_edificacion_id);

ALTER TABLE smn_base.smn_tipo_localidad ADD PRIMARY KEY (smn_tipo_localidad_id);

ALTER TABLE smn_base.smn_tipo_terceros ADD PRIMARY KEY (smn_tipo_terceros_id);

ALTER TABLE smn_base.smn_panel ADD PRIMARY KEY (smn_panel_id);

ALTER TABLE smn_base.smn_feriados ADD PRIMARY KEY (smn_feriados_id);

ALTER TABLE smn_base.smn_servicios ADD PRIMARY KEY (smn_servicios_id);

ALTER TABLE smn_base.smn_tipos_servicios ADD PRIMARY KEY (smn_tipos_servicios_id);

ALTER TABLE smn_base.smn_areas_servicios ADD PRIMARY KEY (smn_areas_servicios_id);
ALTER TABLE smn_base.smn_areas_servicios ADD CONSTRAINT FK_smn_areas_servicios_0 FOREIGN KEY (smn_tipos_servicios_id) REFERENCES smn_base.smn_tipos_servicios (smn_tipos_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_unidades_servicios ADD PRIMARY KEY (smn_unidades_servicios_id);
ALTER TABLE smn_base.smn_unidades_servicios ADD CONSTRAINT FK_smn_unidades_servicios_0 FOREIGN KEY (smn_areas_servicios_id) REFERENCES smn_base.smn_areas_servicios (smn_areas_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_baremos ADD PRIMARY KEY (smn_baremos_id);

ALTER TABLE smn_base.smn_servicios_baremos ADD PRIMARY KEY (smn_servicios_baremos_id);
ALTER TABLE smn_base.smn_servicios_baremos ADD CONSTRAINT FK_smn_servicios_baremos_0 FOREIGN KEY (smn_servicios_id) REFERENCES smn_base.smn_servicios (smn_servicios_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_servicios_baremos ADD CONSTRAINT FK_smn_servicios_baremos_1 FOREIGN KEY (smn_baremos_id) REFERENCES smn_base.smn_baremos (smn_baremos_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_componentes ADD PRIMARY KEY (smn_componentes_id);
ALTER TABLE smn_base.smn_componentes ADD CONSTRAINT FK_smn_componentes_0 FOREIGN KEY (smn_servicios_id) REFERENCES smn_base.smn_servicios (smn_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_configuracion ADD PRIMARY KEY (smn_configuracion_id);

ALTER TABLE smn_base.smn_almacen ADD PRIMARY KEY (smn_almacen_id);

ALTER TABLE smn_base.smn_transaccion_general ADD PRIMARY KEY (smn_transaccion_id);

ALTER TABLE smn_base.smn_prestaciones ADD PRIMARY KEY (smn_prestaciones_id);

ALTER TABLE smn_base.smn_formas_pago ADD PRIMARY KEY (smn_formas_pago_id);

ALTER TABLE smn_base.smn_mensajes ADD PRIMARY KEY (smn_mensajes_id);

ALTER TABLE smn_base.smn_contactos ADD PRIMARY KEY (smn_contactos_id);

ALTER TABLE smn_base.smn_respuestas ADD PRIMARY KEY (smn_respuestas_id);
ALTER TABLE smn_base.smn_respuestas ADD CONSTRAINT FK_smn_respuestas_0 FOREIGN KEY (smn_mensajes_id) REFERENCES smn_base.smn_mensajes (smn_mensajes_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_mensajes_contactos ADD PRIMARY KEY (smn_mensajes_contactos_id);
ALTER TABLE smn_base.smn_mensajes_contactos ADD CONSTRAINT FK_smn_mensajes_contactos_0 FOREIGN KEY (smn_contactos_id) REFERENCES smn_base.smn_contactos (smn_contactos_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_mensajes_contactos ADD CONSTRAINT FK_smn_mensajes_contactos_1 FOREIGN KEY (smn_mensajes_id) REFERENCES smn_base.smn_mensajes (smn_mensajes_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_modelos_contratos ADD PRIMARY KEY (smn_modelos_contratos_id);

ALTER TABLE smn_base.smn_agenda ADD PRIMARY KEY (smn_agenda_id);

ALTER TABLE smn_base.smn_agenda_horario ADD PRIMARY KEY (smn_agenda_hora_id);
ALTER TABLE smn_base.smn_agenda_horario ADD CONSTRAINT FK_smn_agenda_horario_0 FOREIGN KEY (smn_agenda_id) REFERENCES smn_base.smn_agenda (smn_agenda_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_prestadores_servicios ADD PRIMARY KEY (smn_prestadores_servicios_id);

ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD PRIMARY KEY (smn_prestadores_servicios_agenda_id);
ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD CONSTRAINT FK_smn_prestadores_servicios_agenda_0 FOREIGN KEY (smn_prestadores_servicios_id) REFERENCES smn_base.smn_prestadores_servicios (smn_prestadores_servicios_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_prestadores_servicios_agenda ADD CONSTRAINT FK_smn_prestadores_servicios_agenda_1 FOREIGN KEY (smn_agenda_id) REFERENCES smn_base.smn_agenda (smn_agenda_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_terceros ADD PRIMARY KEY (smn_terceros_id);

ALTER TABLE smn_base.smn_terceros_usuarios ADD PRIMARY KEY (smn_terceros_usuarios_id);
ALTER TABLE smn_base.smn_terceros_usuarios ADD CONSTRAINT FK_smn_terceros_usuarios_0 FOREIGN KEY (smn_terceros_id) REFERENCES smn_base.smn_terceros (smn_terceros_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_terceros_sucursales ADD PRIMARY KEY (smn_terceros_sucursales_id);
ALTER TABLE smn_base.smn_terceros_sucursales ADD CONSTRAINT FK_smn_terceros_sucursales_0 FOREIGN KEY (smn_terceros_id) REFERENCES smn_base.smn_terceros (smn_terceros_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_terceros_modulos ADD PRIMARY KEY (smn_terceros_modulos_id);
ALTER TABLE smn_base.smn_terceros_modulos ADD CONSTRAINT FK_smn_terceros_modulos_0 FOREIGN KEY (smn_terceros_id) REFERENCES smn_base.smn_terceros (smn_terceros_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_terceros_unidades_negocios ADD PRIMARY KEY (smn_terceros_unidades_negocios_id);
ALTER TABLE smn_base.smn_terceros_unidades_negocios ADD CONSTRAINT FK_smn_terceros_unidades_negocios_0 FOREIGN KEY (smn_terceros_id) REFERENCES smn_base.smn_terceros (smn_terceros_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_terceros_centro_costo ADD PRIMARY KEY (smn_terceros_centro_costo_id);
ALTER TABLE smn_base.smn_terceros_centro_costo ADD CONSTRAINT FK_smn_terceros_centro_costo_0 FOREIGN KEY (smn_terceros_id) REFERENCES smn_base.smn_terceros (smn_terceros_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_componentes_prestadores_servicios ADD PRIMARY KEY (smn_componentes_prestadores_servicios_id);
ALTER TABLE smn_base.smn_componentes_prestadores_servicios ADD CONSTRAINT FK_smn_componentes_prestadores_servicios_0 FOREIGN KEY (smn_componentes_id) REFERENCES smn_base.smn_componentes (smn_componentes_id) ON DELETE CASCADE;
ALTER TABLE smn_base.smn_componentes_prestadores_servicios ADD CONSTRAINT FK_smn_componentes_prestadores_servicios_1 FOREIGN KEY (smn_prestadores_servicios_id) REFERENCES smn_base.smn_prestadores_servicios (smn_prestadores_servicios_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_direccion ADD PRIMARY KEY (smn_direccion_id);

ALTER TABLE smn_base.smn_personas_naturales ADD PRIMARY KEY (smn_personas_id);

ALTER TABLE smn_base.smn_auxiliar_jur ADD PRIMARY KEY (smn_auxiliar_jur_id);

ALTER TABLE smn_base.smn_personas_juridicas ADD PRIMARY KEY (smn_auxiliar_id);

ALTER TABLE smn_base.smn_terceros_corporaciones ADD PRIMARY KEY (smn_terceros_corporaciones_id);

ALTER TABLE smn_base.smn_terceros_comunidades ADD PRIMARY KEY (smn_terceros_comunidades_id);

