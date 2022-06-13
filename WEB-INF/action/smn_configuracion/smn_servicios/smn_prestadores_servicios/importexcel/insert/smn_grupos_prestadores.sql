select 
	COALESCE( 
		(select 
			smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id  
		from   
			smn_base.smn_grupos_prestadores 
		where  
			upper(trim(smn_base.smn_grupos_prestadores.gpp_descripcion)) = upper(trim(${fld:smn_grupos_prestadores_desc}))
	), 0) as smn_grupos_prestadores_ref
