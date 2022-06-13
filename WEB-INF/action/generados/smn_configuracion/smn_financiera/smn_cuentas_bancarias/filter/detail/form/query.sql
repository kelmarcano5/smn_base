select
	smn_base.smn_cuentas_bancarias.*
from 
	smn_base.smn_cuentas_bancarias
where
	smn_cuentas_bancarias_id = ${fld:id}
