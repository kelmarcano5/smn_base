select 
	COALESCE( 
		(select 
			smn_base.smn_modulos.smn_modulos_id  
		from   
			smn_base.smn_modulos 
		where  
			upper(trim(smn_base.smn_modulos.mod_nombre)) = upper(trim(${fld:dcg_modulo_origen_desc}))
	), 0) as dcg_modulo_origen_ref
