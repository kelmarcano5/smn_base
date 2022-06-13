INSERT INTO smn_base.smn_contactos
(
	smn_contactos_id,
	cnt_nombres,
	cnt_apellidos,
	cnt_email,
	cnt_fecha_registro,
	smn_auxiliar_id,
	smn_clase_auxiliar_rf,
	smn_tipo_contactos_rf,
	cnt_descripcion,
	smn_tipo_contactos_rf1,
	cnt_descripcion1,
	cnt_telefono_contacto
)
VALUES
(
	${seq:nextval@smn_base.seq_smn_contactos},
	?,
	?,
	?,
	{d '${def:date}'},
	?,
	?,
	?,
	?,
	?,
	?,
	?
)