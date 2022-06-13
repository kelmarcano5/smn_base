select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:suc_maneja_area_servicio_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:suc_maneja_area_servicio_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as suc_maneja_area_servicio_ref	
