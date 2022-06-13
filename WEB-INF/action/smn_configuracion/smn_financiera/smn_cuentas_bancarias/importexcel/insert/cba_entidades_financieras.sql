select 
	COALESCE( 
		(select 
			smn_base.smn_entidades_financieras.smn_entidades_financieras_id  
		from   
			smn_base.smn_entidades_financieras 
		where  
			upper(trim(smn_base.smn_entidades_financieras.efi_nombre)) = upper(trim(${fld:cba_entidades_financieras_desc}))
	), 0) as cba_entidades_financieras_ref
