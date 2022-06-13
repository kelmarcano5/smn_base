select
	smn_base.smn_sectores_economicos.sec_codigo,
	smn_base.smn_sectores_economicos.sec_descripcion,
	smn_base.smn_sectores_economicos.sec_fecha_registro,
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id
from
	smn_base.smn_sectores_economicos
where
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id is not null
and
	smn_base.smn_sectores_economicos.sec_idioma = '${def:locale}'
and
	smn_base.smn_sectores_economicos.sec_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id desc
