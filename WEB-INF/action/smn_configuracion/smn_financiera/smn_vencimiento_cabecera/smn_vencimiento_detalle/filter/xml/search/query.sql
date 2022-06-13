select
		smn_base.smn_vencimiento_detalle.smn_vencimiento_detalle_id,
	smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id,
	smn_base.smn_vencimiento_cabecera.tve_codigo as tve_codigo_pl0,
select
		smn_base.smn_vencimiento_detalle.smn_vencimiento_detalle_id,
	case
	when smn_base.smn_vencimiento_detalle.tvd_tipo_aplicacion='VE' then '${lbl:b_sell}'
	when smn_base.smn_vencimiento_detalle.tvd_tipo_aplicacion='AN' then '${lbl:b_anticipated}'
	end as tvd_tipo_aplicacion,
	smn_base.smn_vencimiento_detalle.smn_vencimiento_cabecera_id,
	smn_base.smn_vencimiento_detalle.tvd_titulo,
	smn_base.smn_vencimiento_detalle.tvd_tipo_aplicacion,
	smn_base.smn_vencimiento_detalle.tvd_dias_desde,
	smn_base.smn_vencimiento_detalle.tvd_dias_hasta,
	smn_base.smn_vencimiento_detalle.tvd_fecha_registro
	
from
	smn_base.smn_vencimiento_cabecera,
	smn_base.smn_vencimiento_detalle
where
	smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id=smn_base.smn_vencimiento_detalle.smn_vencimiento_cabecera_id
