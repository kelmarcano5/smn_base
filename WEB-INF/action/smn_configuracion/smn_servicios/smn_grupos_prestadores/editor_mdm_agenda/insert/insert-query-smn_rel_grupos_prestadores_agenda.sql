INSERT INTO smn_base.smn_rel_grupos_prestadores_agenda
(
	smn_rel_grupos_prestadores_agenda_id,
	smn_grupos_prestadores_id,
	smn_agenda_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_grupos_prestadores_agenda},
	${seq:currval@smn_base.seq_smn_grupos_prestadores},
	${fld:smn_agenda_id}
)
