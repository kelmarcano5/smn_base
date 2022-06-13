select
		smn_base.smn_zona.zon_descripcion
from
		smn_base.smn_zona
where
		upper(smn_base.smn_zona.zon_descripcion) = upper(${fld:zon_descripcion})
