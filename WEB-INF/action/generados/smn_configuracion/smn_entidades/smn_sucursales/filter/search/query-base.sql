select	
	case
		when smn_base.smn_sucursales.suc_maneja_area_servicio='S' then '${lbl:b_yes}'
		when smn_base.smn_sucursales.suc_maneja_area_servicio='N' then '${lbl:b_not}'
	end as suc_maneja_area_servicio_combo,
	smn_base.smn_sucursales.suc_empresa,
	smn_base.smn_sucursales.suc_codigo,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_sucursales.suc_unidad_negocio,
	smn_base.smn_sucursales.suc_maneja_area_servicio,
	smn_base.smn_sucursales.suc_responsable,
	smn_base.smn_sucursales.suc_direccion,
	smn_base.smn_sucursales.suc_telefono_fijo,
	smn_base.smn_sucursales.suc_telefono_movil,
	smn_base.smn_sucursales.suc_email,
	smn_base.smn_sucursales.suc_fecha_registro,
	smn_base.smn_sucursales.smn_sucursales_id
from
	smn_base.smn_sucursales
where
	smn_base.smn_sucursales.smn_sucursales_id is not null	
 	${filter}
order by 
	smn_base.smn_sucursales.smn_sucursales_id desc