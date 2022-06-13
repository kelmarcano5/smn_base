select	
	smn_base.smn_cuentas_bancarias.cba_entidades_financieras,
	smn_base.smn_cuentas_bancarias.cba_codigo,
	smn_base.smn_cuentas_bancarias.cba_nombre,
	smn_base.smn_cuentas_bancarias.cba_nro_cuenta,
	smn_base.smn_cuentas_bancarias.cba_tipo_cta_banco,
	smn_base.smn_cuentas_bancarias.cba_moneda,
	smn_base.smn_cuentas_bancarias.cba_fecha_registro,
	smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id

from
	smn_base.smn_cuentas_bancarias
where
	smn_cuentas_bancarias_id is not null	
 	 	${filter}
order by 
	smn_cuentas_bancarias_id