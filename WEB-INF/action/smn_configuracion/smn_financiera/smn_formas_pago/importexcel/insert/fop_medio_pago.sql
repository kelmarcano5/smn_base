select 
	COALESCE( 
		(select 
			smn_base.smn_medio_pago.smn_medio_pago_id  
		from   
			smn_base.smn_medio_pago 
		where  
			upper(trim(smn_base.smn_medio_pago.mpa_descripcion)) = upper(trim(${fld:fop_medio_pago_desc}))
	), 0) as fop_medio_pago_ref
