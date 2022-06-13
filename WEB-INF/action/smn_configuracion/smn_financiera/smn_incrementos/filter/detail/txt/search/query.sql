select
	case
	when smn_base.smn_incrementos.inc_apli_cant_precio='CA' then '${lbl:b_quantity}'
	when smn_base.smn_incrementos.inc_apli_cant_precio='PR' then '${lbl:b_price}'
	end as inc_apli_cant_precio,
	case
	when smn_base.smn_incrementos.inc_apli_todos_it='SI' then '${lbl:b_yes}'
	when smn_base.smn_incrementos.inc_apli_todos_it='NO' then '${lbl:b_not}'
	end as inc_apli_todos_it,
	case
	when smn_base.smn_incrementos.inc_apli_todos_se='SI' then '${lbl:b_yes}'
	when smn_base.smn_incrementos.inc_apli_todos_se='NO' then '${lbl:b_not}'
	end as inc_apli_todos_se,
	case
	when smn_base.smn_incrementos.inc_apli_todos_af='SI' then '${lbl:b_yes}'
	when smn_base.smn_incrementos.inc_apli_todos_af='NO' then '${lbl:b_not}'
	end as inc_apli_todos_af,
	case
	when smn_base.smn_incrementos.inc_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_incrementos.inc_estatus='IN' then '${lbl:b_inactive}'
	end as inc_estatus,
	smn_base.smn_incrementos.*
from
	smn_base.smn_incrementos
where
	smn_incrementos_id = ${fld:id}
