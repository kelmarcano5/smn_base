select
	smn_base.smn_auxiliar_sucursales.trs_codigo
from
	smn_base.smn_auxiliar_sucursales
where
	upper(trim(smn_base.smn_auxiliar_sucursales.trs_codigo)) = upper(trim(${fld:trs_codigo}))
