select 
	COALESCE( 
		(select 
			smn_base.smn_comunidades.smn_comunidades_id  
		from   
			smn_base.smn_comunidades 
		where  
			upper(trim(smn_base.smn_comunidades.cmn_nombre)) = upper(trim(${fld:ent_comunidad_desc}))
	), '') as ent_comunidad_ref	