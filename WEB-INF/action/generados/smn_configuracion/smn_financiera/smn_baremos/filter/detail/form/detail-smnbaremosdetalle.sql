select
	case
		when smn_base.smn_baremos_detalle.bad_tipo='GE' then '${lbl:b_general}'
		when smn_base.smn_baremos_detalle.bad_tipo='ES' then '${lbl:b_specific}'
	end as bad_tipo_combo,
	case
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='SE' then '${lbl:b_services}'
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='IN' then '${lbl:b_inventory}'
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='PR' then '${lbl:b_providers}'
	end as bad_tipo_compuesto_combo,
	case
		when smn_base.smn_baremos_detalle.bad_calculo='IM' then '${lbl:b_amount_money}'
		when smn_base.smn_baremos_detalle.bad_calculo='PO' then '${lbl:b_b_percentage}'
	end as bad_calculo_combo,
	case
		when smn_base.smn_baremos_detalle.bad_inactivo='S' then '${lbl:b_yes}'
		when smn_base.smn_baremos_detalle.bad_inactivo='N' then '${lbl:b_not}'
	end as bad_inactivo_combo,
	smn_base.smn_baremos_detalle.*
from 
	smn_base.smn_baremos_detalle,
	smn_base.smn_baremos
where
	smn_base.smn_baremos_detalle.smn_baremos_id=smn_base.smn_baremos.smn_baremos_id and 
	smn_base.smn_baremos.smn_baremos_id=${fld:id}
