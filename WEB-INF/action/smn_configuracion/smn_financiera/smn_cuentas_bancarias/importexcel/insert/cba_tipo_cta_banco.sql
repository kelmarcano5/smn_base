select 
	COALESCE( 
		(select 
			smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id  
		from   
			smn_base.smn_tipo_cuenta_banco 
		where  
			upper(trim(smn_base.smn_tipo_cuenta_banco.tcb_descripcion)) = upper(trim(${fld:cba_tipo_cta_banco_desc}))
	), 0) as cba_tipo_cta_banco_ref
