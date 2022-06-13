select
	case
	when smn_base.smn_tipo_contribuyente.tco_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_tipo_contribuyente.tco_estatus='IN' then '${lbl:b_inactive}'
	end as tco_estatus_combo,
	smn_base.smn_tipo_contribuyente.*
from
	smn_base.smn_tipo_contribuyente
where
	smn_tipo_contribuyente_id = ${fld:id}
