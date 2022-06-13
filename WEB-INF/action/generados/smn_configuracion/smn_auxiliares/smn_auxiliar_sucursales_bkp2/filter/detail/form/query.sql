select
	smn_base.smn_auxiliar_sucursales.*
from 
	smn_base.smn_auxiliar_sucursales
where
	smn_base.smn_auxiliar_sucursales.smn_auxiliar_sucursales_id = ${fld:id}
