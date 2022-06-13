INSERT INTO smn_base.smn_prestadores_servicios_especialidad
(
	smn_prestadores_servicios_especialidad_id,
	smn_prestadores_servicios_id,
	smn_especialidad_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_prestadores_servicios_especialidad},
	${seq:currval@smn_base.seq_smn_prestadores_servicios},
	${fld:smn_especialidad_id}
)
