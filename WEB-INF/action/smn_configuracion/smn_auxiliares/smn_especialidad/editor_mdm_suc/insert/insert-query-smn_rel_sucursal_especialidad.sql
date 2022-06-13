INSERT INTO smn_base.smn_rel_sucursal_especialidad
(
	smn_rel_sucursal_especialidad_id,
	smn_especialidad_id,
	smn_sucursales_id
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_rel_sucursal_especialidad},
	${seq:currval@smn_base.seq_smn_especialidad},
	${fld:smn_sucursales_id}
)
