select
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:cco_nivel_desc})) = upper(trim('${lbl:b_account_detail}')) then 'DE'
				when upper(trim(${fld:cco_nivel_desc})) = upper(trim('${lbl:b_account_title}')) then 'TI'
			end
	), '') as cco_nivel_ref