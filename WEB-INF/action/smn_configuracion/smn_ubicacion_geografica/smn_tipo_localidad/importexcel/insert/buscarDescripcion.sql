select
		smn_base.smn_tipo_localidad.til_descripcion
from
		smn_base.smn_tipo_localidad
where
		upper(trim(smn_base.smn_tipo_localidad.til_descripcion)) = upper(trim(${fld:til_descripcion}))
