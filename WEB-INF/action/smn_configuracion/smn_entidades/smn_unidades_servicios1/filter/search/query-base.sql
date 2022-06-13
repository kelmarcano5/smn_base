select
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id,
	smn_base.smn_areas_servicios.smn_areas_servicios_id,
	smn_base.smn_areas_servicios.ase_codigo||'-'||smn_base.smn_areas_servicios.ase_descripcion as ase_codigo_pl0,
	smn_base.smn_unidades_servicios.smn_areas_servicios_id,
	smn_base.smn_unidades_servicios.uns_codigo,
	smn_base.smn_unidades_servicios.uns_descripcion,
	smn_base.smn_unidades_servicios.uns_fecha_registro
from
	smn_base.smn_unidades_servicios
	left outer join smn_base.smn_areas_servicios on smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_unidades_servicios.smn_areas_servicios_id
where
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id is not null
and
	smn_base.smn_areas_servicios.smn_areas_servicios_id=smn_base.smn_unidades_servicios.smn_areas_servicios_id
and
	smn_base.smn_unidades_servicios.uns_idioma = '${def:locale}'
and
	smn_base.smn_unidades_servicios.uns_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id desc
