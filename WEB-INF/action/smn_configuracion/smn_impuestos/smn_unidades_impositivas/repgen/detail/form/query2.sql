select
	(select
		smn_base.smn_monedas.mon_nombre
	 from 
	 	smn_base.smn_monedas
	 where 
	 	smn_base.smn_monedas.smn_monedas_id = ${fld:uim_moneda_referencia_filter}) as mon_descripcion_filter,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_unidades_impositivas.*
from
	smn_base.smn_monedas,
	smn_base.smn_unidades_impositivas
where
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_unidades_impositivas.uim_moneda_referencia and
	smn_unidades_impositivas_id = ${fld:id}
