select 
	COALESCE( 
		(select 
			smn_base.smn_paises.smn_paises_id  
		from   
			smn_base.smn_paises 
		where  
			upper(trim(smn_base.smn_paises.pai_nombre_corto)) = upper(trim(${fld:fer_pais_desc}))
	), 0) as fer_pais_ref
