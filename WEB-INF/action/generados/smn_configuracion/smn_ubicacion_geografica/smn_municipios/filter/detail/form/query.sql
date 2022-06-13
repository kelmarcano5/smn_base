select
	smn_base.smn_municipios.*
from 
	smn_base.smn_municipios
where
	smn_municipios_id = ${fld:id}
