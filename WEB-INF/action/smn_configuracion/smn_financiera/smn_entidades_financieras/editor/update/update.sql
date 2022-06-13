UPDATE smn_base.smn_entidades_financieras SET
	efi_codigo=${fld:efi_codigo},
	efi_nombre=${fld:efi_nombre},
	efi_direccion=${fld:efi_direccion},
	efi_telefono_fijo=${fld:efi_telefono_fijo},
	efi_telefono_movil=${fld:efi_telefono_movil},
	efi_codigo_aba=${fld:efi_codigo_aba},
	efi_codigo_swift=${fld:efi_codigo_swift},
	efi_req_banco_intermediario=${fld:efi_req_banco_intermediario},
	efi_banco_intermediario=${fld:efi_banco_intermediario},
	efi_routing=${fld:efi_routing},
	efi_contacto=${fld:efi_contacto},
	efi_idioma='${def:locale}',
	efi_usuario='${def:user}'
WHERE
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id=${fld:id}

