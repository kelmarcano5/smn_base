select
		smn_base.smn_nivel_aprobacion.nap_descripcion
from
		smn_base.smn_nivel_aprobacion
where
		upper(smn_base.smn_nivel_aprobacion.nap_descripcion) = upper(${fld:nap_descripcion})
