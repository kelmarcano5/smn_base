INSERT INTO smn_base.smn_comunidades
(
	smn_comunidades_id,
	cmn_codigo,
	cmn_nombre
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_comunidades},
	?,
	?
)
