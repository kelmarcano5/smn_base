select
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_base.smn_conversion_unidad_medida.smn_unidad_medida_origen_rf  order by unm_descripcion ) as smn_unidad_medida_origen_rf_combo,
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_base.smn_conversion_unidad_medida.smn_unidad_medida_destino_rf  order by unm_descripcion ) as smn_unidad_medida_destino_rf_combo,
	smn_base.smn_conversion_unidad_medida.smn_unidad_medida_origen_rf,
	smn_base.smn_conversion_unidad_medida.smn_unidad_medida_destino_rf,
	smn_base.smn_conversion_unidad_medida.cou_factor_conversion,
	smn_base.smn_conversion_unidad_medida.cou_idioma,
	smn_base.smn_conversion_unidad_medida.cou_usuario,
	smn_base.smn_conversion_unidad_medida.cou_fecha_registro,
	smn_base.smn_conversion_unidad_medida.cou_hora,
	smn_base.smn_conversion_unidad_medida.smn_conversion_unidad_medida_id,
	smn_base.smn_conversion_unidad_medida.cou_signo_conversion
from
	smn_base.smn_conversion_unidad_medida
where
	smn_conversion_unidad_medida_id = ${fld:id}
