UPDATE smn_base.smn_condicion_financiera SET
	cfi_codigo=${fld:cfi_codigo},
	cfi_description=${fld:cfi_description},
	cfi_cant_dias=${fld:cfi_cant_dias},
	cfi_limite_credito=${fld:cfi_limite_credito},
	cfi_porc_exceso_limite=${fld:cfi_porc_exceso_limite},
	cfi_valida_saldos_vec=${fld:cfi_valida_saldos_vec},
	cfi_dias_adic_saldos_venc=${fld:cfi_dias_adic_saldos_venc},
	cfi_num_cheques_devuel=${fld:cfi_num_cheques_devuel},
	cfi_estatus=${fld:cfi_estatus},
	cfi_vigencia={d '${def:date}'},
	cfi_idioma='${def:locale}',
	cfi_usuario='${def:user}',
	cfi_fecha_registro={d '${def:date}'},
	cfi_hora='${def:time}'

WHERE
	smn_condicion_financiera_id=${fld:id}

