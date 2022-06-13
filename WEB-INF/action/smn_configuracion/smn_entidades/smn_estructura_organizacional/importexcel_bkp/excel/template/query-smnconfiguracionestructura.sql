select
	smn_base.smn_configuracion_estructura.coe_nombre as configuracion_estructura
from
	smn_base.smn_configuracion_estructura,
	smn_base.smn_estructura_organizacional
where
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id
and
	smn_base.smn_estructura_organizacional.eor_idioma = '${def:locale}'
and
	smn_base.smn_estructura_organizacional.eor_usuario = '${def:user}'
order by
	smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id desc
