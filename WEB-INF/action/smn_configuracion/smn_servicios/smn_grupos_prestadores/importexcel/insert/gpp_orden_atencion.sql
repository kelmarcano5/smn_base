select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:gpp_orden_atencion_desc})) = upper(trim('${lbl:b_by_appointment}')) then 'CI'
				when upper(trim(${fld:gpp_orden_atencion_desc})) = upper(trim('${lbl:b_by_arrive_order}')) then 'OL'
			end 
	), '') as gpp_orden_atencion_ref