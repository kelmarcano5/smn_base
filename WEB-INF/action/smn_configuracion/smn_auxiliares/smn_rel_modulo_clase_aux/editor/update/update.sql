UPDATE smn_base.smn_rel_modulo_clase_aux SET
	smn_modulos_rf=${fld:smn_modulos_rf},
	smn_clase_auxiliar_rf=${fld:smn_clase_auxiliar_rf},
	rma_idioma='${def:locale}',
	rma_usuario='${def:user}',
	rma_fecha_registro={d '${def:date}'},
	rma_hora='${def:time}'

WHERE
	smn_rel_modulo_clase_aux_id=${fld:id}

