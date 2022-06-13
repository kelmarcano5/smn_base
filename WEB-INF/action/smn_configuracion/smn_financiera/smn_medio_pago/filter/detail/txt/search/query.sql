select
	case
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='PV' then '${lbl:b_punt_sale}'
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='CH' then '${lbl:b_cheque}'
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='TR' then '${lbl:b_transferency}'
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='DP' then '${lbl:b_deposite}'
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='EF' then '${lbl:b_cash}'
	when smn_base.smn_medio_pago.mpa_tipo_medio_pago='CR' then '${lbl:b_credit}'
	end as mpa_tipo_medio_pago_combo,
	case
	when smn_base.smn_medio_pago.mpa_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_medio_pago.mpa_estatus='IN' then '${lbl:b_inactive}'
	end as mpa_estatus_combo,
	smn_base.smn_medio_pago.*
from
	smn_base.smn_medio_pago
where
	smn_medio_pago_id = ${fld:id}
