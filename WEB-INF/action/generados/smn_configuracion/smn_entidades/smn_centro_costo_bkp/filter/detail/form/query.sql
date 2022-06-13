select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	case
		when smn_base.smn_centro_costo.cco_tipo_cco='SR' then '${lbl:b_profitable}'
		when smn_base.smn_centro_costo.cco_tipo_cco='SE' then '${lbl:b_services}'
		when smn_base.smn_centro_costo.cco_tipo_cco='SP' then '${lbl:b_support}'
		when smn_base.smn_centro_costo.cco_tipo_cco='DG' then '${lblb_distribution}'
	end as cco_tipo_cco_combo,
	smn_base.smn_centro_costo.*
from
	smn_base.smn_entidades,
	smn_base.smn_centro_costo 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_centro_costo.smn_entidades_id 
 and 
	smn_centro_costo_id = ${fld:id}
