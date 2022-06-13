select 
	COALESCE( 
		(select 
			smn_base.smn_areas_servicios.smn_areas_servicios_id  
		from   
			smn_base.smn_areas_servicios 
		where  
			upper(trim(smn_base.smn_areas_servicios.ase_descripcion)) = upper(trim(${fld:alm_area_servicio_desc}))
	), '') as alm_area_servicio_ref	