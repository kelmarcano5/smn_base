select
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id,
	smn_base.smn_areas_servicios.smn_areas_servicios_id,
	smn_base.smn_areas_servicios.ase_codigo||'-'||smn_base.smn_areas_servicios.ase_descripcion as ase_codigo_pl0,
	smn_base.smn_unidades_servicios.smn_areas_servicios_id,
	smn_base.smn_unidades_servicios.uns_codigo,
	smn_base.smn_unidades_servicios.uns_descripcion,
	case
		when smn_base.smn_unidades_servicios.smn_tipo_unidad_administrativa='AD' then 'Administrativa'
		when smn_base.smn_unidades_servicios.smn_tipo_unidad_administrativa='DS' then 'Servicio'
	end as smn_tipo_unidad_administrativa,
	case
		when smn_base.smn_unidades_servicios.uns_es_laboratorio='SI' then '${lbl:b_yes}'
		when smn_base.smn_unidades_servicios.uns_es_laboratorio='NO' then '${lbl:b_not}'
	end as uns_es_laboratorio,
	smn_base.smn_unidades_servicios.uns_fecha_registro
from
	smn_base.smn_unidades_servicios
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_unidades_servicios.smn_areas_servicios_id
order by
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id desc
