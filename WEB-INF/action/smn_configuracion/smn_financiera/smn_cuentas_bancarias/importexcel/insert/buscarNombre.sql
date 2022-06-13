select
	smn_base.smn_cuentas_bancarias.cba_nombre
from
	smn_base.smn_cuentas_bancarias
where
	upper(trim(smn_base.smn_cuentas_bancarias.cba_nombre)) = upper(trim(${fld:cba_nombre}))
