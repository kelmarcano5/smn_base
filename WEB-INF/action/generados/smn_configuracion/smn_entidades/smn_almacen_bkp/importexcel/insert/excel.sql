INSERT INTO smn_base.smn_almacen
(
	smn_almacen_id,
	alm_codigo,
	alm_nombre
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_almacen},
	?,
	?
)
