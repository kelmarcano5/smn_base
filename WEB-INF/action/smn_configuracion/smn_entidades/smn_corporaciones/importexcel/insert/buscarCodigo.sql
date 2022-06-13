select
		smn_base.smn_corporaciones.crp_codigo
from
		smn_base.smn_corporaciones
where
		upper(trim(smn_base.smn_corporaciones.crp_codigo)) = upper(trim(${fld:crp_codigo}))
