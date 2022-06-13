select
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id,
	${field}
from
	smn_base.smn_naturaleza_auxiliar
where
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id is not null
and
	smn_base.smn_naturaleza_auxiliar.naa_idioma = '${def:locale}'
and
	smn_base.smn_naturaleza_auxiliar.naa_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id desc
	
