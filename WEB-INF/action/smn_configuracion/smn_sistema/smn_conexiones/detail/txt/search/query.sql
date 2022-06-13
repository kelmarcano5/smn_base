select
select
select
	case
	when smn_conexiones.con_estatus='AC' then '${lbl:b_active}'
	when smn_conexiones.con_estatus='IN' then '${lbl:b_inactive}'
	end as con_estatus,
	smn_conexiones.*
from
	smn_conexiones
where
	smn_conexiones_bd_id = ${fld:id}
