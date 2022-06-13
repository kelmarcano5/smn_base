select
	smn_base.smn_idiomas.smn_idiomas_id,
	smn_base.smn_idiomas.idi_codigo,
	smn_base.smn_idiomas.idi_descripcion,
	smn_base.smn_idiomas.idi_fecha_registro
from 
	smn_base.smn_idiomas
order by 
	smn_base.smn_idiomas.smn_idiomas_id
