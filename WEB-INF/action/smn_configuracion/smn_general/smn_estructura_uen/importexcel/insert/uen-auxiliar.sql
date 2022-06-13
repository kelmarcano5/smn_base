select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_outsourced_corporation}')) then 'CO'
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_community}')) then 'CM'
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_intermediary_assistant}')) then 'AT'
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_outsourced_subsidiary}')) then 'AS'
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_outsourced_service_area}')) then 'AA'
				when upper(trim(${fld:eue_aplica_auxiliar_uen_desc})) = upper(trim('${lbl:b_does_not_apply}')) then 'NA'
			end  
		), '') as eue_aplica_auxiliar_uen_ref