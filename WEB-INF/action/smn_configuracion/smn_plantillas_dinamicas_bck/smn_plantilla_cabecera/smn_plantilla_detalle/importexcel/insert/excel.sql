INSERT INTO smn_base.smn_plantilla_detalle
(
	smn_plantilla_detalle_id,
	smn_plantilla_cabecera_id,
	smn_seccion_rf,
	pde_sec_seccion,
	smn_pregunta_rf,
	pde_sec_pregunta,
	pde_status,
	pde_idioma,
	pde_usuario,
	pde_fecha_registro,
	pde_hora
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_plantilla_detalle},
	?,
	?,
	?,
	?,
	?,
	?,
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
