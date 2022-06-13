select 
	COALESCE( 
		(select 
			smn_base.smn_parroquias.smn_parroquias_id  
		 from   
			smn_base.smn_parroquias 
		 where  
			upper(trim(smn_base.smn_parroquias.prr_codigo)) || ' ' || upper(trim(smn_base.smn_parroquias.prr_nombre_corto)) = upper(trim(${fld:zpo_parroquias_desc}))
		), 0) as zpo_parroquias_ref
