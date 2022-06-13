select 
	COALESCE( 
		(select 
			smn_base.smn_monedas.smn_monedas_id  
		from   
			smn_base.smn_monedas 
		where  
			upper(trim(smn_base.smn_monedas.mon_nombre)) = upper(trim(${fld:tcp_moneda_desc}))
	), 0) as tcp_moneda_ref
