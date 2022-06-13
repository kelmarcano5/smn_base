INSERT INTO smn_base.smn_activo_fijo
(
	smn_afijo_id,
	acf_codigo,
	acf_nombre,
	acf_proveedor_exclusivo
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_activo_fijo},
	?,
	?,
	?
)
