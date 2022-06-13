select 
	COALESCE( 
		(select 
			smn_base.smn_zonas_postales.smn_zonas_postales_id  
		from   
			smn_base.smn_zonas_postales 
		where  
			upper(trim(smn_base.smn_zonas_postales.zpo_codigo)) = upper(trim(${fld:dir_zona_postal_desc}))
	), 0) as dir_zona_postal_ref
