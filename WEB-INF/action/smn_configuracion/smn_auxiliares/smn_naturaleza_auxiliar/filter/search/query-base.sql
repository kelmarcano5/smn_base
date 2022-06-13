select
	smn_base.smn_naturaleza_auxiliar.naa_codigo,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
	smn_base.smn_naturaleza_auxiliar.naa_fecha_registro,
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id
from
	smn_base.smn_naturaleza_auxiliar
where
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id is not null
and
	smn_base.smn_naturaleza_auxiliar.naa_idioma = '${def:locale}'
and
	smn_base.smn_naturaleza_auxiliar.naa_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id desc
