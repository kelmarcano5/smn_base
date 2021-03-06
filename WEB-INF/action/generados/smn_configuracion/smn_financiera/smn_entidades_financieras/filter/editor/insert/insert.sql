INSERT INTO smn_base.smn_entidades_financieras
(
	smn_entidades_financieras_id,
	efi_codigo,
	efi_nombre,
	efi_direccion,
	efi_telefono_fijo,
	efi_telefono_movil,
	efi_codigo_aba,
	efi_codigo_swift,
	efi_req_banco_intermediario,
	efi_banco_intermediario,
	efi_routing,
	efi_contacto,
	efi_idioma,
	efi_usuario,
	efi_fecha_registro,
	efi_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_entidades_financieras},
	${fld:efi_codigo},
	${fld:efi_nombre},
	${fld:efi_direccion},
	${fld:efi_telefono_fijo},
	${fld:efi_telefono_movil},
	${fld:efi_codigo_aba},
	${fld:efi_codigo_swift},
	${fld:efi_req_banco_intermediario},
	${fld:efi_banco_intermediario},
	${fld:efi_routing},
	${fld:efi_contacto},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
