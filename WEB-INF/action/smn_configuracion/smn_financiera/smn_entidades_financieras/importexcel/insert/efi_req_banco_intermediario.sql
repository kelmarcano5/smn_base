select 
	COALESCE( 
		(select 
			case
				when upper(trim(${fld:efi_req_banco_intermediario_desc})) = upper(trim('${lbl:b_yes}')) then 'S'
				when upper(trim(${fld:efi_req_banco_intermediario_desc})) = upper(trim('${lbl:b_not}')) then 'N'
			end 
	), '') as efi_req_banco_intermediario_ref

