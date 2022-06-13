select	
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id, 
	smn_base.smn_auxiliar_categoria.aca_tipo_persona as aca_tipo_persona_pl0,
	case
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='C' then '${lbl:b_type} C'
	end as atr_clasif_abc_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='N' then '${lbl:b_not}'
	end as atr_maneja_sucursal_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='CO' then '${lbl:b_billing_joint}'
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='SE' then '${lbl:b_billing_separated}'
	end as atr_tipo_facturac_combo,
	smn_base.smn_auxiliar_tercero.atr_condicion_financiera,
	smn_base.smn_auxiliar_tercero.atr_observacion,
	smn_base.smn_auxiliar_tercero.atr_fecha_registro,
	smn_base.smn_auxiliar_tercero.atr_tipo_doc_oficial,
	smn_base.smn_auxiliar_tercero.atr_num_doc_oficial,
	smn_base.smn_auxiliar_tercero.atr_clasif_abc,
	smn_base.smn_auxiliar_tercero.atr_rif,
	smn_base.smn_auxiliar_tercero.atr_direccion,
	smn_base.smn_auxiliar_tercero.atr_cuenta_bancaria,
	smn_base.smn_auxiliar_tercero.atr_contactos,
	smn_base.smn_auxiliar_tercero.atr_persona_contacto,
	smn_base.smn_auxiliar_tercero.atr_representante_legal,
	smn_base.smn_auxiliar_tercero.atr_benef_pago,
	smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id,
	smn_base.smn_auxiliar_tercero.atr_codigo,
	smn_base.smn_auxiliar_tercero.atr_descripcion,
	smn_base.smn_auxiliar_tercero.atr_comunidad,
	smn_base.smn_auxiliar_tercero.atr_auxiliar_corporacion,
	smn_base.smn_auxiliar_tercero.atr_auxiliar_unidad_negocio,
	smn_base.smn_auxiliar_tercero.atr_maneja_sucursal,
	smn_base.smn_auxiliar_tercero.atr_razon_social,
	smn_base.smn_auxiliar_tercero.atr_denom_comercial,
	smn_base.smn_auxiliar_tercero.atr_beneficiario,
	smn_base.smn_auxiliar_tercero.atr_cond_pago,
	smn_base.smn_auxiliar_tercero.atr_tipo_facturac,
	smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id
from
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_auxiliar_tercero 
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id 
order by 
	smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id desc
