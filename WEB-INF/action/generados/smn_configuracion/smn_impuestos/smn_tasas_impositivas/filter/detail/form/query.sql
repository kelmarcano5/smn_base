select	
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id, 
	smn_base.smn_unidades_impositivas.uim_codigo as uim_codigo_pl0,
	smn_base.smn_tasas_impositivas.*
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_tasas_impositivas 
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id=smn_base.smn_tasas_impositivas.smn_unidades_impositivas_id 
 and 
	smn_tasas_impositivas_id = ${fld:id}
