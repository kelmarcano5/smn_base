select
		smn_base.smn_grupos_prestadores.gpp_codigo,
	smn_base.smn_grupos_prestadores.gpp_descripcion,
	smn_base.smn_grupos_prestadores.gpp_area_servicio,
	smn_base.smn_grupos_prestadores.gpp_unidad_servicio,
	smn_base.smn_grupos_prestadores.gpp_orden_atencion,
	smn_base.smn_grupos_prestadores.gpp_fecha_registro
from
	smn_base.smn_grupos_prestadores 
where
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = ${fld:id}
