select
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id,
	smn_base.smn_sectores_economicos.sec_codigo,
	smn_base.smn_sectores_economicos.sec_descripcion,
	smn_base.smn_sectores_economicos.sec_fecha_registro
from
	smn_base.smn_sectores_economicos
where
	smn_base.smn_sectores_economicos.sec_idioma = '${def:locale}'
order by
	smn_base.smn_sectores_economicos.smn_sectores_economicos_id desc
