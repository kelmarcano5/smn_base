select	
	smn_base.smn_idiomas.idi_codigo,
	smn_base.smn_idiomas.idi_descripcion,
	smn_base.smn_idiomas.idi_fecha_registro,
	smn_base.smn_idiomas.smn_idiomas_id

from
	smn_base.smn_idiomas
where
	smn_idiomas_id is not null	
 	 	${filter}
order by 
	smn_idiomas_id