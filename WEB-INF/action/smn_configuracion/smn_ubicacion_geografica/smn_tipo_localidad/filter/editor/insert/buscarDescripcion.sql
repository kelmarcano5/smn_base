select
		smn_base.smn_tipo_localidad.til_descripcion
from
		smn_base.smn_tipo_localidad
where
		upper(smn_base.smn_tipo_localidad.til_descripcion) = upper(${fld:til_descripcion})
