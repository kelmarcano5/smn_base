select
		smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id,
	${field}
from
	smn_base.smn_grupo_titulo_impresion
where
		smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id is not null
	${filter}
	
	
