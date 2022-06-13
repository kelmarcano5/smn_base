select
	case
		when smn_base.smn_componentes.cmp_visible='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_visible='N' then '${lbl:b_not}'
	end as cmp_visible_combo,
	case
		when smn_base.smn_componentes.cmp_req_grupo_prestador='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_req_grupo_prestador='N' then '${lbl:b_not}'
	end as cmp_req_grupo_prestador_combo,
	case
		when smn_base.smn_componentes.cmp_req_honorario='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_req_honorario='N' then '${lbl:b_not}'
	end as cmp_req_honorario_combo,
	case
		when smn_base.smn_componentes.cmp_tipo='SE' then '${lbl:b_services}'
		when smn_base.smn_componentes.cmp_tipo='IN' then '${lbl:b_inventory}'
		when smn_base.smn_componentes.cmp_tipo='PR' then '${lbl:b_providers}'
	end as cmp_tipo_combo,
	case
		when smn_base.smn_componentes.cmp_calculo='IM' then '${lbl:b_amount_money}'
		when smn_base.smn_componentes.cmp_calculo='PO' then '${lbl:b_percentage}'
	end as cmp_calculo_combo,
	smn_base.smn_componentes.*
from 
	smn_base.smn_componentes
where
	smn_componentes_id = ${fld:id}
