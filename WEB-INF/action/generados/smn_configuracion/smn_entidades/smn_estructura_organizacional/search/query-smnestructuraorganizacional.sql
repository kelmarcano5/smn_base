select	
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id, 
	smn_base.smn_configuracion_estructura.coe_codigo as coe_codigo_pl0,
	(select smn_base.smn_configuracion_estructura.coe_codigo || ' - ' || smn_base.smn_configuracion_estructura.coe_nombre from  smn_base.smn_configuracion_estructura  where smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id is not null  and smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id  order by smn_base.smn_configuracion_estructura.coe_nombre ) as smn_configuracion_estructura_id_combo,
	(select smn_base.smn_centro_costo.cco_codigo || ' - ' || smn_base.smn_centro_costo.cco_descripcion_corta from  smn_base.smn_centro_costo  where smn_base.smn_centro_costo.smn_centro_costo_id is not null  and smn_base.smn_centro_costo.smn_centro_costo_id=smn_base.smn_estructura_organizacional.eor_centro_costo  order by  smn_base.smn_centro_costo.cco_descripcion_corta ) as eor_centro_costo_combo,
	(select smn_base.smn_clase_auxiliar.cla_codigo || ' - ' || smn_base.smn_clase_auxiliar.cla_nombre from  smn_base.smn_clase_auxiliar  where smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id is not null  and smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id=smn_base.smn_estructura_organizacional.eor_clase_auxiliar  order by smn_base.smn_clase_auxiliar.cla_nombre ) as eor_clase_auxiliar_combo,
	(select smn_base.smn_v_auxiliar.smn_codigo || ' - ' || smn_base.smn_v_auxiliar.smn_item from  smn_base.smn_v_auxiliar  where smn_base.smn_v_auxiliar.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar.smn_v_auxiliar_id=smn_base.smn_estructura_organizacional.eor_auxiliar  order by smn_base.smn_v_auxiliar.smn_item ) as eor_auxiliar_combo,
	smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id,
	smn_base.smn_estructura_organizacional.eor_codigo,
	smn_base.smn_estructura_organizacional.eor_nombre,
	smn_base.smn_estructura_organizacional.eor_centro_costo,
	smn_base.smn_estructura_organizacional.eor_clase_auxiliar,
	smn_base.smn_estructura_organizacional.eor_auxiliar,
	smn_base.smn_estructura_organizacional.eor_fecha_registro
from
	smn_base.smn_configuracion_estructura,
	smn_base.smn_estructura_organizacional 
where
	smn_base.smn_configuracion_estructura.smn_configuracion_estructura_id=smn_base.smn_estructura_organizacional.smn_configuracion_estructura_id 
order by 
	smn_base.smn_estructura_organizacional.smn_estructura_organizacional_id desc
