select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_clase_auxiliar.cla_nombre as naa_nombre,
	smn_base.smn_naturaleza_auxiliar.naa_nombre as naturaleza_aux,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_servicios.uns_descripcion,
--	smn_base.smn_tipo_doc_oficial.tdo_descripcion,
--	smn_base.smn_direccion.dir_descripcion,
--	smn_base.smn_auxiliar_cuenta_bancaria.acb_num_cuenta,
--	smn_base.smn_auxiliar_contacto.acn_telefono_fijo,
--	smn_base.smn_paises.pai_gentilicio,
--	smn_base.smn_auxiliar_cond_financiera.cfn_descripcion,
--	mn_base.smn_auxiliar_medico.cop_descripcion,
	case
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id as aca_naturaleza_auxiliar,
	smn_base.smn_auxiliar_categoria.aca_tipo_persona,
	smn_base.smn_auxiliar_categoria.aca_empresa,
	smn_base.smn_auxiliar_categoria.aca_sucursal,
	smn_base.smn_auxiliar_categoria.aca_unidad_negocio,
	smn_base.smn_auxiliar_categoria.aca_area_servicio,
	smn_base.smn_auxiliar_categoria.aca_unidad_servicio,
	smn_base.smn_auxiliar_categoria.aca_fecha_registro,
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id
from
	smn_base.smn_auxiliar_categoria
	inner join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar 
	inner join smn_base.smn_naturaleza_auxiliar on smn_base.smn_clase_auxiliar.cla_naturaleza= smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id 
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_auxiliar_categoria.aca_area_servicio 
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_auxiliar_categoria.aca_empresa 
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_auxiliar_categoria.aca_sucursal 
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_auxiliar_categoria.aca_unidad_negocio 
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_auxiliar_categoria.aca_unidad_servicio
--	inner join smn_base.smn_auxiliar_medico on smn_base.smn_auxiliar_medico.smn_auxiliar_categoria_id = smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id
--	left outer join smn_base.smn_tipo_doc_oficial on smn_base.smn_tipo_doc_oficial.smn_tipo_doc_oficial_id = smn_base.smn_auxiliar_medico.aam_tipo_doc_oficial
--	left outer join smn_base.smn_direccion on smn_base.smn_direccion.smn_direccion_id = smn_base.smn_auxiliar_medico.aam_direccion
--	left outer join smn_base.smn_auxiliar_cuenta_bancaria on smn_base.smn_auxiliar_cuenta_bancaria.smn_auxiliar_cuenta_bancaria_id = smn_base.smn_auxiliar_medico.aam_cuenta_bancaria
--	left outer join smn_base.smn_auxiliar_contacto on smn_base.smn_auxiliar_contacto.smn_auxiliar_contacto_id = smn_base.smn_auxiliar_medico.aam_contactos
--	left outer join smn_base.smn_paises on smn_base.smn_paises.smn_paises_id = smn_base.smn_auxiliar_medico.aam_nacionalidad
--	left outer join smn_base.smn_auxiliar_cond_financiera on smn_base.smn_auxiliar_cond_financiera.smn_auxiliar_cond_financiera_id = smn_base.smn_auxiliar_medico.aam_condicion_financiera
--	left outer join smn_base.smn_condicion_pago on smn_base.smn_condicion_pago.smn_condicion_pago_id = smn_base.smn_auxiliar_medico.aam_cond_pago
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = ${fld:id}
