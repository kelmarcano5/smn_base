INSERT INTO smn_base.smn_nivel_estructura
(
	smn_nivel_estructura_id,
	smn_estructura_codigo_id,
	nes_niveles,
	nes_codigo,
	nes_nombre,
	nes_tipo,
	nes_idioma,
	nes_usuario,
	nes_fecha_registro,
	nes_hora,
	nes_predecesor
)
VALUES
(
	${seq:currval@smn_base.seq_smn_nivel_estructura},
	${fld:smn_estructura_codigo_id},
	${fld:nes_niveles},
	${fld:nes_codigo},
	${fld:nes_nombre},
	${fld:nes_tipo},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}',
	${fld:nes_predecesor}
)
