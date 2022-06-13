INSERT INTO smn_base.smn_cuentas_bancarias
(
	smn_cuentas_bancarias_id,
	cba_entidades_financieras,
	cba_codigo,
	cba_nombre,
	cba_nro_cuenta,
	cba_tipo_cta_banco,
	cba_moneda,
	cba_idioma,
	cba_usuario,
	cba_fecha_registro,
	cba_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_cuentas_bancarias},
	${fld:cba_entidades_financieras},
	${fld:cba_codigo},
	${fld:cba_nombre},
	${fld:cba_nro_cuenta},
	${fld:cba_tipo_cta_banco},
	${fld:cba_moneda},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
