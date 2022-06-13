select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:aca_tipo_persona_desc})) = upper(trim('${lbl:b_natural_person}')) then 'PN'
				when upper(trim(${fld:aca_tipo_persona_desc})) = upper(trim('${lbl:b_legal_person}')) then 'PJ'
				when upper(trim(${fld:aca_tipo_persona_desc})) = upper(trim('${lbl:b_government_person}')) then 'GO'
			end 
	), '') as aca_tipo_persona_ref