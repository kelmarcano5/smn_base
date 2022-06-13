select distinct
	smn_base.smn_configuracion_estructura.coe_nombre as configuracion_estructura
from
	smn_base.smn_configuracion_estructura
where
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id = smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id
and
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id = '${fld:id}'
and
	smn_base.smn_configuracion_estructura.coe_idioma = '${def:locale}'
and
	smn_base.smn_configuracion_estructura.coe_usuario = '${def:user}'
order by
	smn_base.smn_configuracion_estructura.coe_nombre desc
