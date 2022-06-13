select
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
	smn_base.smn_sucursales.suc_fecha_registro
from
	smn_base.smn_sucursales 
where
	smn_base.smn_sucursales.smn_sucursales_id = ${fld:id}
