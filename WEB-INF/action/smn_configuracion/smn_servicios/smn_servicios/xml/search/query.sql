select
		smn_base.smn_servicios.smn_servicios_id,
	case
	when smn_base.smn_servicios.svc_inactivo='A' then '${lbl:b_active}'
	when smn_base.smn_servicios.svc_inactivo='I' then '${lbl:b_inactive}'
	end as svc_inactivo,
	smn_base.smn_servicios.svc_codigo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_servicios.smn_tipo_servicio_rf,
	smn_base.smn_servicios.svc_frecuencia,
	smn_base.smn_servicios.smn_clase_auxiliar_rf,
	smn_base.smn_servicios.svc_inactivo,
	smn_base.smn_servicios.svc_fecha_registro
	
from
	smn_base.smn_servicios
