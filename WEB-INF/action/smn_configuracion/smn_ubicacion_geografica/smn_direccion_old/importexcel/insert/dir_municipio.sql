select 
	COALESCE( 
		(select 
			smn_base.smn_municipios.smn_municipios_id  
		from   
			smn_base.smn_municipios 
		where  
			upper(trim(smn_base.smn_municipios.mun_nombre_corto)) = upper(trim(${fld:dir_municipio_desc}))
	), 0) as dir_municipio_ref
