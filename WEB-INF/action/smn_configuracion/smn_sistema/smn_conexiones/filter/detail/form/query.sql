select
	case
	when smn_base.smn_conexiones.con_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_conexiones.con_estatus='IN' then '${lbl:b_inactive}'
	end as con_estatus,
	smn_base.smn_conexiones.*
from
	smn_base.smn_conexiones
where
	smn_base.smn_conexiones.smn_conexiones_bd_id = ${fld:id}
