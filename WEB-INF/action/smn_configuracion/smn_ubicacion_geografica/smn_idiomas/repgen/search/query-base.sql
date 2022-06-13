select
	smn_base.smn_idiomas.smn_idiomas_id,
	${field}
from
	smn_base.smn_idiomas
where
	smn_base.smn_idiomas.smn_idiomas_id is not null
and
   	smn_base.smn_idiomas.idi_idioma = '${def:locale}'
and
	smn_base.smn_idiomas.idi_usuario = '${def:user}'
	${filter}
order by 
	smn_base.smn_idiomas.smn_idiomas_id desc
	
