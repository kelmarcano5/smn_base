select 
	COALESCE( 
		(select 
			smn_base.smn_parroquias.smn_parroquias_id  
		from   
			smn_base.smn_parroquias 
		where  
			upper(trim(smn_base.smn_parroquias.prr_nombre_corto)) = upper(trim(${fld:dir_parroquia_desc}))
	), 0) as dir_parroquia_ref
