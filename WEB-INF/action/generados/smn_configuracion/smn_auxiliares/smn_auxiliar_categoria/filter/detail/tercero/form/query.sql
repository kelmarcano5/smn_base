select	
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id, 
	smn_base.smn_auxiliar_categoria.aca_tipo_persona as aca_tipo_persona_pl0,
	(select smn_base.smn_v_auxiliar.aux_codigo || ' - ' || smn_base.smn_v_auxiliar.aux_descripcion from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id  order by smn_base.smn_v_auxiliar.aux_descripcion ) as smn_auxiliar_categoria_id_combo,
	(select smn_base.smn_comunidades.cmn_codigo || ' - ' || smn_base.smn_comunidades.cmn_nombre from  smn_base.smn_comunidades  where smn_base.smn_comunidades.smn_comunidades_id is not null  and smn_base.smn_comunidades.smn_comunidades_id=smn_base.smn_auxiliar_tercero.atr_comunidad  order by smn_base.smn_comunidades.cmn_nombre ) as atr_comunidad_combo,
	(select smn_base.smn_auxiliar_corporaciones.tcp_codigo || ' - ' || smn_base.smn_auxiliar_corporaciones.tcp_nombre from  smn_base.smn_auxiliar_corporaciones  where smn_base.smn_auxiliar_corporaciones.smn_auxiliar_corporaciones_id is not null  and smn_base.smn_auxiliar_corporaciones.smn_auxiliar_corporaciones_id=smn_base.smn_auxiliar_tercero.atr_auxiliar_corporacion  order by smn_base.smn_auxiliar_corporaciones.tcp_nombre ) as atr_auxiliar_corporacion_combo,
	(select smn_base.smn_auxiliar_unidades_negocios.uen_codigo || ' - ' || smn_base.smn_auxiliar_unidades_negocios.uen_nombre from  smn_base.smn_auxiliar_unidades_negocios  where smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id is not null  and smn_base.smn_auxiliar_unidades_negocios.smn_auxiliar_unidades_negocios_id=smn_base.smn_auxiliar_tercero.atr_auxiliar_unidad_negocio  order by smn_base.smn_auxiliar_unidades_negocios.uen_nombre ) as atr_auxiliar_unidad_negocio_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_tercero.atr_maneja_sucursal='N' then '${lbl:b_not}'
	end as atr_maneja_sucursal_combo,
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_tercero.atr_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as atr_tipo_doc_oficial_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_tercero.atr_clasif_abc='C' then '${lbl:b_type} C'
	end as atr_clasif_abc_combo,
	(select smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion  where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar_tercero.atr_direccion  order by smn_base.smn_direccion.dir_descripcion ) as atr_direccion_combo,
	(select smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta || ' - ' || smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece from  smn_base.smn_auxiliar_cuenta_bancaria  where smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id is not null  and smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id=smn_base.smn_auxiliar_tercero.atr_cuenta_bancaria  order by smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece ) as atr_cuenta_bancaria_combo,
	(select smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil from  smn_base.smn_auxiliar_contacto  where smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null  and smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id=smn_base.smn_auxiliar_tercero.atr_contactos  order by smn_base.smn_auxiliar_contacto.acn_telefono_movil ) as atr_contactos_combo,
	(select smn_base.smn_condicion_pago.cop_codigo || ' - ' || smn_base.smn_condicion_pago.cop_descripcion from  smn_base.smn_condicion_pago  where smn_base.smn_condicion_pago.smn_condicion_pago_id is not null  and smn_base.smn_condicion_pago.smn_condicion_pago_id=smn_base.smn_auxiliar_tercero.atr_cond_pago  order by smn_base.smn_condicion_pago.cop_descripcion ) as atr_cond_pago_combo,
	case
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='CO' then '${lbl:b_billing_joint}'
		when smn_base.smn_auxiliar_tercero.atr_tipo_facturac='SE' then '${lbl:b_billing_separated}'
	end as atr_tipo_facturac_combo,
	(select smn_base.smn_auxiliar_cond_financiera.cfn_codigo || ' - ' || smn_base.smn_auxiliar_cond_financiera.cfn_descripcion from  smn_base.smn_auxiliar_cond_financiera  where smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id is not null  and smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id=smn_base.smn_auxiliar_tercero.atr_condicion_financiera  order by smn_base.smn_auxiliar_cond_financiera.cfn_descripcion ) as atr_condicion_financiera_combo,
	smn_base.smn_auxiliar_tercero.*
from
	smn_base.smn_auxiliar_categoria,
	smn_base.smn_auxiliar_tercero 
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_tercero.smn_auxiliar_categoria_id 
 and 
	smn_auxiliar_tercero_id = ${fld:id}
