select
		smn_base.smn_cuentas_bancarias.cba_codigo
from
		smn_base.smn_cuentas_bancarias
where
		upper(smn_base.smn_cuentas_bancarias.cba_codigo) = upper(${fld:cba_codigo})
