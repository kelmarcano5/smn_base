select
		smn_base.smn_afiliaciones.afc_descripcion
from
		smn_base.smn_afiliaciones
where
		upper(trim(smn_base.smn_afiliaciones.afc_descripcion)) = upper(trim(${fld:afc_descripcion}))
