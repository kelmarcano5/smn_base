select 
	COALESCE( 
		(select 
			smn_seguridad.s_application.app_id  
		 from   
			smn_seguridad.s_application 
		 where  
			upper(trim(smn_seguridad.s_application .app_alias)) = upper(trim(${fld:pan_app_id_desc}))
	), 0) as pan_app_id_ref
