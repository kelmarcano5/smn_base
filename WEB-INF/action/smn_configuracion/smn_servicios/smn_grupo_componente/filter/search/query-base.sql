select
	smn_base.smn_grupo_componente.gco_codigo,
	smn_base.smn_grupo_componente.gco_descripcion,
	smn_base.smn_grupo_componente.gco_fecha_registro,
		smn_base.smn_grupo_componente.smn_grupo_componente_id
	
from
	smn_base.smn_grupo_componente
where
	smn_grupo_componente_id is not null
	${filter}
order by
		smn_grupo_componente_id
