select
	smn_base.smn_monedas.mon_codigo,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_monedas.mon_fecha_registro,
	smn_base.smn_monedas.smn_monedas_id	
from
	smn_base.smn_monedas
where
	smn_base.smn_monedas.smn_monedas_id is not null
and
	smn_base.smn_monedas.mon_idioma = '${def:locale}'
and
	smn_base.smn_monedas.mon_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_monedas.smn_monedas_id desc
