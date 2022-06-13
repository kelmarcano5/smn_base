select
	(select smn_base.smn_tipos_servicios.tsr_codigo || ' - ' || smn_base.smn_tipos_servicios.tsr_descripcion from  smn_base.smn_tipos_servicios  where smn_base.smn_tipos_servicios.smn_tipos_servicios_id is not null  and smn_base.smn_tipos_servicios.smn_tipos_servicios_id=smn_base.smn_servicios.smn_tipo_servicio_rf  order by smn_base.smn_tipos_servicios.tsr_descripcion ) as smn_tipo_servicio_rf,
	(select smn_base.smn_unidad_medida.unm_codigo||'-'||smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_base.smn_servicios.smn_unidad_medida_rf) as smn_unidad_medida_rf,
	(select smn_base.smn_monedas.mon_codigo || ' - ' || smn_base.smn_monedas.mon_nombre from  smn_base.smn_monedas  where smn_base.smn_monedas.smn_monedas_id is not null  and smn_base.smn_monedas.smn_monedas_id=smn_base.smn_servicios.smn_moneda_rf  order by smn_base.smn_monedas.mon_nombre ) as smn_moneda_rf,
	(select smn_base.smn_descuento.dct_codigo ||'-'||smn_base.smn_descuento.dct_nombre from  smn_base.smn_descuento where smn_base.smn_descuento.smn_descuento_id is not null  and smn_base.smn_descuento.smn_descuento_id=smn_base.smn_servicios.smn_descuento_rf) as smn_descuento_rf,
	case
		when smn_base.smn_servicios.svc_req_prestador='S' then '${lbl:b_yes}'
		when smn_base.smn_servicios.svc_req_prestador='N' then '${lbl:b_not}'
	end as svc_req_prestador,
	(select smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_servicios.smn_clase_auxiliar_rf  order by smn_base.smn_clase_auxiliar.cla_nombre ) as smn_clase_auxiliar_rf,
	(select smn_base.smn_documentos_generales.dcg_codigo|| ' - ' || smn_base.smn_documentos_generales.dcg_descripcion from  smn_base.smn_documentos_generales  where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_base.smn_servicios.smn_documento_general_rf) as smn_documento_general_rf,
	case
		when smn_base.smn_servicios.svc_inactivo='A' then '${lbl:b_active}'
		when smn_base.smn_servicios.svc_inactivo='I' then '${lbl:b_inactive}'
	end as svc_inactivo,
	smn_base.smn_servicios.*
from 
	smn_base.smn_servicios
where
	smn_servicios_id = ${fld:id}
