select
	smn_base.smn_monedas.smn_monedas_id,
	smn_base.smn_monedas.mon_codigo,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_monedas.mon_fecha_registro	
from
	smn_base.smn_monedas
where
	smn_base.smn_monedas.mon_idioma = '${def:locale}'
order by
	smn_base.smn_monedas.smn_monedas_id desc