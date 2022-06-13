select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:afc_es_titular_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:afc_es_titular_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as afc_es_titular_ref
