select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:fop_requiere_banco_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:fop_requiere_banco_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), 0) as fop_requiere_banco_ref