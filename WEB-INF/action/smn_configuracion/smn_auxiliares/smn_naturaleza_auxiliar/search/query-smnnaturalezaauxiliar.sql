select
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id,
	smn_base.smn_naturaleza_auxiliar.naa_codigo,
	smn_base.smn_naturaleza_auxiliar.naa_nombre,
	smn_base.smn_naturaleza_auxiliar.naa_fecha_registro
from
	smn_base.smn_naturaleza_auxiliar
where
	smn_base.smn_naturaleza_auxiliar.naa_idioma = '${def:locale}'
order by
	smn_base.smn_naturaleza_auxiliar.smn_naturaleza_auxiliar_id desc