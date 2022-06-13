select 
	COALESCE( 
		(select 
			smn_seguridad.s_service.service_id 
		 from   
			smn_seguridad.s_service 
		 where  
			upper(trim(smn_seguridad.s_service.description)) = upper(trim(${fld:set_servicio_id_desc}))
	), 0) as set_servicio_id_ref