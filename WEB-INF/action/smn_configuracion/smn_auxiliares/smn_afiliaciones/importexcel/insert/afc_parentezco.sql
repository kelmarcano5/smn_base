select 
	COALESCE( 
		(select 
			smn_base.smn_parentezco.smn_parentezco_id  
		from   
			smn_base.smn_parentezco 
		where  
			upper(trim(smn_base.smn_parentezco.ptz_descripcion)) = upper(trim(${fld:afc_parentezco_desc}))
	), '') as afc_parentezco_ref