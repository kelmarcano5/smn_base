INSERT INTO smn_base.smn_auxiliar_cuenta_bancaria
(
	smn_auxiliar_cuenta_bancaria_id,
	acb_num_cuenta,
	acb_tipo_cta_banco,
	acb_respons_cuenta,
	acb_banco_pertenece,
	acb_num_aba,
	acb_idioma,
	acb_usuario,
	acb_fecha_registro,
	acb_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_auxiliar_cuenta_bancaria},
	${fld:acb_num_cuenta},
	${fld:acb_tipo_cta_banco},
	${fld:acb_respons_cuenta},
	${fld:acb_banco_pertenece},
	${fld:acb_num_aba},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
