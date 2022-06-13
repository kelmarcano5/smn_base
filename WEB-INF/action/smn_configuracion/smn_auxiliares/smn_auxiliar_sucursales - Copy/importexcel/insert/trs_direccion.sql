select 
	COALESCE( 
		(select 
			smn_base.smn_direccion.smn_direccion_id  
		from   
			smn_base.smn_direccion 
		where  
			upper(trim(smn_base.smn_direccion.dir_descripcion)) = upper(trim(${fld:trs_direccion_desc}))
	), 0) as trs_direccion_ref
