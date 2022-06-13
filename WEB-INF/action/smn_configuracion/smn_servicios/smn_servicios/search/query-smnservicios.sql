select
	smn_base.smn_servicios.smn_servicios_id,
	case
	when smn_base.smn_servicios.svc_inactivo='A' then '${lbl:b_active}'
	when smn_base.smn_servicios.svc_inactivo='I' then '${lbl:b_inactive}'
	end as svc_inactivo,
	smn_base.smn_servicios.svc_codigo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_tipos_servicios.tsr_codigo ||'-'||smn_base.smn_tipos_servicios.tsr_descripcion as smn_tipo_servicio_rf,
	smn_base.smn_servicios.svc_frecuencia,
	smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf,
	smn_base.smn_servicios.svc_inactivo,
	smn_base.smn_servicios.svc_fecha_registro,
	smn_base.smn_baremos.bar_descripcion as smn_baremos_id_txt
from
	smn_base.smn_servicios
	left join smn_base.smn_tipos_servicios on smn_base.smn_tipos_servicios.smn_tipos_servicios_id = smn_base.smn_servicios.smn_tipo_servicio_rf
	left join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_servicios.smn_clase_auxiliar_rf
	left join smn_base.smn_baremos on smn_base.smn_baremos.smn_baremos_id = smn_base.smn_servicios.smn_baremos_id