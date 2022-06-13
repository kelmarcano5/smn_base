select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_monday}')) then 'LU'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_tuesday}')) then 'MA'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_wednesday}')) then 'MI'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_thursday}')) then 'JU'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_friday}')) then 'VI'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_saturday}')) then 'SA'
				when upper(trim(${fld:age_dia_semana_desc})) = upper(trim('${lbl:b_sunday}')) then 'DO'
			end 
	), '') as age_dia_semana_ref