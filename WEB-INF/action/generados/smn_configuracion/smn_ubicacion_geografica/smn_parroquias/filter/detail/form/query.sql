select
	smn_base.smn_parroquias.*
from 
	smn_base.smn_parroquias
where
	smn_parroquias_id = ${fld:id}
