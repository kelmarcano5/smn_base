select
		smn_base.smn_codigos_impuestos.imp_codigo,
	smn_base.smn_codigos_impuestos.imp_descripcion,
	smn_base.smn_codigos_impuestos.imp_tipo_codigo,
	smn_base.smn_codigos_impuestos.imp_modalidad_registro,
	smn_base.smn_codigos_impuestos.imp_porcentaje_base,
	smn_base.smn_codigos_impuestos.imp_porcentaje_calculo,
	smn_base.smn_codigos_impuestos.imp_tipo_libro,
	smn_base.smn_codigos_impuestos.imp_tipo_persona,
	smn_base.smn_codigos_impuestos.imp_tipo_contribuyente,
	smn_base.smn_codigos_impuestos.imp_unidad_impositiva,
	smn_base.smn_codigos_impuestos.imp_ui_minima,
	smn_base.smn_codigos_impuestos.imp_ui_maxima,
	smn_base.smn_codigos_impuestos.imp_ui_sustraendo,
	smn_base.smn_codigos_impuestos.imp_monto_minimo,
	smn_base.smn_codigos_impuestos.imp_monto_maximo,
	smn_base.smn_codigos_impuestos.imp_monto_sustraendo,
	smn_base.smn_codigos_impuestos.imp_fecha_registro
from
	smn_base.smn_codigos_impuestos 
where
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id = ${fld:id}
