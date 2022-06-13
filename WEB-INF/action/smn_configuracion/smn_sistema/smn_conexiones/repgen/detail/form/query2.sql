select
		smn_base.smn_conexiones.smn_conexiones_bd_id,
	smn_base.smn_conexiones.con_sistema,
	smn_base.smn_conexiones.con_descripcion,
	smn_base.smn_conexiones.smn_entidad_rf,
	smn_base.smn_conexiones.smn_sucursal_rf,
	smn_base.smn_conexiones.con_ip_servidor,
	smn_base.smn_conexiones.con_hostname_instancia,
	smn_base.smn_conexiones.con_nombre_bd,
	smn_base.smn_conexiones.con_clave_bd,
	smn_base.smn_conexiones.con_puerto_bd,
	smn_base.smn_conexiones.con_estatus,
	smn_base.smn_conexiones.con_vigencia,
	smn_base.smn_conexiones.con_fecha_registro
from
	smn_base.smn_conexiones 
where
	smn_base.smn_conexiones.smn_conexiones_bd_id = ${fld:id}
