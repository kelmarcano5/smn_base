select
	smn_base.smn_municipios.mun_nombre_corto,
	smn_base.smn_parroquias.prr_municipios,
	smn_base.smn_parroquias.prr_codigo,
	smn_base.smn_parroquias.prr_nombre_corto,
	smn_base.smn_parroquias.prr_nombre_largo,
	smn_base.smn_parroquias.prr_fecha_registro,
	smn_base.smn_parroquias.smn_parroquias_id
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
