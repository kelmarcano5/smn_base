select 
	COALESCE( 
		(select 
			smn_base.smn_direccion.smn_direccion_id  
		from   
			smn_base.smn_direccion 
		where  
			upper(trim(smn_base.smn_direccion.dir_descripcion)) = upper(trim(${fld:suc_direccion_desc}))
	), '') as suc_direccion_ref