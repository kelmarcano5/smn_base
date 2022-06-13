select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_servicios.uns_descripcion,
		smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id,
	case
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar,
	smn_base.smn_auxiliar_categoria.aca_tipo_persona,
	smn_base.smn_auxiliar_categoria.aca_empresa,
	smn_base.smn_auxiliar_categoria.aca_sucursal,
	smn_base.smn_auxiliar_categoria.aca_unidad_negocio,
	smn_base.smn_auxiliar_categoria.aca_area_servicio,
	smn_base.smn_auxiliar_categoria.aca_unidad_servicio,
	smn_base.smn_auxiliar_categoria.aca_fecha_registro,
		smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id
from

	smn_base.smn_areas_servicios,
	smn_base.smn_entidades,
	smn_base.smn_naturaleza_auxiliar,
	smn_base.smn_sucursales,
	smn_base.smn_unidades_negocios,
	smn_base.smn_unidades_servicios,
	smn_base.smn_auxiliar_categoria
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_auxiliar_categoria.aca_area_servicio and
	smn_base.smn_entidades.smn_entidades_id = smn_base.smn_auxiliar_categoria.aca_empresa and
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar and
	smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_auxiliar_categoria.aca_sucursal and
	smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_auxiliar_categoria.aca_unidad_negocio and
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_auxiliar_categoria.aca_unidad_servicio
order by
			smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id desc desc
