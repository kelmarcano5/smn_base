select 
	COALESCE( 
		(select 
			smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id  
		 from   
			smn_base.smn_unidades_impositivas 
		 where  
			upper(trim(smn_base.smn_unidades_impositivas.uim_descripcion)) = upper(trim(${fld:smn_unidades_impositivas_id_desc}))
	), '') as smn_unidades_impositivas_id_ref
	