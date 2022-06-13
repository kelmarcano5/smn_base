select
		smn_base.smn_componentes.cmp_codigo
from
		smn_base.smn_componentes
where
		upper(smn_base.smn_componentes.cmp_codigo) = upper(${fld:cmp_codigo})
