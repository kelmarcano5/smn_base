select 
	COALESCE( 
		(select 
			smn_seguridad.s_menu.menu_id 
		 from   
			smn_seguridad.s_menu 
		 where  
			upper(trim(smn_seguridad.s_menu.title)) = upper(trim(${fld:set_menu_id_desc}))
	), 0) as set_menu_id_ref