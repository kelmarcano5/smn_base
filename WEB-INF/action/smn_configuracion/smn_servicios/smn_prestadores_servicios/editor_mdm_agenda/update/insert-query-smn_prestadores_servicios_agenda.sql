INSERT INTO smn_base.smn_prestadores_servicios_agenda
(
	smn_prestadores_servicios_agenda_id,
	smn_prestadores_servicios_id,
	smn_agenda_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_prestadores_servicios_agenda},
	${fld:id},
	${fld:smn_agenda_id}
)
