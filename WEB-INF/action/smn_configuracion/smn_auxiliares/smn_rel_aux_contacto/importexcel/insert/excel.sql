INSERT INTO smn_base.smn_rel_aux_contacto
(
	smn_rel_aux_contacto_id,
	smn_auxiliar_id,
	smn_auxiliar_contacto_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_aux_contacto},
	?,
	?
)
