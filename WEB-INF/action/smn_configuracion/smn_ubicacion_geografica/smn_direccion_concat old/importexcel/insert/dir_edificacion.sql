select 
	COALESCE( 
		(select 
			smn_base.smn_edificacion.smn_edificacion_id  
		from   
			smn_base.smn_edificacion 
		where  
			upper(trim(smn_base.smn_edificacion.edf_descripcion)) = upper(trim(${fld:dir_edificacion_desc}))
	), 0) as dir_edificacion_ref
