DROP TABLE smn_base.smn_servicio_traduccion;
DROP TABLE smn_base.smn_menu_traduccion;
DROP TABLE smn_base.smn_tipo_cuenta_banco;
DROP TABLE smn_base.smn_cuentas_bancarias;
DROP TABLE smn_base.smn_centro_costo;
DROP TABLE smn_base.smn_periodos;
DROP TABLE smn_base.smn_tasas_impositivas;
DROP TABLE smn_base.smn_unidades_impositivas;
DROP TABLE smn_base.smn_impuestos;
DROP TABLE smn_base.smn_tasas_de_cambio;
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
  ent_corporacion  INTEGER,
  ent_comunidad INTEGER,
  ent_sector_economico INTEGER,
  ent_descripcion_corta VARCHAR(24) NOT NULL,
  ent_descripcion_larga VARCHAR(56) NOT NULL,
  ent_tercero CHARACTER(1) NOT NULL,
  ent_nro_id_fiscal VARCHAR(12) NOT NULL,
  ent_direccion1 VARCHAR(56) NOT NULL,
  ent_direccion2 VARCHAR(56),
  ent_pais INTEGER NOT NULL,
  ent_entidad_federal INTEGER NOT NULL,
  ent_ciudad INTEGER NOT NULL,
  ent_zona_postal INTEGER NOT NULL,
  ent_contacto VARCHAR(56) NOT NULL,
  ent_telefono_fijo VARCHAR(24) NOT NULL,
  ent_telefono_movil VARCHAR(24),
  ent_email VARCHAR(96) NOT NULL,
  ent_act_economica1 VARCHAR(56) NOT NULL,
  ent_act_economica2 VARCHAR(56),
  ent_idioma CHARACTER(2) NOT NULL,
  ent_usuario VARCHAR(10) NOT NULL,
  ent_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_entidades IS 'Entidades';
