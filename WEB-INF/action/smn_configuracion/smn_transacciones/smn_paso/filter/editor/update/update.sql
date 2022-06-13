UPDATE smn_base.smn_paso SET
	pas_codigo=${fld:pas_codigo},
	pas_descripcion=${fld:pas_descripcion},
	pas_cod_paso_anterior=${fld:pas_cod_paso_anterior},
	pas_cod_paso_siguiente=${fld:pas_cod_paso_siguiente},
	pas_estatus_doc=${fld:pas_estatus_doc},
	pas_idioma='${def:locale}',
	pas_usuario='${def:user}',
	pas_fecha_registro={d '${def:date}'},
	pas_hora='${def:time}'

WHERE
	smn_paso_id=${fld:id}

