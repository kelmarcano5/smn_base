select
	smn_base.smn_direccion.*
from 
	smn_base.smn_direccion
where
	smn_direccion_id = ${fld:id}
