select
	case
		when smn_base.smn_servicios.svc_inactivo='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_inactivo='N' then '${lbl:b_not}'
	end as svc_inactivo_combo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_servicios.svc_clase_auxiliar,
	smn_base.smn_servicios.svc_tipo_servicio,
	smn_base.smn_servicios.svc_area_servicio,
	smn_base.smn_servicios.svc_unidad_servicio,
	smn_base.smn_servicios.svc_inactivo,
	smn_base.smn_servicios.svc_fecha_registro

from 
	smn_base.smn_servicios
