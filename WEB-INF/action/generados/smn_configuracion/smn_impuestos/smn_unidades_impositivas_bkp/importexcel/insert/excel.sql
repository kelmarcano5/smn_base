INSERT INTO smn_base.smn_unidades_impositivas
(
	smn_unidades_impositivas_id,
	uim_codigo,
	uim_descripcion,
	uim_moneda_referencia
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_unidades_impositivas},
	?,
	?,
	?
)
