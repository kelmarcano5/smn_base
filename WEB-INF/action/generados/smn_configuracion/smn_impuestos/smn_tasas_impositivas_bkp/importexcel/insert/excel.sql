INSERT INTO smn_base.smn_tasas_impositivas
(
	smn_tasas_impositivas_id,
	smn_unidades_impositivas_id,
	tim_fecha_vigencia,
	tim_valor
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_tasas_impositivas},
	?,
	?,
	?
)
