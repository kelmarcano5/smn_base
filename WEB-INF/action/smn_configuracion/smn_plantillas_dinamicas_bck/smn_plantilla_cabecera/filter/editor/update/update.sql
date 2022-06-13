UPDATE smn_base.smn_plantilla_cabecera SET
	pca_codigo=${fld:pca_codigo},
	pca_descripcion=${fld:pca_descripcion},
	smn_modulo_rf=${fld:smn_modulo_rf},
	pca_status=${fld:pca_status},
	pca_idioma='${def:locale}',
	pca_usuario='${def:user}',
	pca_fecha_registro={d '${def:date}'},
	pca_hora='${def:time}'

WHERE
	smn_plantilla_cabecera_id=${fld:id}

