select 
	COALESCE( 
		(select 
			smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id 
		from   
			smn_base.smn_auxiliar_persona_natural 
		where  
			upper(trim(smn_base.smn_auxiliar_persona_natural.ant_nombres || ' ' || smn_base.smn_auxiliar_persona_natural.ant_apellidos)) = upper(trim(${fld:afc_afiliado_desc}))
	), '') as afc_afiliado_ref
