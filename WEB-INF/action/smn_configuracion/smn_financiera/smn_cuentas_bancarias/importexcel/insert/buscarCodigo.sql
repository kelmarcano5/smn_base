select
	smn_base.smn_cuentas_bancarias.cba_codigo
from
	smn_base.smn_cuentas_bancarias
where
	upper(trim(smn_base.smn_cuentas_bancarias.cba_codigo)) = upper(trim(${fld:cba_codigo}))
