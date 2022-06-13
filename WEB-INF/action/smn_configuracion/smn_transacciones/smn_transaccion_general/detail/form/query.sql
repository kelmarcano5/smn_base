select
	smn_base.smn_modulos.mod_nombre,
	smn_base.smn_transaccion_general.*
from
	smn_base.smn_modulos,
	smn_base.smn_transaccion_general
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_transaccion_general.trg_modulo_origen and
	smn_base.smn_transaccion_general.smn_transaccion_general_id = ${fld:id}
