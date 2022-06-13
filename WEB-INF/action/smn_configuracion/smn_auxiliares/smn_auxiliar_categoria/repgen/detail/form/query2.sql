select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_unidades_negocios.uen_nombre,
	smn_base.smn_unidades_servicios.uns_descripcion,
	case
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
	when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	smn_base.smn_auxiliar_categoria.*
from
	smn_base.smn_auxiliar_categoria
	inner join smn_base.smn_naturaleza_auxiliar on smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id = smn_base.smn_auxiliar_categoria.aca_naturaleza_auxiliar 
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_auxiliar_categoria.aca_area_servicio 
	left outer join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = smn_base.smn_auxiliar_categoria.aca_empresa 
	left outer join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_auxiliar_categoria.aca_sucursal 
	left outer join smn_base.smn_unidades_negocios on smn_base.smn_unidades_negocios.smn_unidades_negocios_id = smn_base.smn_auxiliar_categoria.aca_unidad_negocio 
	left outer join smn_base.smn_unidades_servicios on smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_auxiliar_categoria.aca_unidad_servicio
where
	smn_base.smn_auxiliar_categoria.smn_auxiliar_categoria_id = ${fld:id}
