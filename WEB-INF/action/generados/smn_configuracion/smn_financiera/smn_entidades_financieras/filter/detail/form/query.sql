select
	case
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='S' then '${lbl:b_yes}'
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='N' then '${lbl:b_not}'
	end as efi_req_banco_intermediario_combo,
	smn_base.smn_entidades_financieras.*
from 
	smn_base.smn_entidades_financieras
where
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id = ${fld:id}
