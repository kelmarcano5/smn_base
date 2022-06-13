select
	smn_base.smn_periodos.smn_periodos_id,
	${field}
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
	
