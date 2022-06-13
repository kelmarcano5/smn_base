select	
	case
		when smn_base.smn_servicios.svc_inactivo='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_inactivo='N' then '${lbl:b_not}'
	end as svc_inactivo_combo,
	case
		when smn_base.smn_servicios.svc_req_honorario='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_req_honorario='N' then '${lbl:b_not}'
	end as svc_req_honorario_combo,
	smn_base.smn_servicios.svc_vigencia_desde,
	smn_base.smn_servicios.svc_vigencia_hasta,
	smn_base.smn_servicios.svc_requisitos,
	smn_base.smn_servicios.svc_trans_general,
	smn_base.smn_servicios.svc_compuesto,
	smn_base.smn_servicios.svc_fecha_registro,
	smn_base.smn_servicios.svc_codigo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_servicios.svc_clase_auxiliar,
	smn_base.smn_servicios.svc_tipo_servicio,
	smn_base.smn_servicios.svc_area_servicio,
	smn_base.smn_servicios.svc_unidad_servicio,
	smn_base.smn_servicios.svc_centro_costo,
	smn_base.smn_servicios.svc_frecuencia,
	smn_base.smn_servicios.svc_precio_general,
	smn_base.smn_servicios.svc_inactivo,
	smn_base.smn_servicios.svc_req_honorario,
	smn_base.smn_servicios.smn_servicios_id
from
	smn_base.smn_servicios
where
	smn_base.smn_servicios.smn_servicios_id is not null	
 	${filter}
order by 
	smn_base.smn_servicios.smn_servicios_id desc