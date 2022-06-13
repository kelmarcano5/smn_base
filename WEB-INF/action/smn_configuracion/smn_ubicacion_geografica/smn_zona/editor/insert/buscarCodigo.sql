select
		smn_base.smn_zona.zon_codigo
from
		smn_base.smn_zona
where
		upper(smn_base.smn_zona.zon_codigo) = upper(${fld:zon_codigo})
