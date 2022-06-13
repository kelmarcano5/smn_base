select 
	COALESCE( 
		(select 
			smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id 
		 from   
			smn_base.smn_unidades_impositivas 
		 where  
			upper(trim(smn_base.smn_unidades_impositivas.uim_descripcion)) = upper(trim(${fld:imp_unidad_impositiva_desc}))
	), '') as imp_unidad_impositiva_ref
