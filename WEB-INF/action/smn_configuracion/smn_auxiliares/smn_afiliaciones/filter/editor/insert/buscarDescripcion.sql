select
		smn_base.smn_afiliaciones.afc_descripcion
from
		smn_base.smn_afiliaciones
where
		upper(smn_base.smn_afiliaciones.afc_descripcion) = upper(${fld:afc_descripcion})
