select
	smn_base.smn_entidades_financieras.efi_nombre,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_tipo_cuenta_banco.tcb_descripcion,
	${field}
from
	smn_base.smn_entidades_financieras,
	smn_base.smn_monedas,
	smn_base.smn_tipo_cuenta_banco,
	smn_base.smn_cuentas_bancarias
where
	smn_base.smn_entidades_financieras.smn_entidades_financieras_id = smn_base.smn_cuentas_bancarias.cba_entidades_financieras and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_cuentas_bancarias.cba_moneda and
	smn_base.smn_tipo_cuenta_banco.smn_tipo_cuenta_banco_id = smn_base.smn_cuentas_bancarias.cba_tipo_cta_banco and
		smn_base.smn_cuentas_bancarias.smn_cuentas_bancarias_id = ${fld:id}
	
