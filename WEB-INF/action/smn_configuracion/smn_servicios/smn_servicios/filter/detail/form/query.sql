select smn_base.smn_servicios.smn_servicios_id,
	smn_base.smn_unidad_medida.unm_codigo ||' - '|| smn_base.smn_unidad_medida.unm_descripcion as smn_unidad_medida_rf,
	smn_base.smn_clase_auxiliar.cla_codigo ||' - '|| smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as smn_clase_auxiliar_rf,
	smn_base.smn_tipos_servicios.tsr_codigo ||' - '|| smn_base.smn_tipos_servicios.tsr_descripcion as smn_tipo_servicio_rf,
	smn_base.smn_servicios.svc_frecuencia,
	case
		when smn_base.smn_servicios.svc_req_prestador='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_req_prestador='N' then '${lbl:b_not}'
	end as svc_req_prestador,
	case
		when smn_base.smn_servicios.svc_inactivo='A' then '${lbl:b_active}'
		when smn_base.smn_servicios.svc_inactivo='I' then '${lbl:b_inactive}'
	end as svc_inactivo,
	smn_base.smn_servicios.svc_requisitos,
	smn_base.smn_servicios.svc_vigencia_desde,
	smn_base.smn_servicios.svc_vigencia_hasta,
	smn_base.smn_baremos.bar_descripcion as smn_baremos_id,
		smn_base.smn_servicios.*

from 
	smn_base.smn_servicios
	left outer join smn_base.smn_tipos_servicios on smn_base.smn_tipos_servicios.smn_tipos_servicios_id = smn_base.smn_servicios.smn_tipo_servicio_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_servicios.smn_clase_auxiliar_rf
	inner join smn_base.smn_baremos on smn_base.smn_baremos.smn_baremos_id = smn_base.smn_servicios.smn_baremos_id
	inner join smn_base.smn_unidad_medida on smn_base.smn_unidad_medida.smn_unidad_medida_id = smn_base.smn_servicios.smn_unidad_medida_rf
	left join smn_base.smn_descuento on smn_base.smn_descuento.smn_descuento_id = smn_base.smn_servicios.smn_descuento_rf
	
where
	smn_base.smn_servicios.smn_servicios_id = ${fld:id}
