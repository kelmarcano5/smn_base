select 
	COALESCE( 
		(select 
			smn_base.smn_tipo_via.smn_tipo_via_id as dir_tipo_via_ref 
		from   
			smn_base.smn_tipo_via 
		where  
			upper(trim(smn_base.smn_tipo_via.tiv_descripcion)) = upper(trim(${fld:dir_tipo_via_desc}))
	), 0) as dir_tipo_via_ref
