INSERT INTO smn_base.smn_condicion_financiera
(
	smn_condicion_financiera_id,
	cfi_codigo,
	cfi_description,
	cfi_cant_dias,
	cfi_limite_credito,
	cfi_porc_exceso_limite,
	cfi_valida_saldos_vec,
	cfi_dias_adic_saldos_venc,
	cfi_num_cheques_devuel,
	cfi_estatus,
	cfi_vigencia,
	cfi_idioma,
	cfi_usuario,
	cfi_fecha_registro,
	cfi_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_condicion_financiera},
	${fld:cfi_codigo},
	${fld:cfi_description},
	${fld:cfi_cant_dias},
	${fld:cfi_limite_credito},
	${fld:cfi_porc_exceso_limite},
	${fld:cfi_valida_saldos_vec},
	${fld:cfi_dias_adic_saldos_venc},
	${fld:cfi_num_cheques_devuel},
	${fld:cfi_estatus},
	{d '${def:date}'},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
