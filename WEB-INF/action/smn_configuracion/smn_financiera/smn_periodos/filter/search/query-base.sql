select
	smn_base.smn_periodos.prd_codigo,
	smn_base.smn_periodos.prd_descripcion,
	smn_base.smn_periodos.prd_ano,
	smn_base.smn_periodos.prd_fecha_registro,
	smn_base.smn_periodos.smn_periodos_id
from
	smn_base.smn_periodos
where
	smn_base.smn_periodos.smn_periodos_id is not null
and
	smn_base.smn_periodos.prd_idioma = '${def:locale}'
and
	smn_base.smn_periodos.prd_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_periodos.smn_periodos_id desc
