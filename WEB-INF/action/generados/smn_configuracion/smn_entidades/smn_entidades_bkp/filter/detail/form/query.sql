select
	smn_base.smn_entidades.*
from 
	smn_base.smn_entidades
where
	smn_base.smn_entidades.smn_entidades_id = ${fld:id}
