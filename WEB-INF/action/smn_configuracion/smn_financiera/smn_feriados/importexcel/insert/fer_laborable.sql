select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:fer_laborable_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:fer_laborable_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as fer_laborable_ref