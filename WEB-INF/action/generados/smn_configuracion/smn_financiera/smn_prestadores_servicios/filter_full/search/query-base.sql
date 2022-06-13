select	
	smn_base.smn_prestadores_servicios.prs_frecuencia,
	smn_base.smn_prestadores_servicios.prs_fecha_registro,
	smn_base.smn_prestadores_servicios.prs_codigo,
	smn_base.smn_prestadores_servicios.prs_nombres,
	smn_base.smn_prestadores_servicios.prs_apellidos,
	smn_base.smn_prestadores_servicios.prs_area_servicio,
	smn_base.smn_prestadores_servicios.prs_unidad_servicio,
	smn_base.smn_prestadores_servicios.prs_clase_auxiliar,
	smn_base.smn_prestadores_servicios.prs_auxiliar,
	smn_base.smn_prestadores_servicios.smn_grupos_prestadores,
	smn_base.smn_prestadores_servicios.prs_direccion,
	smn_base.smn_prestadores_servicios.prs_telefono_fijo,
	smn_base.smn_prestadores_servicios.prs_telefono_movil,
	smn_base.smn_prestadores_servicios.smn_prestadores_servicios_id

from
	smn_base.smn_prestadores_servicios
where
	smn_prestadores_servicios_id is not null	
 	 	${filter}
order by 
	smn_prestadores_servicios_id