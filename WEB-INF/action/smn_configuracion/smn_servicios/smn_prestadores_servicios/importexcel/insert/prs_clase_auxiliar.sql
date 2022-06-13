select 
	COALESCE( 
		(select 
			smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id  
		from   
			smn_base.smn_clase_auxiliar 
		where  
			upper(trim(smn_base.smn_clase_auxiliar.cla_nombre)) = upper(trim(${fld:prs_clase_auxiliar_desc}))
	), 0) as prs_clase_auxiliar_ref
