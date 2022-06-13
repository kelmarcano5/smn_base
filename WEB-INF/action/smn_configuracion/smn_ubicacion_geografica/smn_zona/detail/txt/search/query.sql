select
	case
		when smn_base.smn_zona.zon_estatus='AC' then '${lbl:b_active}'
		when smn_base.smn_zona.zon_estatus='IN' then '${lbl:b_inactive}'
	end as zon_estatus_combo,
	smn_base.smn_zona.*
from 
	smn_base.smn_zona
where
	smn_zona_id = ${fld:id}
