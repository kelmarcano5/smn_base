CREATE TABLE smn_base.smn_conexiones(
  smn_conexiones_bd_id INTEGER NOT NULL,
  con_sistema VARCHAR(64) NOT NULL,
  con_descripcion VARCHAR(100) NOT NULL,
  smn_entidad_rf INTEGER NOT NULL,
  smn_sucursal_rf INTEGER NOT NULL,
  con_ip_servidor VARCHAR(64) NOT NULL,
  con_hostname_instancia VARCHAR(64) NOT NULL,
  con_nombre_bd VARCHAR(64) NOT NULL,
  con_usuario_bd VARCHAR(64) NOT NULL,
  con_clave_bd VARCHAR(64) NOT NULL,
  con_puerto_bd VARCHAR(64) NOT NULL,
  con_estatus CHARACTER(2) NOT NULL,
  con_vigencia DATE NOT NULL,
  con_idioma CHARACTER(2) NOT NULL,
  con_usuario VARCHAR(10) NOT NULL,
  con_fecha_registro DATE NOT NULL,
  con_hora CHARACTER(8) NOT NULL
);

CREATE SEQUENCE smn_base.seq_smn_conexiones;



ALTER TABLE smn_base.smn_conexiones ADD PRIMARY KEY (smn_conexiones_bd_id);

