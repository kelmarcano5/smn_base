select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:tco_tipo_cco_desc})) = upper(trim('${lbl:b_profitable}')) then 'SR'
				when upper(trim(${fld:tco_tipo_cco_desc})) = upper(trim('${lbl:b_services}')) then 'SE'
				when upper(trim(${fld:tco_tipo_cco_desc})) = upper(trim('${lbl:b_support}')) then 'SP'
				when upper(trim(${fld:tco_tipo_cco_desc})) = upper(trim('${lbl:b_distribution}')) then 'DG'
			end 
	), '') as tco_tipo_cco_ref