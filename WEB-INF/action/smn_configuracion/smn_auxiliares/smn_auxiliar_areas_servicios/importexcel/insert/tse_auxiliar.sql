select 
	COALESCE( 
		(select 
			smn_base.smn_v_auxiliar.smn_v_auxiliar_id  
		from   
			smn_base.smn_v_auxiliar 
		where  
			upper(trim(smn_base.smn_v_auxiliar.smn_item)) = upper(trim(${fld:tse_auxiliar_desc}))
	), 0) as tse_auxiliar_ref
