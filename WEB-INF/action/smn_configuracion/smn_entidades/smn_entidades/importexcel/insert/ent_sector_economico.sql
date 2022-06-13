select 
	COALESCE( 
		(select 
			smn_base.smn_sectores_economicos.smn_sectores_economicos_id  
		from   
			smn_base.smn_sectores_economicos 
		where  
			upper(trim(smn_base.smn_sectores_economicos.sec_descripcion)) = upper(trim(${fld:ent_sector_economico_desc}))
	), '') as ent_sector_economico_ref