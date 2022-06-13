select
		smn_base.smn_afiliaciones.afc_codigo
from
		smn_base.smn_afiliaciones
where
		upper(trim(smn_base.smn_afiliaciones.afc_codigo)) = upper(trim(${fld:afc_codigo}))
