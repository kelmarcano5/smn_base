select
		smn_base.smn_conexiones.smn_conexiones_bd_id,
	case
	when smn_conexiones.con_estatus='AC' then '${lbl:b_active}'
	when smn_conexiones.con_estatus='IN' then '${lbl:b_inactive}'
	end as con_estatus,
	smn_conexiones.con_sistema,
	smn_conexiones.con_descripcion,

	smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_larga as smn_entidad_rf,
	smn_base.smn_sucursales.suc_codigo ||' - '|| smn_base.smn_sucursales.suc_nombre as smn_sucursal_rf,

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
	smn_base.smn_conexiones
  left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_conexiones.smn_entidad_rf
   left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_conexiones.smn_sucursal_rf
where
	smn_conexiones_bd_id is not null
	${filter}
order by
		smn_conexiones_bd_id
