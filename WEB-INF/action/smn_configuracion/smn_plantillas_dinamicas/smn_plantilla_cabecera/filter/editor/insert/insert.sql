INSERT INTO smn_base.smn_plantilla_cabecera
(
	smn_plantilla_cabecera_id,
	pca_codigo,
	pca_descripcion,
	smn_modulo_rf,
	pca_status,
	pca_idioma,
	pca_usuario,
	pca_fecha_registro,
	pca_hora
)
VALUES
(
	${seq:currval@smn_base.seq_smn_plantilla_cabecera},
	${fld:pca_codigo},
	${fld:pca_descripcion},
	${fld:smn_modulo_rf},
	${fld:pca_status},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
