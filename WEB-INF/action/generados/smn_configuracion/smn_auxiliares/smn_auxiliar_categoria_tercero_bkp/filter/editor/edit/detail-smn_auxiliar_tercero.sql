select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_tercero.atr_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as atr_tipo_doc_oficial2_name,
	case
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='C' then '${lbl:b_type} C'
	end as atr_clasif_abc2_name,
	(select smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion  where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar_tercero.atr_direccion  order by smn_base.smn_direccion.dir_descripcion ) as atr_direccion2_name,
	(select smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta || ' - ' || smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece from  smn_base.smn_auxiliar_cuenta_bancaria  where smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id is not null  and smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id=smn_base.smn_auxiliar_tercero.atr_cuenta_bancaria  order by smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece ) as atr_cuenta_bancaria2_name,
	(select smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil from  smn_base.smn_auxiliar_contacto  where smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null  and smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id=smn_base.smn_auxiliar_tercero.atr_contactos  order by smn_base.smn_auxiliar_contacto.acn_telefono_movil ) as atr_contactos2_name,
	(select smn_base.smn_condicion_pago.cop_codigo || ' - ' || smn_base.smn_condicion_pago.cop_descripcion from  smn_base.smn_condicion_pago  where smn_base.smn_condicion_pago.smn_condicion_pago_id is not null  and smn_base.smn_condicion_pago.smn_condicion_pago_id=smn_base.smn_auxiliar_tercero.atr_cond_pago  order by smn_base.smn_condicion_pago.cop_descripcion ) as atr_cond_pago2_name,
	case
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='CO' then '${lbl:b_billing_joint}'
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='SE' then '${lbl:b_billing_separated}'
	end as atr_tipo_facturac2_name,
	(select smn_base.smn_condicion_financiera.cfn_codigo || ' - ' || smn_base.smn_condicion_financiera.cfn_descripcion from  smn_base.smn_condicion_financiera  where smn_base.smn_condicion_financiera.smn_condicion_financiera_id is not null  and smn_base.smn_condicion_financiera.smn_condicion_financiera_id=smn_base.smn_auxiliar_tercero.atr_condicion_financiera  order by smn_base.smn_condicion_financiera.cfn_descripcion ) as atr_condicion_financiera2_name,
	(select smn_base.smn_auxiliar_categoria.aca_coodigo || ' - ' || smn_base.smn_auxiliar_categoria.aca_descripcion from  smn_base.smn_auxiliar_categoria  where smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id is not null  and smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id  order by smn_base.smn_auxiliar_categoria.aca_descripcion ) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_tercero.atr_codigo as atr_codigo2,
	smn_base.smn_auxiliar_tercero.atr_descripcion as atr_descripcion2,
	smn_base.smn_auxiliar_tercero.atr_razon_social as atr_razon_social2,
	smn_base.smn_auxiliar_tercero.atr_denom_comercial as atr_denom_comercial2,
	smn_base.smn_auxiliar_tercero.atr_beneficiario as atr_beneficiario2,
	smn_base.smn_auxiliar_tercero.atr_tipo_doc_oficial as atr_tipo_doc_oficial2,
	smn_base.smn_auxiliar_tercero.atr_num_doc_oficial as atr_num_doc_oficial2,
	smn_base.smn_auxiliar_tercero.atr_clasif_abc as atr_clasif_abc2,
	smn_base.smn_auxiliar_tercero.atr_rif as atr_rif2,
	smn_base.smn_auxiliar_tercero.atr_direccion as atr_direccion2,
	smn_base.smn_auxiliar_tercero.atr_cuenta_bancaria as atr_cuenta_bancaria2,
	smn_base.smn_auxiliar_tercero.atr_contactos as atr_contactos2,
	smn_base.smn_auxiliar_tercero.atr_persona_contacto as atr_persona_contacto2,
	smn_base.smn_auxiliar_tercero.atr_representante_legal as atr_representante_legal2,
	smn_base.smn_auxiliar_tercero.atr_benef_pago as atr_benef_pago2,
	smn_base.smn_auxiliar_tercero.atr_cond_pago as atr_cond_pago2,
	smn_base.smn_auxiliar_tercero.atr_tipo_facturac as atr_tipo_facturac2,
	smn_base.smn_auxiliar_tercero.atr_condicion_financiera as atr_condicion_financiera2,
	smn_base.smn_auxiliar_tercero.atr_observacion as atr_observacion2,
	smn_base.smn_auxiliar_tercero.smn_auxiliar_tercero_id as smn_auxiliar_tercero_id2,
	smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_tercero
where 
	smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id = ${fld:id}