select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id,
	case
		when smn_base.smn_grupos_prestadores.gpp_orden_atencion='CI' then '${lbl:b_by_appointment}'
		when smn_base.smn_grupos_prestadores.gpp_orden_atencion='OL' then '${lbl:b_by_arrive_order}'
	end as gpp_orden_atencion,
	smn_base.smn_grupos_prestadores.gpp_codigo,
	smn_base.smn_grupos_prestadores.gpp_descripcion,
	smn_base.smn_grupos_prestadores.gpp_area_servicio,
	smn_base.smn_grupos_prestadores.gpp_unidad_servicio,
	smn_base.smn_grupos_prestadores.gpp_estatus,
	smn_base.smn_grupos_prestadores.gpp_fecha_inicio_estatus,
	smn_base.smn_grupos_prestadores.gpp_fecha_final_estatus,
	smn_base.smn_grupos_prestadores.gpp_frecuencia,
	smn_base.smn_grupos_prestadores.gpp_fecha_registro
from
	smn_base.smn_grupos_prestadores
	left outer join smn_base.smn_areas_servicios on 
	smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_grupos_prestadores.gpp_area_servicio
	LEFT OUTER JOIN smn_base.smn_unidades_servicios on 
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_grupos_prestadores.gpp_unidad_servicio

where
	smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_grupos_prestadores.gpp_area_servicio and
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_grupos_prestadores.gpp_unidad_servicio and
	smn_grupos_prestadores_id = ${fld:id}
