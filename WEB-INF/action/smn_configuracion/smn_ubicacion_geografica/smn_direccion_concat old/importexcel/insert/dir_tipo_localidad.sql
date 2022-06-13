select 
	COALESCE( 
		(select 
			smn_base.smn_tipo_localidad.smn_tipo_localidad_id  
		from   
			smn_base.smn_tipo_localidad 
		where  
			upper(trim(smn_base.smn_tipo_localidad.til_descripcion)) = upper(trim(${fld:dir_tipo_localidad_desc}))
	), 0) as dir_tipo_localidad_ref
