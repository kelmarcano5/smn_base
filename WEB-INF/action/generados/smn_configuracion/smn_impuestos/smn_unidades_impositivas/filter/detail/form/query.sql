select
	smn_base.smn_unidades_impositivas.*
from 
	smn_base.smn_unidades_impositivas
where
	smn_unidades_impositivas_id = ${fld:id}
