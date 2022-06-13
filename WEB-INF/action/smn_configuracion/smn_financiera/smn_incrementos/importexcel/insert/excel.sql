INSERT INTO smn_base.smn_incrementos
(
	smn_incrementos_id,
	inc_codigo,
	inc_descripcion,
	smn_vencimiento_cabecera_id,
	inc_apli_cant_precio,
	inc_porcentaje_base,
	inc_porcentaje_incremento,
	inc_apli_todos_it,
	inc_apli_todos_se,
	inc_apli_todos_af,
	inc_estatus,
	inc_vigencia,
	inc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_incrementos},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'},
	{d '${def:date}'}
)
