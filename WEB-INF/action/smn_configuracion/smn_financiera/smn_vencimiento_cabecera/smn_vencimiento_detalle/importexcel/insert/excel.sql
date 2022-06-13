INSERT INTO smn_base.smn_vencimiento_detalle
(
	smn_vencimiento_detalle_id,
	smn_vencimiento_cabecera_id,
	tvd_titulo,
	tvd_tipo_aplicacion,
	tvd_dias_desde,
	tvd_dias_hasta,
	tvd_fecha_registro
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_vencimiento_detalle},
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
