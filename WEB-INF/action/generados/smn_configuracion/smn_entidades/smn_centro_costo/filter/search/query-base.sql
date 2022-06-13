select	
	case
		when smn_base.smn_centro_costo.cco_nivel='TI' then '${lbl:b_account_title}'
		when smn_base.smn_centro_costo.cco_nivel='DE' then '${lbl:b_account_detail}'
	end as cco_nivel_combo,
	smn_base.smn_centro_costo.cco_codigo,
	smn_base.smn_centro_costo.cco_descripcion_corta,
	smn_base.smn_centro_costo.cco_descripcion_larga,
	smn_base.smn_centro_costo.cco_empresa,
	smn_base.smn_centro_costo.cco_sucursal,
	smn_base.smn_centro_costo.cco_area_servicio,
	smn_base.smn_centro_costo.cco_unidad_servicio,
	smn_base.smn_centro_costo.cco_almacen,
	smn_base.smn_centro_costo.cco_nivel,
	smn_base.smn_centro_costo.cco_fecha_registro,
	smn_base.smn_centro_costo.smn_centro_costo_id
from
	smn_base.smn_centro_costo
where
	smn_base.smn_centro_costo.smn_centro_costo_id is not null	
 	${filter}
order by 
	smn_base.smn_centro_costo.smn_centro_costo_id desc