select distinct
		smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_componente_id,
	case
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='SE' then '${lbl:b_services}'
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='IT' then '${lbl:b_item}'
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='HO' then '${lbl:b_honorary}'
	end as smn_tipo_compuesto_rf_combo,
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id as smn_baremos_detalle_id_combo,
	smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf,
	smn_base.smn_componentes.cmp_codigo ||' - '|| smn_base.smn_componentes.cmp_descripcion as smn_componente_rf_combo,
	smn_base.smn_item.itm_codigo ||'-'|| smn_base.smn_item.itm_nombre as smn_item_rf_combo,
	case
		when smn_base.smn_componentes.cmp_forma_calculo='R' then '${lbl:b_price} INV'
		when smn_base.smn_componentes.cmp_forma_calculo='D' then '${lbl:b_diferent}'
		when smn_base.smn_componentes.cmp_forma_calculo='M' then '${lbl:b_mont}'
		when smn_base.smn_componentes.cmp_forma_calculo='PO' then '${lbl:b_percentage}'
		when smn_base.smn_componentes.cmp_forma_calculo='PR' then 'Presupuesto'
		when smn_base.smn_componentes.cmp_forma_calculo='PP' then 'Presupuesto +'
		when smn_base.smn_componentes.cmp_forma_calculo='RP' then '${lbl:b_price} INV +'
	end as smn_forma_calculo_rf_combo,
	smn_base.smn_baremos_detalle_componente.bdc_cantidad,
	smn_base.smn_baremos_detalle_componente.bdc_precio_ml,
	smn_base.smn_baremos_detalle_componente.bdc_monto_ml,
	smn_base.smn_baremos_detalle_componente.bdc_precio_ma,
	smn_base.smn_baremos_detalle_componente.bdc_monto_ma,
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id,
	smn_base.smn_baremos_detalle.smn_servicios_rf,
	smn_base.smn_baremos_detalle_componente.bdc_fecha_registro
	
from
	smn_base.smn_baremos_detalle_componente
	left outer join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_baremos_detalle_id = smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id
	left outer join smn_base.smn_baremos on smn_base.smn_baremos.smn_baremos_id = smn_base.smn_baremos_detalle.smn_baremos_id
	left outer join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_baremos_detalle_componente.smn_componente_rf
	left outer join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_base.smn_baremos_detalle_componente.smn_item_rf
where
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id=${fld:id2}