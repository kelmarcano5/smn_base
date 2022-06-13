select
	smn_base.smn_configuracion_estructura.*
from 
	smn_base.smn_configuracion_estructura
where
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id = ${fld:id}
