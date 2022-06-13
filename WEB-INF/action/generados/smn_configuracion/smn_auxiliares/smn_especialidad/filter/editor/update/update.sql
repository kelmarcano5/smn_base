UPDATE smn_base.smn_especialidad SET
	esp_codigo=${fld:esp_codigo},
	esp_descripcion=${fld:esp_descripcion},
	esp_idioma='${def:locale}',
	esp_usuario='${def:user}',
	esp_fecha_registro={d '${def:date}'},
	esp_hora='${def:time}'

WHERE
	smn_especialidad_id=${fld:id}

