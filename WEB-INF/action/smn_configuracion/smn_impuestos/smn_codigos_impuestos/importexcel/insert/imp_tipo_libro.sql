select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:imp_tipo_libro_desc})) = upper(trim('${lbl:b_purchases}')) then 'CO'
				when upper(trim(${fld:imp_tipo_libro_desc})) = upper(trim('${lbl:b_sales}')) then 'VE'
				when upper(trim(${fld:imp_tipo_libro_desc})) = upper(trim('${lbl:b_retention}')) then 'RE'
			end 
	), '') as imp_tipo_libro_ref