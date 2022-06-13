select
	smn_base.smn_auxiliar_cuenta_bancaria.*
from 
	smn_base.smn_auxiliar_cuenta_bancaria
where
	smn_auxiliar_cuenta_bancaria_id = ${fld:id}
