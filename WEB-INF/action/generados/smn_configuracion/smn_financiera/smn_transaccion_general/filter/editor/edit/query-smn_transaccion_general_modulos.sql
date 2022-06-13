select
	smn_base.smn_transaccion_general_modulos.*,
	smn_base.smn_modulos.*
from 
	smn_base.smn_transaccion_general_modulos,
	smn_base.smn_modulos
where 
	smn_base.smn_transaccion_general_modulos.smn_transaccion_general_id = ${fld:id} and
	smn_base.smn_transaccion_general_modulos.smn_modulos_id = smn_base.smn_modulos.smn_modulos_id