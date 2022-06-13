select
		smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_componente_id,
	case
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='SE' then '${lbl:b_services}'
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='IT' then '${lbl:b_item}'
	when smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf='HO' then '${lbl:b_honorary}'
	end as smn_tipo_compuesto_rf_combo,
	smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id,
	smn_base.smn_baremos_detalle_componente.smn_tipo_compuesto_rf,
	smn_base.smn_baremos_detalle_componente.smn_componente_rf,
	smn_base.smn_baremos_detalle_componente.smn_item_rf,
	smn_base.smn_baremos_detalle_componente.bdc_cantidad,
	smn_base.smn_baremos_detalle_componente.bdc_precio_ml,
	smn_base.smn_baremos_detalle_componente.bdc_monto_ml,
	case
		when smn_base.smn_componentes.cmp_forma_calculo='D' then '${lbl:b_diferent}'
		when smn_base.smn_componentes.cmp_forma_calculo='M' then '${lbl:b_mont}'
		when smn_base.smn_componentes.cmp_forma_calculo='P' then '${lbl:b_percentage}'
		when smn_base.smn_componentes.cmp_forma_calculo='R' then '${lbl:b_price}'
	end as smn_forma_calculo_rf_combo,
	smn_base.smn_baremos_detalle_componente.bdc_fecha_registro
	
from
	smn_base.smn_baremos_detalle_componente
