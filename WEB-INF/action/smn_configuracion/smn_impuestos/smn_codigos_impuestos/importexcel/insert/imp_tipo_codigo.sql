select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:imp_tipo_codigo_desc})) = upper(trim('${lbl:b_added_value}')) then 'VA'
				when upper(trim(${fld:imp_tipo_codigo_desc})) = upper(trim('${lbl:b_retention}')) then 'RE'
			end 
	), '') as imp_tipo_codigo_ref