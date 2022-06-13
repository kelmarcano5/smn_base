select
	case
		when smn_base.smn_medio_pago.mpa_efectivo='S' then '${lbl:b_yes}'
		when smn_base.smn_medio_pago.mpa_efectivo='N' then '${lbl:b_not}'
	end as mpa_efectivo_combo,
	smn_base.smn_medio_pago.mpa_codigo,
	smn_base.smn_medio_pago.mpa_descripcion,
	smn_base.smn_medio_pago.mpa_efectivo,
	smn_base.smn_medio_pago.mpa_fecha_registro

from 
	smn_base.smn_medio_pago
