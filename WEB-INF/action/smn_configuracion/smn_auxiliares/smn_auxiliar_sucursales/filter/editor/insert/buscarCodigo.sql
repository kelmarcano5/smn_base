select
		smn_base.smn_auxiliar_sucursales.trs_codigo
from
		smn_base.smn_auxiliar_sucursales
where
		upper(smn_base.smn_auxiliar_sucursales.trs_codigo) = upper(${fld:trs_codigo})
