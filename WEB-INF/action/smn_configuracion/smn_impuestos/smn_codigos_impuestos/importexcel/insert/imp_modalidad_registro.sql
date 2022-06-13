select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:imp_modalidad_registro_desc})) = upper(trim('${lbl:b_obligation}')) then 'VA'
				when upper(trim(${fld:imp_modalidad_registro_desc})) = upper(trim('${lbl:b_payment}')) then 'RE'
			end 
	), '') as imp_modalidad_registro_ref