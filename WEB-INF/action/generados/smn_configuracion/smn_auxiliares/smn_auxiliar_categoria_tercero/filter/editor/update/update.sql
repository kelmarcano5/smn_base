UPDATE smn_base.smn_auxiliar_tercero SET
	smn_auxiliar_categoria_id=${fld:smn_auxiliar_categoria_id},
	atr_codigo=${fld:atr_codigo},
	atr_descripcion=${fld:atr_descripcion},
	atr_comunidad=${fld:atr_comunidad},
	atr_auxiliar_corporacion=${fld:atr_auxiliar_corporacion},
	atr_auxiliar_unidad_negocio=${fld:atr_auxiliar_unidad_negocio},
	atr_maneja_sucursal=${fld:atr_maneja_sucursal},
	atr_razon_social=${fld:atr_razon_social},
	atr_denom_comercial=${fld:atr_denom_comercial},
	atr_beneficiario=${fld:atr_beneficiario},
	atr_tipo_doc_oficial=${fld:atr_tipo_doc_oficial},
	atr_num_doc_oficial=${fld:atr_num_doc_oficial},
	atr_clasif_abc=${fld:atr_clasif_abc},
	atr_rif=${fld:atr_rif},
	atr_direccion=${fld:atr_direccion},
	atr_cuenta_bancaria=${fld:atr_cuenta_bancaria},
	atr_contactos=${fld:atr_contactos},
	atr_persona_contacto=${fld:atr_persona_contacto},
	atr_representante_legal=${fld:atr_representante_legal},
	atr_benef_pago=${fld:atr_benef_pago},
	atr_cond_pago=${fld:atr_cond_pago},
	atr_tipo_facturac=${fld:atr_tipo_facturac},
	atr_condicion_financiera=${fld:atr_condicion_financiera},
	atr_observacion=${fld:atr_observacion},
	atr_idioma='${def:locale}',
	atr_usuario='${def:user}',
	atr_fecha_registro={d '${def:date}'},
	atr_hora='${def:time}'

WHERE
	smn_auxiliar_tercero_id=${fld:id}

