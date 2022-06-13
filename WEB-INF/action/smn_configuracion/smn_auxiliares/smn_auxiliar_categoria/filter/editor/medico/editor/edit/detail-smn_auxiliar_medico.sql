select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_medico.aam_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as aam_tipo_doc_oficial2_name,
	(select smn_base.smn_paises.pai_codigo || ' - ' || smn_base.smn_paises.pai_gentilicio from  smn_base.smn_paises  where smn_base.smn_paises.smn_paises_id is not null  and smn_base.smn_paises.smn_paises_id=smn_base.smn_auxiliar_medico.aam_nacionalidad  order by smn_base.smn_paises.pai_gentilicio ) as aam_nacionalidad2_name,
	case
		when smn_base.smn_auxiliar_medico.aam_nacionalizado='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_medico.aam_nacionalizado='N' then '${lbl:b_not}'
	end as aam_nacionalizado2_name,
	case
		when smn_base.smn_auxiliar_medico.aam_sexo='MA' then '${lbl:b_male}'
		when smn_base.smn_auxiliar_medico.aam_sexo='FE' then '${lbl:b_female}'
	end as aam_sexo2_name,
	case
		when smn_base.smn_auxiliar_medico.aam_estado_civil='SO' then '${lbl:b_single}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil='CA' then '${lbl:b_married}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil='VI' then '${lbl:b_widow}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil='DI' then '${lbl:b_divorced}'
		when smn_base.smn_auxiliar_medico.aam_estado_civil='UM' then '${lbl:b_marital_union}'
	end as aam_estado_civil2_name,
	(select smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion  where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar_medico.aam_direccion  order by smn_base.smn_direccion.dir_descripcion ) as aam_direccion2_name,
	(select smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta || ' - ' || smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece from  smn_base.smn_auxiliar_cuenta_bancaria  where smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id is not null  and smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id=smn_base.smn_auxiliar_medico.aam_cuenta_bancaria  order by smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece ) as aam_cuenta_bancaria2_name,
	(select smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil from  smn_base.smn_auxiliar_contacto  where smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null  and smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id=smn_base.smn_auxiliar_medico.aam_contactos  order by smn_base.smn_auxiliar_contacto.acn_telefono_movil ) as aam_contactos2_name,
	(select smn_base.smn_auxiliar_cond_financiera.cfn_codigo || ' - ' || smn_base.smn_auxiliar_cond_financiera.cfn_descripcion from  smn_base.smn_auxiliar_cond_financiera  where smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id is not null  and smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id=smn_base.smn_auxiliar_medico.aam_condicion_financiera  order by smn_base.smn_auxiliar_cond_financiera.cfn_descripcion ) as aam_condicion_financiera2_name,
	case
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='A' then '${lbl:b_type} A'
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='B' then '${lbl:b_type} B'
		when smn_base.smn_auxiliar_medico.aam_clasif_abc='C' then '${lbl:b_type} C'
	end as aam_clasif_abc2_name,
	(select smn_base.smn_condicion_pago.cop_codigo || ' - ' || smn_base.smn_condicion_pago.cop_descripcion from  smn_base.smn_condicion_pago  where smn_base.smn_condicion_pago.smn_condicion_pago_id is not null  and smn_base.smn_condicion_pago.smn_condicion_pago_id=smn_base.smn_auxiliar_medico.aam_cond_pago  order by smn_base.smn_condicion_pago.cop_descripcion ) as aam_cond_pago2_name,
--	(select smn_base.smn_v_auxiliar.aux_codigo || ' - ' || smn_base.smn_v_auxiliar.aux_descripcion from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id  order by smn_base.smn_v_auxiliar.aux_descripcion ) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_medico.aam_codigo as aam_codigo2,
	smn_base.smn_auxiliar_medico.aam_descripcion as aam_descripcion2,
	smn_base.smn_auxiliar_medico.aam_nombres as aam_nombres2,
	smn_base.smn_auxiliar_medico.aam_apellidos as aam_apellidos2,
	smn_base.smn_auxiliar_medico.aam_tipo_doc_oficial as aam_tipo_doc_oficial2,
	smn_base.smn_auxiliar_medico.aam_num_doc_oficial as aam_num_doc_oficial2,
	smn_base.smn_auxiliar_medico.aam_fecha_nac as aam_fecha_nac2,
	smn_base.smn_auxiliar_medico.aam_lugar_nac as aam_lugar_nac2,
	smn_base.smn_auxiliar_medico.aam_rif as aam_rif2,
	smn_base.smn_auxiliar_medico.aam_nacionalidad as aam_nacionalidad2,
	smn_base.smn_auxiliar_medico.aam_nacionalizado as aam_nacionalizado2,
	smn_base.smn_auxiliar_medico.aam_sexo as aam_sexo2,
	smn_base.smn_auxiliar_medico.aam_estado_civil as aam_estado_civil2,
	smn_base.smn_auxiliar_medico.aam_direccion as aam_direccion2,
	smn_base.smn_auxiliar_medico.aam_cuenta_bancaria as aam_cuenta_bancaria2,
	smn_base.smn_auxiliar_medico.aam_contactos as aam_contactos2,
	smn_base.smn_auxiliar_medico.aam_num_gaceta as aam_num_gaceta2,
	smn_base.smn_auxiliar_medico.aam_fecha_gaceta_nac as aam_fecha_gaceta_nac2,
	smn_base.smn_auxiliar_medico.aam_condicion_financiera as aam_condicion_financiera2,
	smn_base.smn_auxiliar_medico.aam_persona_contacto as aam_persona_contacto2,
	smn_base.smn_auxiliar_medico.aam_num_minist_salud as aam_num_minist_salud2,
	smn_base.smn_auxiliar_medico.aam_num_coleg_medicos as aam_num_coleg_medicos2,
	smn_base.smn_auxiliar_medico.aam_clasif_abc as aam_clasif_abc2,
	smn_base.smn_auxiliar_medico.aam_representante_legal as aam_representante_legal2,
	smn_base.smn_auxiliar_medico.aam_benef_pago as aam_benef_pago2,
	smn_base.smn_auxiliar_medico.aam_cond_pago as aam_cond_pago2,
	smn_base.smn_auxiliar_medico.aam_observacion as aam_observacion2,
	smn_base.smn_auxiliar_medico.smn_auxiliar_medico_id as smn_auxiliar_medico_id2,
	smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_medico
where 
	smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id = ${fld:id}