select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_clase_auxiliar.cla_nombre,
	case
	when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SR' then '${lbl:b_profitable}'
	when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SE' then '${lbl:b_services}'
	when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='SP' then '${lbl:b_support}'
	when smn_base.smn_auxiliar_centro_costo.tco_tipo_cco='DG' then '${lbl:b_distribution}'
	end as tco_tipo_cco_combo,
	smn_base.smn_auxiliar_centro_costo.*
from
	smn_base.smn_v_auxiliar,
	smn_base.smn_clase_auxiliar,
	smn_base.smn_auxiliar_centro_costo
where
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_auxiliar and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_clase_auxiliar and
	smn_auxiliar_centro_costo_id = ${fld:id}
