select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:ent_maneja_sucursal_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:ent_maneja_sucursal_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as ent_maneja_sucursal_ref	
	