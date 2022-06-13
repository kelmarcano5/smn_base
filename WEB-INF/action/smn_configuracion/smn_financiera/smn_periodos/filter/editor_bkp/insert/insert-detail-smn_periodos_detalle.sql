INSERT INTO smn_base.smn_periodos_detalle
(
	smn_periodos_detalle_id,
	pdl_num_periodo,
	pdl_inicio_periodo,
	pdl_final_periodo,
	smn_periodos_id,
	pdl_idioma,
	pdl_usuario,
	pdl_fecha_registro,
	pdl_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_periodos_detalle},
	${fld:pdl_num_periodo2},
	${fld:pdl_inicio_periodo2},
	${fld:pdl_final_periodo2},
	${seq:currval@smn_base.seq_smn_periodos},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
