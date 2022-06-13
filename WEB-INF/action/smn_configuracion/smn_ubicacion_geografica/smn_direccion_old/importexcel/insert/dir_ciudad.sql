select 
	COALESCE( 
		(select 
			smn_base.smn_ciudades.smn_ciudades_id  
		from   
			smn_base.smn_ciudades 
		where  
			upper(trim(smn_base.smn_ciudades.ciu_nombre_corto)) = upper(trim(${fld:dir_ciudad_desc}))
	), 0) as dir_ciudad_ref
