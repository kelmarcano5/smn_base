select 
	COALESCE( 
		(select 
			smn_base.smn_monedas.smn_monedas_id  
		 from   
			smn_base.smn_monedas 
		 where  
			upper(trim(smn_base.smn_monedas.mon_nombre)) = upper(trim(${fld:tca_moneda_referencia_desc}))
	), '') as tca_moneda_referencia_ref 