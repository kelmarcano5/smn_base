select 
	COALESCE( 
		(select 
			smn_base.smn_franquicias.smn_franquicias_id  
		from   
			smn_base.smn_franquicias 
		where  
			upper(trim(smn_base.smn_franquicias.fra_descripcion)) = upper(trim(${fld:fop_franquicia_desc}))
	), 0) as fop_franquicia_ref
