select
	case
		when smn_base.smn_vencimiento_detalle.tvd_tipo_aplicacion='VE' then '${lbl:b_sell}'
		when smn_base.smn_vencimiento_detalle.tvd_tipo_aplicacion='AN' then '${lbl:b_anticipated}'
	end as tvd_tipo_aplicacion_combo,
	smn_base.smn_vencimiento_detalle.*
from 
	smn_base.smn_vencimiento_detalle,
	smn_base.smn_vencimiento_cabecera
where
	smn_base.smn_vencimiento_detalle.smn_vencimiento_cabecera_id=smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id and 
	smn_base.smn_vencimiento_cabecera.smn_vencimiento_cabecera_id=${fld:id}
