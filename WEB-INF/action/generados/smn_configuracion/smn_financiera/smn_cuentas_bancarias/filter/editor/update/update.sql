UPDATE smn_base.smn_cuentas_bancarias SET
	cba_entidades_financieras=${fld:cba_entidades_financieras},
	cba_codigo=${fld:cba_codigo},
	cba_nombre=${fld:cba_nombre},
	cba_nro_cuenta=${fld:cba_nro_cuenta},
	cba_tipo_cta_banco=${fld:cba_tipo_cta_banco},
	cba_moneda=${fld:cba_moneda},
	cba_idioma='${def:locale}',
	cba_usuario='${def:user}',
	cba_fecha_registro={d '${def:date}'},
	cba_hora='${def:time}'

WHERE
	smn_cuentas_bancarias_id=${fld:id}

