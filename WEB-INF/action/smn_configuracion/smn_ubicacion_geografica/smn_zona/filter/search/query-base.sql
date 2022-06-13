select
	case
	when smn_base.smn_zona.zon_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_zona.zon_estatus='IN' then '${lbl:b_inactive}'
	end as zon_estatus_combo,
	smn_base.smn_zona.zon_codigo,
	smn_base.smn_zona.zon_descripcion,
	smn_base.smn_zona.zon_estatus,
	smn_base.smn_zona.zon_fecha_vigencia,
	smn_base.smn_zona.zon_fecha_registro,
		smn_base.smn_zona.smn_zona_id
	
from
	smn_base.smn_zona
where
	smn_zona_id is not null
	${filter}
order by
		smn_zona_id
