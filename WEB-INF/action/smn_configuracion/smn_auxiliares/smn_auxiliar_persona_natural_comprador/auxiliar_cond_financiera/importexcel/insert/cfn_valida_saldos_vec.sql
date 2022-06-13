select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:cfn_valida_saldos_vec_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:cfn_valida_saldos_vec_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as cfn_valida_saldos_vec_ref