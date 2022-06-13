select
	smn_base.smn_v_auxiliar.smn_item,
	smn_base.smn_centro_costo.cco_descripcion_corta,
	smn_base.smn_clase_auxiliar.cla_nombre,
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id,
	smn_base.smn_configuracion_estructura.coe_codigo as coe_codigo_pl0,
	smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id,
	smn_base.smn_estructura_organizacional.eor_codigo,
	smn_base.smn_estructura_organizacional.eor_nombre,
	smn_base.smn_estructura_organizacional.eor_centro_costo,
	smn_base.smn_estructura_organizacional.eor_clase_auxiliar,
	smn_base.smn_estructura_organizacional.eor_auxiliar,
	smn_base.smn_estructura_organizacional.eor_fecha_registro
from
	smn_base.smn_v_auxiliar,
	smn_base.smn_centro_costo,
	smn_base.smn_clase_auxiliar,
	smn_base.smn_configuracion_estructura,
	smn_base.smn_estructura_organizacional
where
	smn_base.smn_v_auxiliar.smn_v_auxiliar_id = smn_base.smn_estructura_organizacional.eor_auxiliar 
and
	smn_base.smn_centro_costo.smn_centro_costo_id = smn_base.smn_estructura_organizacional.eor_centro_costo 
and
	smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_estructura_organizacional.eor_clase_auxiliar 
and
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id
and
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id = '${fld:id}'
and
	smn_base.smn_estructura_organizacional.eor_idioma = '${def:locale}'
and
	smn_base.smn_estructura_organizacional.eor_usuario = '${def:user}'
order by
	smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id desc
