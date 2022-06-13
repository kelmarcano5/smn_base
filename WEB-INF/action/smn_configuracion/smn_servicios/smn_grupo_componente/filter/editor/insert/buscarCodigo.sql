select
		smn_base.smn_grupo_componente.gco_codigo
from
		smn_base.smn_grupo_componente
where
		upper(smn_base.smn_grupo_componente.gco_codigo) = upper(${fld:gco_codigo})
