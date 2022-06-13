select 
	COALESCE( 
		(select 
			smn_seguridad.s_role.role_id 
		 from   
			smn_seguridad.s_role 
		 where  
			upper(trim(smn_seguridad.s_role.rolename)) = upper(trim(${fld:pan_role_id_desc}))
	), 0) as pan_role_id_ref