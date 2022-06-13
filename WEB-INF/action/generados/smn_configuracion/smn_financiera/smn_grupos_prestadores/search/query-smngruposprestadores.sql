select
	case
		when smn_base.smn_grupos_prestadores.gpp_orden_atencion='CI' then '${lbl:b_by_appointment}'
		when smn_base.smn_grupos_prestadores.gpp_orden_atencion='OL' then '${lbl:b_by_arrive_order}'
	end as gpp_orden_atencion_combo,
	smn_base.smn_grupos_prestadores.gpp_codigo,
	smn_base.smn_grupos_prestadores.gpp_descripcion,
	smn_base.smn_grupos_prestadores.gpp_area_servicio,
	smn_base.smn_grupos_prestadores.gpp_unidad_servicio,
	smn_base.smn_grupos_prestadores.gpp_orden_atencion,
	smn_base.smn_grupos_prestadores.gpp_fecha_registro

from 
	smn_base.smn_grupos_prestadores
