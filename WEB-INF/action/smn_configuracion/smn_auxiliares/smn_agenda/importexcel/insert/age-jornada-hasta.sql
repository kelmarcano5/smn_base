select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:age_jornada_hasta_desc})) = upper(trim('${lbl:b_schedule_am}')) then 'AM'
				when upper(trim(${fld:age_jornada_hasta_desc})) = upper(trim('${lbl:b_schedule_pm}')) then 'PM'
			end 
	), '') as age_jornada_hasta_ref