select
	smn_base.smn_feriados.smn_feriados_id,
	${field}
from
	smn_base.smn_feriados
	left outer join smn_base.smn_ciudades on smn_base.smn_ciudades.smn_ciudades_id = smn_base.smn_feriados.fer_ciudad
	left outer join smn_base.smn_entidades_federales on smn_base.smn_entidades_federales.smn_entidades_federales_id = smn_base.smn_feriados.fer_entidad_federal
	left outer join smn_base.smn_municipios on smn_base.smn_municipios.smn_municipios_id = smn_base.smn_feriados.fer_municipio
	left outer join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_feriados.fer_pais
where
	smn_base.smn_feriados.smn_feriados_id is not null
and
	smn_base.smn_feriados.fer_idioma = '${def:locale}'
and
	smn_base.smn_feriados.fer_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_feriados.smn_feriados_id desc
	
