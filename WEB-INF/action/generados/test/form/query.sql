select
	(select smn_base.smn_clase_auxiliar.cla_codigo || ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_auxiliar_categoria.aca_clase_auxiliar  order by smn_base.smn_clase_auxiliar.cla_nombre ) as aca_clase_auxiliar_combo,
	case
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PN' then '${lbl:b_natural_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='PJ' then '${lbl:b_legal_person}'
		when smn_base.smn_auxiliar_categoria.aca_tipo_persona='GO' then '${lbl:b_government_person}'
	end as aca_tipo_persona_combo,
	(select smn_base.smn_entidades.ent_codigo || ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades  where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_base.smn_auxiliar_categoria.aca_empresa  order by smn_base.smn_entidades.ent_descripcion_corta ) as aca_empresa_combo,
	(select smn_base.smn_sucursales.suc_codigo || ' - ' || smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales  where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_base.smn_auxiliar_categoria.aca_sucursal  order by smn_base.smn_sucursales.suc_nombre ) as aca_sucursal_combo,
	(select smn_base.smn_unidades_negocios.uen_codigo || ' - ' || smn_base.smn_unidades_negocios.uen_nombre from  smn_base.smn_unidades_negocios  where smn_base.smn_unidades_negocios.smn_unidades_negocios_id is not null  and smn_base.smn_unidades_negocios.smn_unidades_negocios_id=smn_base.smn_auxiliar_categoria.aca_unidad_negocio  order by smn_base.smn_unidades_negocios.uen_nombre ) as aca_unidad_negocio_combo,
	(select smn_base.smn_areas_servicios.ase_codigo || ' - ' || smn_base.smn_areas_servicios.ase_descripcion from  smn_base.smn_areas_servicios  where smn_base.smn_areas_servicios.smn_areas_servicios_id is not null  and smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_auxiliar_categoria.aca_area_servicio  order by smn_base.smn_areas_servicios.ase_descripcion ) as aca_area_servicio_combo,
	(select smn_base.smn_unidades_servicios.uns_codigo || ' - ' || smn_base.smn_unidades_servicios.uns_descripcion from  smn_base.smn_unidades_servicios  where smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null  and smn_base.smn_unidades_servicios.smn_unidades_servicios_id=smn_base.smn_auxiliar_categoria.aca_unidad_servicio  order by smn_base.smn_unidades_servicios.uns_descripcion ) as aca_unidad_servicio_combo,
	smn_base.smn_auxiliar_categoria.*
from 
	smn_base.smn_auxiliar_categoria
where
	smn_auxiliar_categoria_id = ${fld:id}
