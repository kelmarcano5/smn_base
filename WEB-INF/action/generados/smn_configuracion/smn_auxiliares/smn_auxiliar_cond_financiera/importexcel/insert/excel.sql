INSERT INTO smn_base.smn_auxiliar_cond_financiera
(
	smn_auxiliar_cond_financiera_id,
	cfn_codigo,
	cfn_descripcion,
	cfn_clase_auxiliar,
	cfn_auxiliar_categoria,
	cfn_limite_credito,
	cfn_porc_exceso_limite,
	cfn_valida_saldos_vec,
	cfn_dias_adic_saldos_venc,
	cfn_num_cheques_devuel,
	cfn_idioma,
	cfn_usuario,
	cfn_fecha_registro,
	cfn_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_auxiliar_cond_financiera},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)