select
		smn_base.smn_zona.smn_zona_id,
	case
	when smn_base.smn_zona.zon_estatus='AC' then '${lbl:b_active}'
	when smn_base.smn_zona.zon_estatus='IN' then '${lbl:b_inactive}'
	end as zon_estatus_combo,
	smn_base.smn_zona.zon_codigo,
	smn_base.smn_zona.zon_descripcion,
	smn_base.smn_zona.zon_estatus,
	smn_base.smn_zona.zon_fecha_vigencia,
	smn_base.smn_zona.zon_fecha_registro
	
from
	smn_base.smn_zona
