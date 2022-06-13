select 
	COALESCE( 
		(select 
			smn_base.smn_auxiliar_tipos_servicios.smn_auxiliar_tipos_servicios_id  
		from   
			smn_base.smn_auxiliar_tipos_servicios 
		where  
			upper(trim(smn_base.smn_auxiliar_tipos_servicios.tts_descripcion)) = upper(trim(${fld:smn_auxiliar_tipos_servicios_desc}))
	), '') as smn_auxiliar_tipos_servicios_ref

	