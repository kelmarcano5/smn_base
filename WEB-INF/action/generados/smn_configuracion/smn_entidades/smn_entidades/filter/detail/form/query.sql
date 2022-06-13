select
	case
		when smn_base.smn_entidades.ent_maneja_sucursal='S' then '${lbl:b_yes}'
		when smn_base.smn_entidades.ent_maneja_sucursal='N' then '${lbl:b_not}'
	end as ent_maneja_sucursal_combo,
	smn_base.smn_entidades.*
from 
	smn_base.smn_entidades
where
	smn_entidades_id = ${fld:id}
