select
	smn_base.smn_tipo_via.*
from 
	smn_base.smn_tipo_via
where
	smn_base.smn_tipo_via.smn_tipo_via_id = ${fld:id}
