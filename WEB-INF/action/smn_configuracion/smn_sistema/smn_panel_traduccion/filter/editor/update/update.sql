UPDATE smn_base.smn_panel_traduccion SET
	pat_panel=${fld:pat_panel},
	pat_description=${fld:pat_description},
	pat_locale=${fld:pat_locale},
	pat_idioma='${def:locale}',
	pat_usuario='${def:user}',
	pat_fecha_registro={d '${def:date}'},
	pat_hora='${def:time}',
	app_id=${fld:app_id}

WHERE
	smn_panel_traduccion_id=${fld:id}

