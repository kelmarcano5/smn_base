select	
	smn_base.smn_auxiliar_contacto.acn_telefono_fijo,
	smn_base.smn_auxiliar_contacto.acn_telefono_movil,
	smn_base.smn_auxiliar_contacto.acn_email,
	smn_base.smn_auxiliar_contacto.acn_facebook,
	smn_base.smn_auxiliar_contacto.acn_linkedin,
	smn_base.smn_auxiliar_contacto.acn_twitter,
	smn_base.smn_auxiliar_contacto.acn_swift,
	smn_base.smn_auxiliar_contacto.acn_fecha_registro,
	smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id

from
	smn_base.smn_auxiliar_contacto
where
	smn_auxiliar_contacto_id is not null	
 	 	${filter}
order by 
	smn_auxiliar_contacto_id