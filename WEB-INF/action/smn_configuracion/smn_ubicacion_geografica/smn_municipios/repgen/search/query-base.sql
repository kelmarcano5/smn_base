select
	smn_base.smn_municipios.smn_municipios_id,
	${field}
from
	smn_base.smn_ciudades,
	smn_base.smn_municipios
where
	smn_base.smn_municipios.smn_municipios_id is not null
and
	smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_municipios.mun_ciudades 
and
   	smn_base.smn_municipios.mun_idioma = '${def:locale}'
and
	smn_base.smn_municipios.mun_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_municipios.smn_municipios_id desc
	
