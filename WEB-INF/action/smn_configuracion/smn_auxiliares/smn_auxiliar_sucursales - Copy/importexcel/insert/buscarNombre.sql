select
	smn_base.smn_auxiliar_sucursales.trs_nombre
from
	smn_base.smn_auxiliar_sucursales
where
	upper(trim(smn_base.smn_auxiliar_sucursales.trs_nombre)) = upper(trim(${fld:trs_nombre}))
