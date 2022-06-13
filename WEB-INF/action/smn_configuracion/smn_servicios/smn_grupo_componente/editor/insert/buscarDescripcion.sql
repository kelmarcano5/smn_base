select
		smn_base.smn_grupo_componente.gco_descripcion
from
		smn_base.smn_grupo_componente
where
		upper(smn_base.smn_grupo_componente.gco_descripcion) = upper(${fld:gco_descripcion})
