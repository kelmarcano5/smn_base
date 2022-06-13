UPDATE smn_base.smn_nivel_estructura SET
	smn_estructura_codigo_id=${fld:smn_estructura_codigo_id},
	nes_niveles=${fld:nes_niveles},
	nes_codigo=${fld:nes_codigo},
	nes_nombre=${fld:nes_nombre},
	nes_tipo=${fld:nes_tipo},
	nes_idioma='${def:locale}',
	nes_usuario='${def:user}',
	nes_fecha_registro={d '${def:date}'},
	nes_hora='${def:time}',
	nes_predecesor=${fld:nes_predecesor}

WHERE
	smn_nivel_estructura_id=${fld:id}

