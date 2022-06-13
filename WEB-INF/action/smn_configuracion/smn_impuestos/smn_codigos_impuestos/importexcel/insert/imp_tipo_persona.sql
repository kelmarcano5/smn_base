select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:imp_tipo_persona_desc})) = upper(trim('${lbl:b_natural_person}')) then 'NA'
				when upper(trim(${fld:imp_tipo_persona_desc})) = upper(trim('${lbl:b_legal_person}')) then 'JU'
			end 
	), '') as imp_tipo_persona_ref