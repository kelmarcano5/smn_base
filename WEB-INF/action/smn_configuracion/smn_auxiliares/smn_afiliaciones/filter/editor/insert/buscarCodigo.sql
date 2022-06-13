select
		smn_base.smn_afiliaciones.afc_codigo
from
		smn_base.smn_afiliaciones
where
		upper(smn_base.smn_afiliaciones.afc_codigo) = upper(${fld:afc_codigo})
