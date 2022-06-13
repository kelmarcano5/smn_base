select 
	COALESCE( 
		(select 
			smn_base.smn_entidades_federales.smn_entidades_federales_id  
		 from   
			smn_base.smn_entidades_federales 
		 where  
			upper(trim(smn_base.smn_entidades_federales.efe_codigo)) || ' - ' || upper(trim(smn_base.smn_entidades_federales.efe_nombre_corto)) = upper(trim(${fld:ciu_entidades_federales_desc}))
	), 0) as ciu_entidades_federales_ref