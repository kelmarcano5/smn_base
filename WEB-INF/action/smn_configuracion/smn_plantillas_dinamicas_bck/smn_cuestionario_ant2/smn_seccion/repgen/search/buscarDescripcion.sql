select
		smn_base.smn_seccion.sec_descripcion
from
		smn_base.smn_seccion
where
		upper(smn_base.smn_seccion.sec_descripcion) = upper(${fld:sec_descripcion})
