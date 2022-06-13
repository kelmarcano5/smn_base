select 
	COALESCE( 
		(select 
			smn_base.smn_corporaciones.smn_corporaciones_id  
		from   
			smn_base.smn_corporaciones 
		where  
			upper(trim(smn_base.smn_corporaciones.crp_nombre)) = upper(trim(${fld:ent_corporacion_desc}))
	), '') as ent_corporacion_ref