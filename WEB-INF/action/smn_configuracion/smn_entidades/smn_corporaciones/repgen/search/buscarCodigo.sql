select
		smn_base.smn_corporaciones.crp_codigo
from
		smn_base.smn_corporaciones
where
		upper(smn_base.smn_corporaciones.crp_codigo) = upper(${fld:crp_codigo})
