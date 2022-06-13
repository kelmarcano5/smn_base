select
		smn_base.smn_tipo_via.tiv_descripcion
from
		smn_base.smn_tipo_via
where
		upper(smn_base.smn_tipo_via.tiv_descripcion) = upper(${fld:tiv_descripcion})
