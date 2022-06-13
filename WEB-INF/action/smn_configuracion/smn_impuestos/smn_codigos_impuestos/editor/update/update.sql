UPDATE smn_base.smn_codigos_impuestos SET
	imp_codigo=${fld:imp_codigo},
	imp_descripcion=${fld:imp_descripcion},
	imp_tipo_codigo=${fld:imp_tipo_codigo},
	imp_modalidad_registro=${fld:imp_modalidad_registro},
	imp_porcentaje_base=${fld:imp_porcentaje_base},
	imp_porcentaje_calculo=${fld:imp_porcentaje_calculo},
	imp_tipo_libro=${fld:imp_tipo_libro},
	imp_tipo_persona=${fld:imp_tipo_persona},
	imp_tipo_contribuyente=${fld:imp_tipo_contribuyente},
	imp_unidad_impositiva=${fld:imp_unidad_impositiva},
	imp_ui_minima=${fld:imp_ui_minima},
	imp_ui_maxima=${fld:imp_ui_maxima},
	imp_ui_sustraendo=${fld:imp_ui_sustraendo},
	imp_monto_minimo=${fld:imp_monto_minimo},
	imp_monto_maximo=${fld:imp_monto_maximo},
	imp_monto_sustraendo=${fld:imp_monto_sustraendo},
	imp_idioma='${def:locale}',
	imp_usuario='${def:user}'
WHERE
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id=${fld:id}

