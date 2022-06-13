select 
	COALESCE( 
		(select 
			smn_base.smn_auxiliar_areas_servicios.smn_auxiliar_areas_servicios_id  
		from   
			smn_base.smn_auxiliar_areas_servicios 
		where  
			upper(trim(smn_base.smn_auxiliar_areas_servicios.tse_descripcion)) = upper(trim(${fld:smn_auxiliar_areas_servicios_desc}))
	), 0) as smn_auxiliar_areas_servicios_ref


	