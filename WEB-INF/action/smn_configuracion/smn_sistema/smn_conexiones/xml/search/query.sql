select
		smn_base.smn_conexiones.smn_conexiones_bd_id,
select
		smn_base.smn_conexiones.smn_conexiones_bd_id,
select
		smn_base.smn_conexiones.smn_conexiones_bd_id,
	case
	when smn_conexiones.con_estatus='AC' then '${lbl:b_active}'
	when smn_conexiones.con_estatus='IN' then '${lbl:b_inactive}'
	end as con_estatus,
	smn_conexiones.con_sistema,
	smn_conexiones.con_descripcion,
	smn_conexiones.smn_entidad_rf,
	smn_conexiones.smn_sucursal_rf,
	smn_conexiones.con_ip_servidor,
	smn_conexiones.con_hostname_instancia,
	smn_conexiones.con_nombre_bd,
	smn_conexiones.con_usuario_bd,
	smn_conexiones.con_clave_bd,
	smn_conexiones.con_puerto_bd,
	smn_conexiones.con_estatus,
	smn_conexiones.con_vigencia,
	smn_conexiones.con_usuario
	
from
	smn_conexiones
