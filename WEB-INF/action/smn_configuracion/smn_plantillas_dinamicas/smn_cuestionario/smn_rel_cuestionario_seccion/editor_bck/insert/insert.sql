INSERT INTO smn_base.smn_rel_cuestionario_seccion
(
	smn_rel_cuestionario_seccion_id,
	smn_cuestionario_id,
	smn_seccion_id,
	rcs_tipo_seccion,
	rcs_secuencia,
	rcs_color_letra,
	rcs_tipo_letra,
	rcs_tamano_letra,
	rcs_color_sombreado,
	rcs_espacio_identacion
)
VALUES
(
	${seq:currval@smn_base.seq_smn_rel_cuestionario_seccion},
	${fld:smn_cuestionario_id},
	${fld:smn_seccion_id},
	${fld:rcs_tipo_seccion},
	${fld:rcs_secuencia},
	${fld:rcs_color_letra},
	${fld:rcs_tipo_letra},
	${fld:rcs_tamano_letra},
	${fld:rcs_color_sombreado},
	${fld:rcs_espacio_identacion}

)
