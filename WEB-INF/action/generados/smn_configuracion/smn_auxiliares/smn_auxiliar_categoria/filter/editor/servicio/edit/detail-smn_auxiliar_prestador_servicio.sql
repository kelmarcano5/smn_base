select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_prestador_servicio.aps_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as aps_tipo_doc_oficial2_name,
	case
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc='C' then '${lbl:b_type} C'
	end as aps_clasif_abc2_name,
	(select smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion  where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar_prestador_servicio.aps_direccion  order by smn_base.smn_direccion.dir_descripcion ) as aps_direccion2_name,
	(select smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta || ' - ' || smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece from  smn_base.smn_auxiliar_cuenta_bancaria  where smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id is not null  and smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id=smn_base.smn_auxiliar_prestador_servicio.aps_cuenta_bancaria  order by smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece ) as aps_cuenta_bancaria2_name,
	(select smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil from  smn_base.smn_auxiliar_contacto  where smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null  and smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id=smn_base.smn_auxiliar_prestador_servicio.aps_contactos  order by smn_base.smn_auxiliar_contacto.acn_telefono_movil ) as aps_contactos2_name,
	(select smn_base.smn_condicion_pago.cop_codigo || ' - ' || smn_base.smn_condicion_pago.cop_descripcion from  smn_base.smn_condicion_pago  where smn_base.smn_condicion_pago.smn_condicion_pago_id is not null  and smn_base.smn_condicion_pago.smn_condicion_pago_id=smn_base.smn_auxiliar_prestador_servicio.aps_cond_pago  order by smn_base.smn_condicion_pago.cop_descripcion ) as aps_cond_pago2_name,
	(select smn_base.smn_v_auxiliar.aux_codigo || ' - ' || smn_base.smn_v_auxiliar.aux_descripcion from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_categoria_id  order by smn_base.smn_v_auxiliar.aux_descripcion ) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_prestador_servicio.aps_codigo as aps_codigo2,
	smn_base.smn_auxiliar_prestador_servicio.aps_descripcion as aps_descripcion2,
	smn_base.smn_auxiliar_prestador_servicio.aps_beneficiario as aps_beneficiario2,
	smn_base.smn_auxiliar_prestador_servicio.aps_tipo_doc_oficial as aps_tipo_doc_oficial2,
	smn_base.smn_auxiliar_prestador_servicio.aps_num_doc_oficial as aps_num_doc_oficial2,
	smn_base.smn_auxiliar_prestador_servicio.aps_clasif_abc as aps_clasif_abc2,
	smn_base.smn_auxiliar_prestador_servicio.aps_rif as aps_rif2,
	smn_base.smn_auxiliar_prestador_servicio.aps_direccion as aps_direccion2,
	smn_base.smn_auxiliar_prestador_servicio.aps_cuenta_bancaria as aps_cuenta_bancaria2,
	smn_base.smn_auxiliar_prestador_servicio.aps_contactos as aps_contactos2,
	smn_base.smn_auxiliar_prestador_servicio.aps_persona_contacto as aps_persona_contacto2,
	smn_base.smn_auxiliar_prestador_servicio.aps_representante_legal as aps_representante_legal2,
	smn_base.smn_auxiliar_prestador_servicio.aps_benef_pago as aps_benef_pago2,
	smn_base.smn_auxiliar_prestador_servicio.aps_cond_pago as aps_cond_pago2,
	smn_base.smn_auxiliar_prestador_servicio.aps_observacion as aps_observacion2,
	smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_prestador_servicio_id as smn_auxiliar_prestador_servicio_id2,
	smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_prestador_servicio
where 
	smn_base.smn_auxiliar_prestador_servicio.smn_auxiliar_categoria_id = ${fld:id}