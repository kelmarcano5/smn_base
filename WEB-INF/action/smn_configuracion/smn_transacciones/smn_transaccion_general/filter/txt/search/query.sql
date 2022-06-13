select
	smn_base.smn_modulos.mod_nombre,
		smn_base.smn_transaccion_general.smn_transaccion_general_id,
	smn_base.smn_transaccion_general.trg_codigo,
	smn_base.smn_transaccion_general.trg_descripcion,
	smn_base.smn_transaccion_general.trg_modulo_origen,
	smn_base.smn_transaccion_general.trg_fecha_registro
	
from

	smn_base.smn_modulos,
	smn_base.smn_transaccion_general
where
	smn_base.smn_modulos.smn_modulos_id = smn_base.smn_transaccion_general.trg_modulo_origen
