select
	smn_base.smn_parroquias.smn_parroquias_id,
	${field}
from
	smn_base.smn_municipios,
	smn_base.smn_parroquias
where
	smn_base.smn_parroquias.smn_parroquias_id is not null
and
	smn_base.smn_municipios.smn_municipios_id = smn_base.smn_parroquias.prr_municipios 
and
   	smn_base.smn_parroquias.prr_idioma = '${def:locale}'
and
	smn_base.smn_parroquias.prr_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_parroquias.smn_parroquias_id desc
	
	
