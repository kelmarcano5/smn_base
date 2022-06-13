select
	smn_base.smn_modulos.mod_nombre,
	${field}
from
	smn_base.smn_modulos,
	smn_base.smn_transaccion_general
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_transaccion_general.trg_modulo_origen and
		smn_base.smn_transaccion_general.smn_transaccion_general_id is not null
