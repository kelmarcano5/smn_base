select 
	COALESCE( 
		(select 
			smn_base.smn_paises.smn_paises_id  
		from   
			smn_base.smn_paises 
		where  
			upper(trim(smn_base.smn_paises.pai_nombre_corto)) = upper(trim(${fld:dir_pais_desc}))
	), 0) as dir_pais_ref
