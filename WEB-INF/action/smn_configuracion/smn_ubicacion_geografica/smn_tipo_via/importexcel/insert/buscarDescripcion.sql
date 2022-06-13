select
		smn_base.smn_tipo_via.tiv_descripcion
from
		smn_base.smn_tipo_via
where
		upper(trim(smn_base.smn_tipo_via.tiv_descripcion)) = upper(trim(${fld:tiv_descripcion}))
