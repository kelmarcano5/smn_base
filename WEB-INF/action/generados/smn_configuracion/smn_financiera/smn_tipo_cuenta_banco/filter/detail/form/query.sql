select
	smn_base.smn_tipo_cuenta_banco.*
from 
	smn_base.smn_tipo_cuenta_banco
where
	smn_tipo_cuenta_banco_id = ${fld:id}
