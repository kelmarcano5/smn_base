select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_sucursales.*
from
	smn_base.smn_terceros,
	smn_base.smn_terceros_sucursales 
where
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_sucursales.smn_terceros_id 
 and 
	smn_terceros_sucursales_id = ${fld:id}
