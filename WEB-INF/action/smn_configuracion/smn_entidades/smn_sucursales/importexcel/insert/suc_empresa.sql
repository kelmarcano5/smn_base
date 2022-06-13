select 
	COALESCE( 
		(select 
			smn_base.smn_entidades.smn_entidades_id  
		from   
			smn_base.smn_entidades 
		where  
			upper(trim(smn_base.smn_entidades.ent_descripcion_corta)) = upper(trim(${fld:suc_empresa_desc}))
	), '') as suc_empresa_ref	