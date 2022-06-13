select	
	case
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='S' then '${lbl:b_yes}'
		when smn_base.smn_entidades_financieras.efi_req_banco_intermediario='N' then '${lbl:b_not}'
	end as efi_req_banco_intermediario_combo,
	smn_base.smn_entidades_financieras.efi_codigo,
	smn_base.smn_entidades_financieras.efi_fecha_registro,
	smn_base.smn_entidades_financieras.efi_nombre,
	smn_base.smn_entidades_financieras.efi_direccion,
	smn_base.smn_entidades_financieras.efi_telefono_fijo,
	smn_base.smn_entidades_financieras.efi_telefono_movil,
	smn_base.smn_entidades_financieras.efi_codigo_aba,
	smn_base.smn_entidades_financieras.efi_codigo_swift,
	smn_base.smn_entidades_financieras.efi_req_banco_intermediario,
	smn_base.smn_entidades_financieras.efi_banco_intermediario,
	smn_base.smn_entidades_financieras.efi_routing,
	smn_base.smn_entidades_financieras.efi_contacto,
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id

from
	smn_base.smn_entidades_financieras
where
	smn_entidades_financieras_id is not null	
 	 	${filter}
order by 
	smn_entidades_financieras_id