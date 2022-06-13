select
		smn_base.smn_zona.zon_codigo,
	smn_base.smn_zona.zon_descripcion,
	smn_base.smn_zona.zon_estatus,
	smn_base.smn_zona.zon_fecha_vigencia,
	smn_base.smn_zona.zon_fecha_registro
from
	smn_base.smn_zona 
where
	smn_base.smn_zona.smn_zona_id = ${fld:id}