COMMENT ON COLUMN smn_base.smn_entidades.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_entidades.ent_codigo IS 'Código Entidad';
COMMENT ON COLUMN smn_base.smn_entidades.ent_corporacion  IS 'Corporacion@{select smn_corporaciones_id as id, crp_codigo || '-' || crp_nombre as item from smn_base.smn_corporaciones order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_comunidad IS 'Comunidad@{select smn_comunidades_id as id, cmn_codigo || '-' || cmn_nombre as item from smn_base.smn_comunidades order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_sector_economico IS 'Sector Economico@{select smn_sectores_economicos_id as id, sec_codigo || '-' || sec_nombre as item from smn_base.smn_sectores_economicos order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_descripcion_corta IS 'Descripción Corta';
COMMENT ON COLUMN smn_base.smn_entidades.ent_descripcion_larga IS 'Descripción Larga';
COMMENT ON COLUMN smn_base.smn_entidades.ent_tercero IS 'Tercero@{S=Si|N=No}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_nro_id_fiscal IS 'Nº Identificacion Fiscal';
COMMENT ON COLUMN smn_base.smn_entidades.ent_direccion1 IS 'Dirección 1 ';
COMMENT ON COLUMN smn_base.smn_entidades.ent_direccion2 IS 'Direccion 2';
COMMENT ON COLUMN smn_base.smn_entidades.ent_pais IS 'País@{select smn_pais_id as id, pai_codigo || '-' || pai_nombre_corto as item from smn_base.smn_paises order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_entidad_federal IS 'Entidad Federal@{select smn_entidades_federales_id as id, efe_codigo || '-' || efe_nombre_corto as item from smn_base.smn_entidades_federales order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_ciudad IS 'Ciudad@{select smn_ciudades_id as id, ciu_codigo || '-' || ciu_nombre_corto as item from smn_base.smn_ciudades order by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_zona_postal IS 'Zona Postal@{select smn_zonas_postales_id as id, zpo_codigo as item from smn_base.smn_zonas_postales orrder by 2}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_contacto IS 'Nombre Persona Contacto';
COMMENT ON COLUMN smn_base.smn_entidades.ent_telefono_fijo IS 'No Teléfono Fijo';
COMMENT ON COLUMN smn_base.smn_entidades.ent_telefono_movil IS 'No Teléfono Fijo';
COMMENT ON COLUMN smn_base.smn_entidades.ent_email IS 'Dirección de Correo';
COMMENT ON COLUMN smn_base.smn_entidades.ent_act_economica1 IS 'Actividad Económica 1';
COMMENT ON COLUMN smn_base.smn_entidades.ent_act_economica2 IS 'Actividad Económica 2';
COMMENT ON COLUMN smn_base.smn_entidades.ent_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_entidades.ent_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_entidades;


CREATE TABLE smn_base.smn_usuarios(
  smn_usuarios_id INTEGER NOT NULL,
  usr_usuario_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  usr_codigo VARCHAR(12) NOT NULL,
  usr_nombre VARCHAR(32) NOT NULL,
  usr_apellido VARCHAR(32) NOT NULL,
  usr_nacionalidad INTEGER NOT NULL,
  usr_nro_doc_identidad VARCHAR(10) NOT NULL,
  usr_nro_id_fiscal VARCHAR(10),
  usr_direccion1 VARCHAR(56) NOT NULL,
  usr_direccion2 VARCHAR(56),
  usr_pais INTEGER NOT NULL,
  usr_entidad_federal INTEGER NOT NULL,
  usr_ciudad INTEGER NOT NULL,
  usr_zona_postal VARCHAR(12) NOT NULL,
  usr_email VARCHAR(96) NOT NULL,
  usr_telefono_fijo VARCHAR(24) NOT NULL,
  usr_telefono_movil VARCHAR(24) NOT NULL,
  usr_idioma CHARACTER(2) NOT NULL,
  usr_usuario VARCHAR(10) NOT NULL,
  usr_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_usuarios IS 'Usuarios';
COMMENT ON COLUMN smn_base.smn_usuarios.smn_usuarios_id IS 'ID de usuario';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_usuario_id IS 'Usuario@{select user_id as id, userlogin || ' - ' || lname as item from smn_seguridad.s_user order by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_codigo IS 'Código de usuario o alias';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_nombre IS 'Nombre asociado al usuario o al alias';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_apellido IS 'Apellido asociado al usuario o al alias';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_nacionalidad IS 'Nacionalidad@{select smn_paises_id as id, pai_codigo || '-' || pai_gentilicio as item from smn_base.smn_paises order by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_nro_doc_identidad IS 'Número de documento de identidad';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_nro_id_fiscal IS 'Número de identificación fiscal';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_direccion1 IS 'Dirección 1';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_direccion2 IS 'Dirección 2';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_pais IS 'País@{select smn_paises_id as id, pai_codigo || '-' || pai_nombre_corto as item from smn_base.smn_paises order by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_entidad_federal IS 'Entidad Federal@{select smn_entidades_federales_id as id, efe_codigo || '-' || efe_nombre_corto as item from smn_base.smn_entidades_federales order by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_ciudad IS 'Ciudad@{select smn_ciudades_id as id, ciu_codigo || '-' || ciu_nombre_corto as item from smn_base.smn_ciudades order by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_zona_postal IS 'Zona Postal@{select smn_zonas_postales_id as id, zpo_codigo as item from smn_base.smn_zonas_postales orrder by 2}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_email IS 'Dirección de Correo';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_telefono_fijo IS 'Teléfino Fijo';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_telefono_movil IS 'Teléfono Móvil';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_usuarios.usr_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_usuarios;


CREATE TABLE smn_base.smn_sucursales(
  smn_sucursales_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  suc_codigo VARCHAR(12) NOT NULL,
  suc_nombre VARCHAR(56) NOT NULL,
  suc_responsable VARCHAR(56) NOT NULL,
  suc_direccion1 VARCHAR(56) NOT NULL,
  suc_direccion2 VARCHAR(56),
  suc_pais INTEGER NOT NULL,
  suc_entidad_federal INTEGER NOT NULL,
  suc_ciudad INTEGER NOT NULL,
  suc_zona_postal INTEGER NOT NULL,
  suc_telefono_fijo VARCHAR(24) NOT NULL,
  suc_telefono_movil VARCHAR(24) NOT NULL,
  suc_email VARCHAR(96) NOT NULL,
  suc_idioma CHARACTER(2) NOT NULL,
  suc_usuario VARCHAR(10) NOT NULL,
  suc_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_sucursales IS 'Sucursales';
COMMENT ON COLUMN smn_base.smn_sucursales.smn_sucursales_id IS 'Sucursal';
COMMENT ON COLUMN smn_base.smn_sucursales.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_codigo IS 'Código Sucursal';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_nombre IS 'Nombre Sucursal';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_responsable IS 'Responsable';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_direccion1 IS 'Dirección 1';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_direccion2 IS 'Direccion 2';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_pais IS 'País@{select smn_paises_id as id, pai_codigo || '-' || pai_nombre_corto as item from smn_base.smn_paises order by 2}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_entidad_federal IS 'Entidad Federal@{select smn_entidades_federales_id as id, efe_codigo || '-' || efe_nombre_corto as item from smn_base.smn_entidades_federales order by 2}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_ciudad IS 'Ciudad@{select smn_ciudades_id as id, ciu_codigo || '-' || ciu_nombre_corto as item from smn_base.smn_ciudades order by 2}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_zona_postal IS 'Zona Postal@{select smn_zonas_postales_id as id, zpo_codigo as item from smn_base.smn_zonas_postales orrder by 2}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_telefono_fijo IS 'Teléfono Fijo';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_telefono_movil IS 'Teléfono Móvil';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_email IS 'Dirección de Correo';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_sucursales.suc_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_sucursales;


CREATE TABLE smn_base.smn_sectores_economicos(
  smn_sectores_economicos_id INTEGER NOT NULL,
  sec_codigo VARCHAR(8) NOT NULL,
  sec_descripcion VARCHAR(56) NOT NULL,
  sec_idioma CHARACTER(2) NOT NULL,
  sec_usuario VARCHAR(10) NOT NULL,
  sec_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_sectores_economicos IS 'Sector Comercial';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.smn_sectores_economicos_id IS 'ID de sectores económicos';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.sec_codigo IS 'Código del sector económico';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.sec_descripcion IS 'Descripcion asociada al sector económico';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.sec_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.sec_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_sectores_economicos.sec_fecha_registro IS 'Fecha de Creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_sectores_economicos;


CREATE TABLE smn_base.smn_comunidades(
  smn_comunidades_id INTEGER NOT NULL,
  cmn_codigo VARCHAR(8) NOT NULL,
  cmn_nombre VARCHAR(56) NOT NULL,
  cmn_idioma CHARACTER(2) NOT NULL,
  cmn_usuario VARCHAR(10) NOT NULL,
  cmn_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_comunidades IS 'Comunidades';
COMMENT ON COLUMN smn_base.smn_comunidades.smn_comunidades_id IS 'ID de comunidades';
COMMENT ON COLUMN smn_base.smn_comunidades.cmn_codigo IS 'Código de comunidad';
COMMENT ON COLUMN smn_base.smn_comunidades.cmn_nombre IS 'Nombre asociado a la comunidad';
COMMENT ON COLUMN smn_base.smn_comunidades.cmn_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_comunidades.cmn_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_comunidades.cmn_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_comunidades;


CREATE TABLE smn_base.smn_paises(
  smn_paises_id INTEGER NOT NULL,
  pai_codigo VARCHAR(3) NOT NULL,
  pai_nombre_corto VARCHAR(32) NOT NULL,
  pai_nombre_largo VARCHAR(56) NOT NULL,
  pai_gentilicio VARCHAR(32) NOT NULL,
  pai_idioma CHARACTER(2) NOT NULL,
  pai_usuario VARCHAR(10) NOT NULL,
  pai_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_paises IS 'Paises';
COMMENT ON COLUMN smn_base.smn_paises.smn_paises_id IS 'Identificación País		';
COMMENT ON COLUMN smn_base.smn_paises.pai_codigo IS 'Código País';
COMMENT ON COLUMN smn_base.smn_paises.pai_nombre_corto IS 'Nombre Corto';
COMMENT ON COLUMN smn_base.smn_paises.pai_nombre_largo IS 'Nombre Largo';
COMMENT ON COLUMN smn_base.smn_paises.pai_gentilicio IS 'Gentilicio';
COMMENT ON COLUMN smn_base.smn_paises.pai_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_paises.pai_usuario IS 'Usuario de Creación@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_paises.pai_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_paises;


CREATE TABLE smn_base.smn_entidades_federales(
  smn_entidades_federales_id INTEGER NOT NULL,
  smn_paises_id INTEGER NOT NULL,
  efe_codigo VARCHAR(3) NOT NULL,
  efe_nombre_corto VARCHAR(32) NOT NULL,
  efe_nombre_largo VARCHAR(56) NOT NULL,
  efe_idioma CHARACTER(2) NOT NULL,
  efe_usuario VARCHAR(10) NOT NULL,
  efe_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_entidades_federales IS 'Entidades Federales';
COMMENT ON COLUMN smn_base.smn_entidades_federales.smn_entidades_federales_id IS 'Identificación Entidad Federal ';
COMMENT ON COLUMN smn_base.smn_entidades_federales.smn_paises_id IS 'Identificación País		';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_codigo IS 'Código Entidad Federal';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_nombre_corto IS 'Nombre Corto';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_nombre_largo IS 'Nombre Largo';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_usuario IS 'Usuario de Creación@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_entidades_federales.efe_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_entidades_federales;


CREATE TABLE smn_base.smn_ciudades(
  smn_ciudades_id INTEGER NOT NULL,
  smn_entidades_federales_id INTEGER NOT NULL,
  ciu_codigo VARCHAR(3) NOT NULL,
  ciu_nombre_corto VARCHAR(32) NOT NULL,
  ciu_nombre_largo VARCHAR(56) NOT NULL,
  ciu_idioma CHARACTER(2) NOT NULL,
  ciu_usuario VARCHAR(10) NOT NULL,
  ciu_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_ciudades IS 'Ciudades';
COMMENT ON COLUMN smn_base.smn_ciudades.smn_ciudades_id IS 'Identificación Ciudad';
COMMENT ON COLUMN smn_base.smn_ciudades.smn_entidades_federales_id IS 'Identificación Entidad Federal ';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_codigo IS 'Código';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_nombre_corto IS 'Nombre Corto';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_nombre_largo IS 'Nombre Largo';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_usuario IS 'Usuario de Creación@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_ciudades.ciu_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_ciudades;


CREATE TABLE smn_base.smn_modulos(
  smn_modulos_id INTEGER NOT NULL,
  smn_app_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  mod_codigo VARCHAR(8) NOT NULL,
  mod_nombre VARCHAR(56) NOT NULL,
  mod_idioma CHARACTER(2) NOT NULL,
  mod_usuario VARCHAR(10) NOT NULL,
  mod_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_modulos IS 'Modulos Desarrollados';
COMMENT ON COLUMN smn_base.smn_modulos.smn_modulos_id IS 'Comunidad';
COMMENT ON COLUMN smn_base.smn_modulos.smn_app_id IS 'Aplicación@{select app_id as id, app_alias || ' - ' || description as item from smn_seguridad.s_application order by 2}';
COMMENT ON COLUMN smn_base.smn_modulos.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_modulos.mod_codigo IS 'Código Módulo';
COMMENT ON COLUMN smn_base.smn_modulos.mod_nombre IS 'Nombre Comunidad';
COMMENT ON COLUMN smn_base.smn_modulos.mod_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_modulos.mod_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_modulos.mod_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_modulos;


CREATE TABLE smn_base.smn_corporaciones(
  smn_corporaciones_id INTEGER NOT NULL,
  crp_codigo VARCHAR(8) NOT NULL,
  crp_nombre VARCHAR(56) NOT NULL,
  crp_ubicacion INTEGER NOT NULL,
  crp_idioma CHARACTER(2) NOT NULL,
  crp_usuario VARCHAR(10) NOT NULL,
  crp_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_corporaciones IS 'Corporaciones';
COMMENT ON COLUMN smn_base.smn_corporaciones.smn_corporaciones_id IS 'Corporacion';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_codigo IS 'Codigo Corporacion';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_nombre IS 'Nombre Corporacion';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_ubicacion IS 'Ubicacion@{(Select Zona Postal, Ciudad, Entidades Federales, Paises)}';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_corporaciones.crp_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_corporaciones;


CREATE TABLE smn_base.smn_unidades_negocios(
  smn_unidades_negocios_id INTEGER NOT NULL,
  smn_entidades_id INTEGER NOT NULL,
  uen_codigo VARCHAR(8) NOT NULL,
  uen_nombre VARCHAR(56) NOT NULL,
  uen_responsable VARCHAR(56) NOT NULL,
  uen_direccion1 VARCHAR(56) NOT NULL,
  uen_direccion2 VARCHAR(56),
  uen_zona_postal INTEGER NOT NULL,
  uen_telefono_fijo VARCHAR(24) NOT NULL,
  uen_telefono_movil VARCHAR(24) NOT NULL,
  uen_email VARCHAR(96) NOT NULL,
  uen_idioma CHARACTER(2) NOT NULL,
  uen_usuario VARCHAR(10) NOT NULL,
  uen_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_unidades_negocios IS 'Unidades Estrategicas de Negocios';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.smn_unidades_negocios_id IS 'Id Unidades de Negocios ';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_codigo IS 'Código Unidad Estrategica de Negocio';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_nombre IS 'Nombre UEN';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_responsable IS 'Responsable';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_direccion1 IS 'Dirección 1';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_direccion2 IS 'Direccion 2';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_zona_postal IS 'Zona Postal@{select smn_zonas_postales_id as id, zpo_codigo as item from smn_base.smn_zonas_postales orrder by 2}';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_telefono_fijo IS 'Teléfono Fijo';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_telefono_movil IS 'Teléfono Móvil';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_email IS 'Dirección de Correo';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_unidades_negocios.uen_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_unidades_negocios;


CREATE TABLE smn_base.smn_monedas(
  smn_monedas_id INTEGER NOT NULL,
  mon_codigo VARCHAR(3) NOT NULL,
  mon_nombre VARCHAR(56) NOT NULL,
  mon_idioma CHARACTER(2) NOT NULL,
  mon_usuario VARCHAR(10) NOT NULL,
  mon_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_monedas IS 'Moneda';
COMMENT ON COLUMN smn_base.smn_monedas.smn_monedas_id IS 'ID de moneda';
COMMENT ON COLUMN smn_base.smn_monedas.mon_codigo IS 'Código asociado a la moneda';
COMMENT ON COLUMN smn_base.smn_monedas.mon_nombre IS 'Nombre asociado a la moneda';
COMMENT ON COLUMN smn_base.smn_monedas.mon_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_monedas.mon_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_monedas.mon_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_monedas;


CREATE TABLE smn_base.smn_entidades_financieras(
  smn_entidades_financieras_id INTEGER NOT NULL,
  efi_codigo VARCHAR(8) NOT NULL,
  efi_nombre VARCHAR(56) NOT NULL,
  efi_direccion1 VARCHAR(56) NOT NULL,
  efi_direccion2 VARCHAR(56),
  efi_zonapostal INTEGER NOT NULL,
  efi_telefono_fijo VARCHAR(24) NOT NULL,
  efi_telefono_movil VARCHAR(24) NOT NULL,
  efi_codigo_aba VARCHAR(16),
  efi_codigo_swift VARCHAR(16),
  efi_contacto VARCHAR(56),
  efi_idioma CHARACTER(2) NOT NULL,
  efi_usuario VARCHAR(10) NOT NULL,
  efi_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_entidades_financieras IS 'Entidades Financieras';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.smn_entidades_financieras_id IS 'Entidades Financieras';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_codigo IS 'Codigo Entidad Financiera';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_nombre IS 'Nombre Corporacion';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_direccion1 IS 'Direccion 1';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_direccion2 IS 'Direccion 2';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_zonapostal IS 'Zona Postal@{select smn_zonas_postales_id as id, zpo_codigo as item from smn_base.smn_zonas_postales orrder by 2}';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_telefono_fijo IS 'Telefono Fijo';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_telefono_movil IS 'Telefono Movil';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_codigo_aba IS 'Codigo ABA';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_codigo_swift IS 'Codigo SWIFT';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_contacto IS 'Ejecutivo de Cuenta';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_entidades_financieras.efi_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_entidades_financieras;


CREATE TABLE smn_base.smn_zonas_postales(
  smn_zonas_postales_id INTEGER NOT NULL,
  smn_ciudades_id INTEGER NOT NULL,
  zpo_codigo VARCHAR(12) NOT NULL,
  zpo_idioma CHARACTER(2) NOT NULL,
  zpo_usuario VARCHAR(10) NOT NULL,
  zpo_fecha DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_zonas_postales IS 'Zonas Postales';
COMMENT ON COLUMN smn_base.smn_zonas_postales.smn_zonas_postales_id IS 'Zona Postal';
COMMENT ON COLUMN smn_base.smn_zonas_postales.smn_ciudades_id IS 'Identificación Ciudad';
COMMENT ON COLUMN smn_base.smn_zonas_postales.zpo_codigo IS 'Entidad Federal';
COMMENT ON COLUMN smn_base.smn_zonas_postales.zpo_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_zonas_postales.zpo_usuario IS 'Usuario de Creación@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_zonas_postales.zpo_fecha IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_zonas_postales;


CREATE TABLE smn_base.smn_tasas_de_cambio(
  smn_tasas_de_cambio_id INTEGER NOT NULL,
  smn_monedas_id INTEGER NOT NULL,
  tca_codigo VARCHAR(3) NOT NULL,
  tca_fecha_vigencia DATE NOT NULL,
  tca_tasa_cambio DOUBLE PRECISION NOT NULL,
  tca_idioma CHARACTER(2) NOT NULL,
  tca_usuario VARCHAR(10) NOT NULL,
  tca_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_tasas_de_cambio IS 'Tasa de Cambio';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.smn_tasas_de_cambio_id IS 'ID de tasas de cambio';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.smn_monedas_id IS 'ID de moneda';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_codigo IS 'Código Moneda';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_fecha_vigencia IS 'Fecha Vigencia ';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_tasa_cambio IS 'Tasa de Cambio';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_tasas_de_cambio.tca_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_tasas_de_cambio;


CREATE TABLE smn_base.smn_impuestos(
  smn_impuestos_id INTEGER NOT NULL,
  imp_codigo VARCHAR(3) NOT NULL,
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
  imp_fecha_registro DATE NOT NULL
);
COMMENT ON COLUMN smn_base.smn_impuestos.smn_impuestos_id IS 'Id Impuestos';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_codigo IS 'Código de Impuesto	';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_descripcion IS 'Descripcion ';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_tipo_codigo IS 'Tipo de Código@{VA=Valor Agregado|RE=Retencion}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_modalidad_registro IS 'Donde se Registra@{OB=Obligacion|PA=Pago}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_porcentaje_base IS 'Porcentaje Base';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_porcentaje_calculo IS 'Porcentaje Cálculo	';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_tipo_libro IS 'Tipo de Libro@{CO=Compras|VE=Ventas|RE=Retenciones}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_tipo_persona IS 'Tipo de Persona@{NA=Natural|JU=Juridica}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_tipo_contribuyente IS 'Tipo de Contribuyente@{FO=Formal|OR=Ordinario|NC=No Contribuyente|ES=Especial}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_unidad_impositiva IS 'Codigo Unidad Impositiva@{select smn_unidades_impositivas_id as id, uim_codigo || '-' || uim_descripcion as item from smn_base.smn_unidades_impositivas order by 2}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_ui_minima IS 'Unidades Impositiva Minimas';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_ui_maxima IS 'Unidades Impositiva Maximas';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_ui_sustraendo IS 'Unidades  Impositiva Sustraendo ';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_monto_minimo IS 'Monto Minimo';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_monto_maximo IS 'Monto Maximo';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_monto_sustraendo IS 'Monto Sustraendo';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_impuestos.imp_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_impuestos;


CREATE TABLE smn_base.smn_unidades_impositivas(
  smn_unidades_impositivas_id INTEGER NOT NULL,
  uim_codigo VARCHAR(3) NOT NULL,
  uim_descripcion VARCHAR(56) NOT NULL,
  uim_idioma CHARACTER(2) NOT NULL,
  uim_usuario VARCHAR(10) NOT NULL,
  uim_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_unidades_impositivas IS 'Unidades Impositivas';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id IS 'Id Unidades Impositivas';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.uim_codigo IS 'Código Unidad Impositiva';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.uim_descripcion IS 'Descripcion Unidad Impositiva';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.uim_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.uim_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_unidades_impositivas.uim_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_unidades_impositivas;


CREATE TABLE smn_base.smn_tasas_impositivas(
  smn_tasas_impositivas_id INTEGER NOT NULL,
  smn_unidades_impositivas_id INTEGER NOT NULL,
  tim_codigo VARCHAR(3) NOT NULL,
  tim_descripcion VARCHAR(56) NOT NULL,
  tim_valor DOUBLE PRECISION NOT NULL,
  tim_fecha_vigencia DATE NOT NULL,
  tim_idioma CHARACTER(2) NOT NULL,
  tim_usuario VARCHAR(10) NOT NULL,
  tim_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_tasas_impositivas IS 'Tasas Impositivas';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.smn_tasas_impositivas_id IS 'ID de unidades impositivas';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.smn_unidades_impositivas_id IS 'ID de unidades impositivas';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_codigo IS 'Código Unidad Impositiva';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_descripcion IS 'Descripcion Unidad Impositiva';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_valor IS 'Valor Unidad Impositiva';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_fecha_vigencia IS 'Fecha Vigencia ';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_tasas_impositivas.tim_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_tasas_impositivas;


CREATE TABLE smn_base.smn_periodos(
  smn_periodos_id INTEGER NOT NULL,
  prd_codigo VARCHAR(3) NOT NULL,
  prd_descripcion VARCHAR(56) NOT NULL,
  prd_inicio_periodo DATE NOT NULL,
  prd_final_periodo DATE NOT NULL,
  prd_idioma CHARACTER(2) NOT NULL,
  prd_usuario VARCHAR(10) NOT NULL,
  prd_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_periodos IS 'Periodos';
COMMENT ON COLUMN smn_base.smn_periodos.smn_periodos_id IS 'Id Periodos';
COMMENT ON COLUMN smn_base.smn_periodos.prd_codigo IS 'Código Período';
COMMENT ON COLUMN smn_base.smn_periodos.prd_descripcion IS 'Descripcion Período';
COMMENT ON COLUMN smn_base.smn_periodos.prd_inicio_periodo IS 'Dia-Mes Inicio Periodo';
COMMENT ON COLUMN smn_base.smn_periodos.prd_final_periodo IS 'Dia-Mes Final Período';
COMMENT ON COLUMN smn_base.smn_periodos.prd_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_periodos.prd_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_periodos.prd_fecha_registro IS 'Fecha de Registro@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_periodos;


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
  cco_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_centro_costo IS 'Centros de Costo';
COMMENT ON COLUMN smn_base.smn_centro_costo.smn_centro_costo_id IS 'Id Centro de Costo';
COMMENT ON COLUMN smn_base.smn_centro_costo.smn_entidades_id IS 'Entidades	';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_codigo IS 'Código Centro de Costo';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_descripcion_corta IS 'Descripción Corta';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_descripcion_larga IS 'Descripción Larga';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_responsable IS 'Responsable Centro de Costo';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_tipo_cco IS 'Tipo Centro de Costo@{SR=Rentables|SE=Servicios|SP=Soporte|DG=Distribucion}';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_nivel IS 'Nivel';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_clase_auxiliar IS 'Clase Auxiliar asociada@{select smn_clase_auxiliar_id as id, cla_codigo || '-' || cla_nombre as item from smn_cont_financiera.smn_clase_auxiliar order by 2}';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_auxiliar IS 'Código Auxiliar@{select smn_auxiliar_id as id, aux_codigo || '-' || aux_nombre as item from smn_cont_financiera.smn_auxiliar order by 2}';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_centro_costo.cco_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_centro_costo;


CREATE TABLE smn_base.smn_cuentas_bancarias(
  smn_cuentas_bancarias_id INTEGER NOT NULL,
  smn_entidades_financieras_id INTEGER NOT NULL,
  cba_codigo VARCHAR(8) NOT NULL,
  cba_nombre VARCHAR(56) NOT NULL,
  cba_nro_cuenta VARCHAR(24) NOT NULL,
  cba_tipo_cta_banco INTEGER NOT NULL,
  cba_moneda INTEGER NOT NULL,
  cba_idioma CHARACTER(2) NOT NULL,
  cba_usuario VARCHAR(10) NOT NULL,
  cba_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_cuentas_bancarias IS 'Cuentas Bancarias';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id IS 'Id Cuentas Bancarias';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.smn_entidades_financieras_id IS 'Entidades Financieras';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_codigo IS 'Codigo Cuenta Bancaria';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_nombre IS 'Nombre Cuenta';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_nro_cuenta IS 'Nº Cuenta Bancaria';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_tipo_cta_banco IS 'Tipo de Cuenta Banco@{select smn_tipo_cuenta_banco_id as id, tcb_codigo || ' - ' || tcb_descripcion as item from smn_base.smn_tipo_cuenta_banco order by 2} ';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_moneda IS 'Moneda@{select smn_monedas_id as id, mon_codigo || '-' || mon_nombre as item from smn_base.smn_monedas order by 2}';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_cuentas_bancarias.cba_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_cuentas_bancarias;


CREATE TABLE smn_base.smn_tipo_cuenta_banco(
  smn_tipo_cuenta_banco_id INTEGER NOT NULL,
  tcb_codigo VARCHAR(8) NOT NULL,
  tcb_descripcion VARCHAR(32) NOT NULL,
  tcb_idioma VARCHAR(2) NOT NULL,
  tcb_usuario VARCHAR(10) NOT NULL,
  tcb_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_tipo_cuenta_banco IS 'Tipo de Cuenta de Banco';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id IS 'ID de tipo de cuenta de banco';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.tcb_codigo IS 'Código';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.tcb_descripcion IS 'Descripción';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.tcb_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.tcb_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_tipo_cuenta_banco.tcb_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_tipo_cuenta_banco;


CREATE TABLE smn_base.smn_menu_traduccion(
  smn_menu_traduccion_id INTEGER NOT NULL,
  mnt_app_id INTEGER NOT NULL,
  mnt_menu_id INTEGER NOT NULL,
  mnt_title VARCHAR(100) NOT NULL,
  mnt_locale CHARACTER(2) NOT NULL,
  mnt_idioma CHARACTER(2) NOT NULL,
  mnt_usuario VARCHAR(10) NOT NULL,
  mnt_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_menu_traduccion IS 'Definición de menus en otros lenguajes';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.smn_menu_traduccion_id IS 'ID de definición de menus en otros lenguajes';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_app_id IS 'Aplicación@{select app_id as id, app_alias as item from smn_seguridad.s_application order by 1}';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_menu_id IS 'Menú@{select menu_id as id, title as item from smn_seguridad.s_menu order by 2}';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_title IS 'Título del menú, así aparecerá en la página web';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_locale IS 'Código Idioma@{es=Español|en=Inglés|fr=Francés|de=Alemán|pt=Portugués|it=Italiano}';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_menu_traduccion.mnt_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_menu_traduccion;


CREATE TABLE smn_base.smn_servicio_traduccion(
  smn_servicio_traduccion_id INTEGER NOT NULL,
  set_app_id INTEGER NOT NULL,
  set_menu_id INTEGER NOT NULL,
  set_menu VARCHAR(100) NOT NULL,
  set_servicio_id INTEGER NOT NULL,
  set_servicio VARCHAR(100) NOT NULL,
  set_locale CHARACTER(2) NOT NULL,
  set_idioma CHARACTER(2) NOT NULL,
  set_usuario VARCHAR(10) NOT NULL,
  set_fecha_registro DATE NOT NULL
);
COMMENT ON TABLE smn_base.smn_servicio_traduccion IS 'Servicios o acciones protegidas de una aplicación';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.smn_servicio_traduccion_id IS 'ID de servicios';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_app_id IS 'Aplicación@{select app_id as id, app_alias as item from smn_seguridad.s_application order by 1}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_menu_id IS 'Menú@{select menu_id as id, title as item from smn_seguridad.s_menu order by 2}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_menu IS 'Menú';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_servicio_id IS 'Servicio@{select service_id as id, description as item from smn_seguridad.s_service order by 2}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_servicio IS 'Título del servicio, así aparecerá en la página web';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_locale IS 'Idioma@{es=Español|en=Inglés|fr=Francés|de=Alemán|pt=Portugués|it=Italiano}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_idioma IS 'Idioma@{${def:locale}}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_usuario IS 'Usuario que crea@{${def:user}}';
COMMENT ON COLUMN smn_base.smn_servicio_traduccion.set_fecha_registro IS 'Fecha de creación@{${def:date}}';

CREATE SEQUENCE smn_base.seq_smn_servicio_traduccion;



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

ALTER TABLE smn_base.smn_tasas_de_cambio ADD PRIMARY KEY (smn_tasas_de_cambio_id);
ALTER TABLE smn_base.smn_tasas_de_cambio ADD CONSTRAINT FK_smn_tasas_de_cambio_0 FOREIGN KEY (smn_monedas_id) REFERENCES smn_base.smn_monedas (smn_monedas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_impuestos ADD PRIMARY KEY (smn_impuestos_id);

ALTER TABLE smn_base.smn_unidades_impositivas ADD PRIMARY KEY (smn_unidades_impositivas_id);

ALTER TABLE smn_base.smn_tasas_impositivas ADD PRIMARY KEY (smn_tasas_impositivas_id);
ALTER TABLE smn_base.smn_tasas_impositivas ADD CONSTRAINT FK_smn_tasas_impositivas_0 FOREIGN KEY (smn_unidades_impositivas_id) REFERENCES smn_base.smn_unidades_impositivas (smn_unidades_impositivas_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_periodos ADD PRIMARY KEY (smn_periodos_id);

ALTER TABLE smn_base.smn_centro_costo ADD PRIMARY KEY (smn_centro_costo_id);
ALTER TABLE smn_base.smn_centro_costo ADD CONSTRAINT FK_smn_centro_costo_0 FOREIGN KEY (smn_entidades_id) REFERENCES smn_base.smn_entidades (smn_entidades_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_cuentas_bancarias ADD PRIMARY KEY (smn_cuentas_bancarias_id);
ALTER TABLE smn_base.smn_cuentas_bancarias ADD CONSTRAINT FK_smn_cuentas_bancarias_0 FOREIGN KEY (smn_entidades_financieras_id) REFERENCES smn_base.smn_entidades_financieras (smn_entidades_financieras_id) ON DELETE CASCADE;

ALTER TABLE smn_base.smn_tipo_cuenta_banco ADD PRIMARY KEY (smn_tipo_cuenta_banco_id);

ALTER TABLE smn_base.smn_menu_traduccion ADD PRIMARY KEY (smn_menu_traduccion_id);

ALTER TABLE smn_base.smn_servicio_traduccion ADD PRIMARY KEY (smn_servicio_traduccion_id);

