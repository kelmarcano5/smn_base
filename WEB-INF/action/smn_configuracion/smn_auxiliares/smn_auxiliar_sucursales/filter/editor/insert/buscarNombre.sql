select
		smn_base.smn_auxiliar_sucursales.trs_nombre
from
		smn_base.smn_auxiliar_sucursales
where
		upper(smn_base.smn_auxiliar_sucursales.trs_nombre) = upper(${fld:trs_nombre})
