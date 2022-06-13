select
	case
		when smn_base.smn_baremos.bar_tipo='GE' then '${lbl:b_general}'
		when smn_base.smn_baremos.bar_tipo='ES' then '${lbl:b_specific}'
	end as bar_tipo_combo,
	smn_base.smn_baremos.*
from 
	smn_base.smn_baremos
where
	smn_baremos_id = ${fld:id}
