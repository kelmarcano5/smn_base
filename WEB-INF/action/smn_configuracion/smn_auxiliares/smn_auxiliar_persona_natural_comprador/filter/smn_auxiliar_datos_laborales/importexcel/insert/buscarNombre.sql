select
		smn_base.smn_auxiliar_datos_laborales.adl_nombre_compania
from
		smn_base.smn_auxiliar_datos_laborales
where
		upper(smn_base.smn_auxiliar_datos_laborales.adl_nombre_compania) = upper(${fld:adl_nombre_compania})
