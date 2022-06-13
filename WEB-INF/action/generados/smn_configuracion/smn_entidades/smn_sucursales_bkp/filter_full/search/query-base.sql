select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_sucursales.smn_entidades_id,
	smn_base.smn_sucursales.suc_codigo,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_sucursales.suc_responsable,
	smn_base.smn_sucursales.suc_direccion,
	smn_base.smn_sucursales.suc_telefono_fijo,
	smn_base.smn_sucursales.suc_telefono_movil,
	smn_base.smn_sucursales.suc_email,
	smn_base.smn_sucursales.suc_fecha_registro,
	smn_base.smn_sucursales.smn_sucursales_id
from
	smn_base.smn_entidades,
	smn_base.smn_sucursales
where
	smn_sucursales_id is not null	
and 	
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_sucursales.smn_entidades_id 
	${filter}
order by 
	smn_base.smn_sucursales.smn_sucursales_id