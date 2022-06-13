select
	case
	when smn_base.smn_proyecto.pry_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_proyecto.pry_estatus='CE' then '${lbl:b_close}'
	end as pry_estatus,
	smn_base.smn_proyecto.*
from
	smn_base.smn_proyecto
where
	smn_proyecto_id = ${fld:id}
