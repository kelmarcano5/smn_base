INSERT INTO smn_base.smn_sectores_economicos
(
	smn_sectores_economicos_id,
	sec_codigo,
	sec_descripcion,
	sec_idioma,
	sec_usuario,
	sec_fecha_registro,
	sec_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_sectores_economicos},
	${fld:sec_codigo},
	${fld:sec_descripcion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
