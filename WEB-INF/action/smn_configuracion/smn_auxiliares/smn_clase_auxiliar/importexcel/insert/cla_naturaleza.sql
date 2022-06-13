select 
	COALESCE( 
		(select 
			smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id  
		from   
			smn_base.smn_naturaleza_auxiliar 
		where  
			upper(trim(smn_base.smn_naturaleza_auxiliar.naa_nombre)) = upper(trim(${fld:cla_naturaleza_desc}))
			), 0) as cla_naturaleza_ref
