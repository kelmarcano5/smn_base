select 
smn_base.smn_baremos_detalle.smn_baremos_detalle_id,
smn_base.smn_componentes.cmp_tipo_componente as tipo_componente,
case
	when smn_base.smn_componentes.cmp_tipo_componente='SE' then '${lbl:b_services}'
	when smn_base.smn_componentes.cmp_tipo_componente='IT' then '${lbl:b_item}'
	when smn_base.smn_componentes.cmp_tipo_componente='HO' then '${lbl:b_honorary}'
end as cmp_tipo_componente,
smn_base.smn_componentes.smn_componentes_id as componentes,
case
	when smn_base.smn_componentes.cmp_porcentaje is null then 0 else smn_base.smn_componentes.cmp_porcentaje
end as cmp_porcentaje,
smn_base.smn_componentes.smn_almacen_rf as almacen,
smn_base.smn_componentes.smn_item_rf as item,
smn_base.smn_componentes.cmp_forma_calculo as forma_calculo,
	case
		when smn_base.smn_componentes.cmp_forma_calculo='RP' then '${lbl:b_price} INV +'
		when smn_base.smn_componentes.cmp_forma_calculo='R' then '${lbl:b_price} INV'
		when smn_base.smn_componentes.cmp_forma_calculo='PP' then 'Presupuesto +'
		when smn_base.smn_componentes.cmp_forma_calculo='PR' then 'Presupuesto'
		when smn_base.smn_componentes.cmp_forma_calculo='D' then '${lbl:b_diferent}'
		when smn_base.smn_componentes.cmp_forma_calculo='M' then '${lbl:b_mont}'
		when smn_base.smn_componentes.cmp_forma_calculo='PO' then '${lbl:b_percentage}'
	end as forma_calculo_lab,
smn_base.smn_servicios_componentes.sec_cantidad as cantidad,
smn_base.smn_componentes.cmp_precio_moneda_local as precio,
case 
when smn_base.smn_componentes.cmp_forma_calculo='PO' then smn_base.smn_baremos_detalle.bad_precio_moneda_local * ((smn_base.smn_componentes.cmp_porcentaje)/100) 
when smn_base.smn_componentes.cmp_forma_calculo='M' then smn_base.smn_servicios_componentes.sec_cantidad*smn_base.smn_componentes.cmp_precio_moneda_local
when smn_base.smn_componentes.cmp_forma_calculo='D' then smn_base.smn_servicios_componentes.sec_cantidad*smn_base.smn_componentes.cmp_precio_moneda_local
end as monto,
case 
when smn_base.smn_componentes.cmp_forma_calculo='PO' then smn_base.smn_baremos_detalle.bad_precio_moneda_alterna * ((smn_base.smn_componentes.cmp_porcentaje)/100) 
when smn_base.smn_componentes.cmp_forma_calculo='M' then smn_base.smn_servicios_componentes.sec_cantidad*smn_base.smn_componentes.cmp_precio_moneda_alterna
when smn_base.smn_componentes.cmp_forma_calculo='D' then smn_base.smn_servicios_componentes.sec_cantidad*smn_base.smn_componentes.cmp_precio_moneda_alterna 
end as montoma,
case
	when smn_base.smn_componentes.cmp_precio_moneda_alterna is null then 0 else smn_base.smn_componentes.cmp_precio_moneda_alterna
end as precioma,
smn_base.smn_componentes.smn_moneda_rf
from smn_base.smn_componentes 
inner join smn_base.smn_servicios_componentes on smn_base.smn_servicios_componentes.smn_componentes_id = smn_base.smn_componentes.smn_componentes_id
inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_servicios_rf = smn_base.smn_servicios_componentes.smn_servicios_id
where smn_base.smn_servicios_componentes.smn_servicios_id = ${fld:id_componente} and smn_base.smn_baremos_detalle.smn_baremos_detalle_id=${fld:id_badet}
and smn_base.smn_baremos_detalle.smn_baremos_id=${fld:baremos_id}