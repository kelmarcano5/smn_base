select 
	COALESCE( 
		(select 
			smn_base.smn_entidades_federales.smn_entidades_federales_id  
		from   
			smn_base.smn_entidades_federales 
		where  
			upper(trim(smn_base.smn_entidades_federales.efe_nombre_corto)) = upper(trim(${fld:dir_entidad_federal_desc}))
	), 0) as dir_entidad_federal_ref
