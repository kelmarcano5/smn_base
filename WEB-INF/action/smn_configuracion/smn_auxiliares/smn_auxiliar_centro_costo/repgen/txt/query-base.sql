select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_clase_auxiliar.cla_nombre,
	${field}
from
	smn_base.smn_v_auxiliar,
	smn_base.smn_clase_auxiliar,
	smn_base.smn_auxiliar_centro_costo
where
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_auxiliar and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_auxiliar_centro_costo.tco_clase_auxiliar and
		smn_base.smn_auxiliar_centro_costo.smn_auxiliar_centro_costo_id is not null
