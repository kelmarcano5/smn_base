select
	smn_base.smn_unidades_negocios.*
from 
	smn_base.smn_unidades_negocios
where
	smn_unidades_negocios_id = ${fld:id}
