select 
	COALESCE( 
		(select 
			smn_base.smn_modulos.smn_modulos_id  
		from   
			smn_base.smn_modulos 
		where  
			upper(trim(smn_base.smn_modulos.mod_nombre)) = upper(trim(${fld:cla_modulo_desc}))
	), 0) as cla_modulo_ref
