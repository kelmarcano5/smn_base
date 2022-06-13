select	
	smn_base.smn_componentes.* --,
	--smn_base.smn_componentes.cmp_grupo_prestador as smn_grupos_prestadores_id
from 
	smn_base.smn_componentes
	--LEFT join smn_base.smn_grupos_prestadores on smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = smn_base.smn_componentes.cmp_grupo_prestador
where 
	smn_componentes_id = ${fld:id}


