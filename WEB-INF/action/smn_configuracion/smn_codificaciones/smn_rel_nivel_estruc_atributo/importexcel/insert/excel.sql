INSERT INTO smn_base.smn_rel_nivel_estruc_atributo
(
	smn_rel_nivel_estruc_atributo_id,
	smn_nivel_estructura_id,
	smn_atributo_item_id,
	rna_secuencia
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_nivel_estruc_atributo},
	?,
	?,
	?
)
