select
	(select smn_base.smn_tipo_doc_oficial.tdo_codigo || ' - ' || smn_base.smn_tipo_doc_oficial.tdo_descripcion from  smn_base.smn_tipo_doc_oficial  where smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id is not null  and smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id=smn_base.smn_auxiliar_persona_natural.ant_tipo_doc_oficial  order by smn_base.smn_tipo_doc_oficial.tdo_descripcion ) as ant_tipo_doc_oficial2_name,
	(select smn_base.smn_paises.pai_codigo || ' - ' || smn_base.smn_paises.pai_gentilicio from  smn_base.smn_paises  where smn_base.smn_paises.smn_paises_id is not null  and smn_base.smn_paises.smn_paises_id=smn_base.smn_auxiliar_persona_natural.ant_nacionalidad  order by smn_base.smn_paises.pai_gentilicio ) as ant_nacionalidad2_name,
	case
		when smn_base.smn_auxiliar_persona_natural.ant_nacionalizado='S' then '${lbl:b_yes}'
		when smn_base.smn_auxiliar_persona_natural.ant_nacionalizado='N' then '${lbl:b_not}'
	end as ant_nacionalizado2_name,
	case
		when smn_base.smn_auxiliar_persona_natural.ant_sexo='MA' then '${lbl:b_male}'
		when smn_base.smn_auxiliar_persona_natural.ant_sexo='FE' then '${lbl:b_female}'
	end as ant_sexo2_name,
	case
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='SO' then '${lbl:b_single}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='CA' then '${lbl:b_married}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='VI' then '${lbl:b_widow}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='DI' then '${lbl:b_divorced}'
		when smn_base.smn_auxiliar_persona_natural.ant_estado_civil='UM' then '${lbl:b_marital_union}'
	end as ant_estado_civil2_name,
	(select smn_base.smn_direccion.dir_codigo || ' - ' || smn_base.smn_direccion.dir_descripcion from  smn_base.smn_direccion  where smn_base.smn_direccion.smn_direccion_id is not null  and smn_base.smn_direccion.smn_direccion_id=smn_base.smn_auxiliar_persona_natural.ant_direccion  order by smn_base.smn_direccion.dir_descripcion ) as ant_direccion2_name,
	(select smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta || ' - ' || smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece from  smn_base.smn_auxiliar_cuenta_bancaria  where smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id is not null  and smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id=smn_base.smn_auxiliar_persona_natural.ant_cuenta_bancaria  order by smn_base.smn_auxiliar_cuenta_bancaria.acb_banco_pertenece ) as ant_cuenta_bancaria2_name,
	(select smn_base.smn_auxiliar_contacto.acn_email || ' - ' || smn_base.smn_auxiliar_contacto.acn_telefono_movil from  smn_base.smn_auxiliar_contacto  where smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id is not null  and smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id=smn_base.smn_auxiliar_persona_natural.ant_contactos  order by smn_base.smn_auxiliar_contacto.acn_telefono_movil ) as ant_contactos2_name,
	(select smn_base.smn_auxiliar_cond_financiera.cfn_codigo || ' - ' || smn_base.smn_auxiliar_cond_financiera.cfn_descripcion from  smn_base.smn_auxiliar_cond_financiera  where smn_base.smn_auxiliar_cond_financiera.smn_condicion_financiera_id is not null  and smn_base.smn_auxiliar_cond_financiera.smn_condicion_financiera_id=smn_base.smn_auxiliar_persona_natural.ant_condicion_financiera  order by smn_base.smn_auxiliar_cond_financiera.cfn_descripcion ) as ant_condicion_financiera2_name,
	(select smn_base.smn_auxiliar_categoria.aca_coodigo || ' - ' || smn_base.smn_auxiliar_categoria.aca_descripcion from  smn_base.smn_auxiliar_categoria  where smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id is not null  and smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id=smn_base.smn_auxiliar_persona_natural.smn_auxiliar_categoria_id  order by smn_base.smn_auxiliar_categoria.aca_descripcion ) as smn_auxiliar_categoria_id2_name,
	smn_base.smn_auxiliar_persona_natural.ant_codigo as ant_codigo2,
	smn_base.smn_auxiliar_persona_natural.ant_descripcion as ant_descripcion2,
	smn_base.smn_auxiliar_persona_natural.ant_nombres as ant_nombres2,
	smn_base.smn_auxiliar_persona_natural.ant_apellidos as ant_apellidos2,
	smn_base.smn_auxiliar_persona_natural.ant_nombre_corto as ant_nombre_corto2,
	smn_base.smn_auxiliar_persona_natural.ant_tipo_doc_oficial as ant_tipo_doc_oficial2,
	smn_base.smn_auxiliar_persona_natural.ant_num_doc_oficial as ant_num_doc_oficial2,
	smn_base.smn_auxiliar_persona_natural.ant_fecha_nac as ant_fecha_nac2,
	smn_base.smn_auxiliar_persona_natural.ant_lugar_nac as ant_lugar_nac2,
	smn_base.smn_auxiliar_persona_natural.ant_rif as ant_rif2,
	smn_base.smn_auxiliar_persona_natural.ant_nacionalidad as ant_nacionalidad2,
	smn_base.smn_auxiliar_persona_natural.ant_nacionalizado as ant_nacionalizado2,
	smn_base.smn_auxiliar_persona_natural.ant_sexo as ant_sexo2,
	smn_base.smn_auxiliar_persona_natural.ant_estado_civil as ant_estado_civil2,
	smn_base.smn_auxiliar_persona_natural.ant_direccion as ant_direccion2,
	smn_base.smn_auxiliar_persona_natural.ant_cuenta_bancaria as ant_cuenta_bancaria2,
	smn_base.smn_auxiliar_persona_natural.ant_contactos as ant_contactos2,
	smn_base.smn_auxiliar_persona_natural.ant_num_gaceta as ant_num_gaceta2,
	smn_base.smn_auxiliar_persona_natural.ant_fecha_gaceta_nac as ant_fecha_gaceta_nac2,
	smn_base.smn_auxiliar_persona_natural.ant_condicion_financiera as ant_condicion_financiera2,
	smn_base.smn_auxiliar_persona_natural.ant_persona_contacto as ant_persona_contacto2,
	smn_base.smn_auxiliar_persona_natural.ant_observacion as ant_observacion2,
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_persona_natural_id as smn_auxiliar_persona_natural_id2,
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_categoria_id as smn_auxiliar_categoria_id2
from 
	smn_base.smn_auxiliar_persona_natural
where 
	smn_base.smn_auxiliar_persona_natural.smn_auxiliar_categoria_id = ${fld:id}