UPDATE smn_base.smn_tipo_registro SET
	trg_codigo=${fld:trg_codigo},
	trg_descripcion=${fld:trg_descripcion},
	trg_idioma='${def:locale}',
	trg_usuario='${def:user}',
	smn_roles_rf=${fld:smn_roles_rf}
WHERE
	smn_base.smn_tipo_registro.smn_tipo_registro_id=${fld:id}

