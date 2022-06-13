select
		smn_base.smn_cuentas_bancarias.cba_nombre
from
		smn_base.smn_cuentas_bancarias
where
		upper(smn_base.smn_cuentas_bancarias.cba_nombre) = upper(${fld:cba_nombre})
