UPDATE smn_base.smn_transaccion_general SET
	trg_codigo=${fld:trg_codigo},
	trg_descripcion=${fld:trg_descripcion},
	trg_modulo_origen=${fld:trg_modulo_origen},
	trg_idioma='${def:locale}',
	trg_usuario='${def:user}'
WHERE
	smn_base.smn_transaccion_general.smn_transaccion_general_id=${fld:id}

