select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_corporation}')) then 'CO'
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_community}')) then 'CM'
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_entity}')) then 'EM'
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_subsidiary}')) then 'SU'
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_service_area}')) then 'AS'
				when upper(trim(${fld:eue_aplica_uen_desc})) = upper(trim('${lbl:b_does_not_apply}')) then 'NA'
			end
	), '') as eue_aplica_uen_ref