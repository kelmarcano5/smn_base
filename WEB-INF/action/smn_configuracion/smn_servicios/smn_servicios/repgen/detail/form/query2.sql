select
		smn_base.smn_servicios.svc_codigo,
	smn_base.smn_servicios.svc_descripcion,
	smn_base.smn_servicios.smn_tipo_servicio_rf,
	smn_base.smn_servicios.svc_frecuencia,
	smn_base.smn_servicios.smn_unidad_medida_rf,
	smn_base.smn_servicios.smn_precio_moneda_local,
	smn_base.smn_servicios.smn_moneda_rf,
	smn_base.smn_servicios.smn_precio_moneda_alterna,
	smn_base.smn_servicios.smn_descuento_rf,
	smn_base.smn_servicios.svc_monto_desc_ml,
	smn_base.smn_servicios.svc_monto_desc_ma,
	smn_base.smn_servicios.svr_precio_neto,
	smn_base.smn_servicios.svc_precio_neto_ma,
	smn_base.smn_servicios.svc_req_prestador,
	smn_base.smn_servicios.smn_clase_auxiliar_rf,
	smn_base.smn_servicios.svc_requisitos,
	smn_base.smn_servicios.svc_vigencia_desde,
	smn_base.smn_servicios.svc_vigencia_hasta,
	smn_base.smn_servicios.smn_documento_general_rf,
	smn_base.smn_servicios.svc_inactivo,
	smn_base.smn_servicios.svc_fecha_registro
from
	smn_base.smn_servicios 
where
	smn_base.smn_servicios.smn_servicios_id = ${fld:id}