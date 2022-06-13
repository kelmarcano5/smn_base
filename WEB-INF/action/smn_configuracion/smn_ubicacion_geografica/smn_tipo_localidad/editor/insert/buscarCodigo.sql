select
		smn_base.smn_tipo_localidad.til_codigo
from
		smn_base.smn_tipo_localidad
where
		upper(smn_base.smn_tipo_localidad.til_codigo) = upper(${fld:til_codigo})
