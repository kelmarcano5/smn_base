select 
	COALESCE( 
		(select 
			smn_base.smn_modulos.smn_modulos_id  
		from   
			smn_base.smn_modulos 
		where  
			upper(trim(smn_base.smn_modulos.mod_nombre)) = upper(trim(${fld:afc_modulo_desc}))
	), '') as afc_modulo_ref