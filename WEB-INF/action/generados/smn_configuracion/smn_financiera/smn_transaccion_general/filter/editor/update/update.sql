UPDATE smn_base.smn_transaccion_general SET
	trg_codigo=${fld:trg_codigo},
	trg_descripcion=${fld:trg_descripcion},
	trg_modulo_origen=${fld:trg_modulo_origen},
	trg_idioma='${def:locale}',
	trg_usuario='${def:user}',
	trg_fecha_registro={d '${def:date}'},
	trg_hora='${def:time}'

WHERE
	smn_transaccion_general_id=${fld:id}

