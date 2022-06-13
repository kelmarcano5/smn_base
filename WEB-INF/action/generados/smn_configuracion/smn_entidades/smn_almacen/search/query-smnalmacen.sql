select
	smn_base.smn_almacen.alm_codigo,
	smn_base.smn_almacen.alm_nombre,
	smn_base.smn_almacen.alm_empresa,
	smn_base.smn_almacen.alm_unidad_negocio,
	smn_base.smn_almacen.alm_sucursal,
	smn_base.smn_almacen.alm_area_servicio,
	smn_base.smn_almacen.alm_unidad_servicio,
	smn_base.smn_almacen.alm_fecha_registro,
	smn_base.smn_almacen.smn_almacen_id
from 
	smn_base.smn_almacen
order by 
	smn_base.smn_almacen.smn_almacen_id desc
