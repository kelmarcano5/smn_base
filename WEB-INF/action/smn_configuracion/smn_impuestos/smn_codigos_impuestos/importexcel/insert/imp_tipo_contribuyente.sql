select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:imp_tipo_contribuyente_desc})) = upper(trim('${lbl:b_formal_taxpayer}')) then 'FO'
				when upper(trim(${fld:imp_tipo_contribuyente_desc})) = upper(trim('${lbl:b_ordinary_taxpayer}')) then 'OR'
				when upper(trim(${fld:imp_tipo_contribuyente_desc})) = upper(trim('${lbl:b_no_taxpayer}')) then 'NC'
				when upper(trim(${fld:imp_tipo_contribuyente_desc})) = upper(trim('${lbl:b_special_taxpayer}')) then 'ES'
			end 
	), '') as imp_tipo_contribuyente_ref