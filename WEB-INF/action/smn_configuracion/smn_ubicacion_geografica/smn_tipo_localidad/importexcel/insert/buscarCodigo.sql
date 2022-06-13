select
		smn_base.smn_tipo_localidad.til_codigo
from
		smn_base.smn_tipo_localidad
where
		upper(trim(smn_base.smn_tipo_localidad.til_codigo)) = upper(trim(${fld:til_codigo}))
