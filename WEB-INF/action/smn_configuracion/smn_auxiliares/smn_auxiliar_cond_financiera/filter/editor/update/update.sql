UPDATE smn_base.smn_auxiliar_cond_financiera SET
	cfn_codigo=${fld:cfn_codigo},
	cfn_descripcion=${fld:cfn_descripcion},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	smn_auxiliar_rf=${fld:smn_auxiliar_rf},
	cfn_limite_credito=${fld:cfn_limite_credito},
	cfn_porc_exceso_limite=${fld:cfn_porc_exceso_limite},
	cfn_valida_saldos_vec=${fld:cfn_valida_saldos_vec},
	cfn_dias_adic_saldos_venc=${fld:cfn_dias_adic_saldos_venc},
	cfn_num_cheques_devuel=${fld:cfn_num_cheques_devuel},
	cfn_idioma='${def:locale}',
	cfn_usuario='${def:user}',
	cfn_fecha_registro={d '${def:date}'},
	cfn_hora='${def:time}'

WHERE
	smn_auxiliar_cond_financiera_id=${fld:id}

