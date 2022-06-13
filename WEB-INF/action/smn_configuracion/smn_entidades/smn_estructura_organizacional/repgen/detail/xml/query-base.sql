select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_centro_costo.cco_descripcion_corta,
	smn_base.smn_clase_auxiliar.cla_nombre,
	${field}
from
	smn_base.smn_v_auxiliar,
	smn_base.smn_centro_costo,
	smn_base.smn_clase_auxiliar,
	smn_base.smn_estructura_organizacional
where
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_estructura_organizacional.eor_auxiliar and
	smn_base.smn_centro_costo.smn_centro_costo_id = smn_base.smn_estructura_organizacional.eor_centro_costo and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_estructura_organizacional.eor_clase_auxiliar and
		smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id = ${fld:id}
	
