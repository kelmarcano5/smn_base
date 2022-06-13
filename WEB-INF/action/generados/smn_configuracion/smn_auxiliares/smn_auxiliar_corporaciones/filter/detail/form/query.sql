select
	smn_base.smn_auxiliar_corporaciones.*
from 
	smn_base.smn_auxiliar_corporaciones
where
	smn_base.smn_auxiliar_corporaciones.smn_auxiliar_corporaciones_id = ${fld:id}
