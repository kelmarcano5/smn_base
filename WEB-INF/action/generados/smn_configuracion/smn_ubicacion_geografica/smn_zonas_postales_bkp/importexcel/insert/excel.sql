INSERT INTO smn_base.smn_zonas_postales
(
	smn_zonas_postales_id,
	zpo_ciudades,
	zpo_codigo
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_zonas_postales},
	?,
	?
)
