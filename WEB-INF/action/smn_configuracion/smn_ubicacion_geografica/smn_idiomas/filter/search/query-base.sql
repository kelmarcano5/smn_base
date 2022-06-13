select	
	smn_base.smn_idiomas.idi_codigo,
	smn_base.smn_idiomas.idi_descripcion,
	smn_base.smn_idiomas.idi_fecha_registro,
	smn_base.smn_idiomas.smn_idiomas_id
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
