INSERT INTO smn_base.smn_servicios_baremos
(
	smn_servicios_baremos_id,
	smn_servicios_id,
	smn_baremos_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_servicios_baremos},
	${fld:smn_servicios_id},
	${fld:id}
)
