select 
	COALESCE( 
		(select 
			smn_base.smn_direccion.smn_direccion_id  
		from   
			smn_base.smn_direccion 
		where  
			upper(trim(smn_base.smn_direccion.dir_descripcion)) = upper(trim(${fld:ent_direccion_desc}))
	), '') as ent_direccion_ref