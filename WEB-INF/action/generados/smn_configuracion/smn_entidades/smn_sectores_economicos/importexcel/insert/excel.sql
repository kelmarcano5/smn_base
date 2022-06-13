INSERT INTO smn_base.smn_sectores_economicos
(
	smn_sectores_economicos_id,
	sec_codigo,
	sec_descripcion
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_sectores_economicos},
	?,
	?
)
