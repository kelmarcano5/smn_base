select 
	COALESCE( 
		(select 
			smn_base.smn_municipios.smn_municipios_id  
		from   
			smn_base.smn_municipios 
		where  
			upper(trim(smn_base.smn_municipios.mun_nombre_corto)) = upper(trim(${fld:fer_municipio_desc}))
	), 0) as fer_municipio_ref
