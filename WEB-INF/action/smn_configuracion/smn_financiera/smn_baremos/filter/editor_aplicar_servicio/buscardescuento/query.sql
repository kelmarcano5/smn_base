WITH rows as (
select smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local as monto_ml,
smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna as monto_ma,
smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento as porc_descuento,
smn_base.smn_descuentos_retenciones.dyr_porcentaje_base as porc_base,
smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf as tipo,
case
  when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf = 'IT' then smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local/smn_base.smn_descuentos_retenciones.dyr_porcentaje_base*smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento
end as monto_descuento,
 case 
 when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf = 'IT' 
 then smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna/smn_base.smn_descuentos_retenciones.dyr_porcentaje_base*smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento
 end as monto_descuento_ma
from smn_automotriz.smn_presupuesto_detalle
inner join smn_base.smn_descuentos_retenciones on smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id = smn_automotriz.smn_presupuesto_detalle.smn_codigo_descuento_rf
where
smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id=${fld:id} and smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='IT'
) 
update smn_automotriz.smn_presupuesto_detalle
set
prd_monto_descuento_ml=(case when rows.tipo ='IT' then rows.monto_descuento end),
prd_monto_descuento_ma=(case when rows.tipo ='IT' then rows.monto_descuento_ma end),
prd_monto_neto_ml=(case when rows.tipo ='IT' then rows.monto_descuento-rows.monto_ml end),
prd_monto_neto_ma=(case when rows.tipo ='IT' then rows.monto_descuento_ma-rows.monto_ma end)
from rows
where
smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id = ${fld:id} and smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='IT';


WITH rows as (
select smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local as monto_ml,
smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna as monto_ma,
smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento as porc_descuento,
smn_base.smn_descuentos_retenciones.dyr_porcentaje_base as porc_base,
smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf as tipo,
case 
 when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf = 'SE' then smn_automotriz.smn_presupuesto_detalle.prd_monto_moneda_local/smn_base.smn_descuentos_retenciones.dyr_porcentaje_base*smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento
 end as monto_descuento,
  case 
 when smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf = 'SE' 
 then smn_automotriz.smn_presupuesto_detalle.prd_moneda_alterna/smn_base.smn_descuentos_retenciones.dyr_porcentaje_base*smn_base.smn_descuentos_retenciones.dyr_porcentaje_descuento
 end as monto_descuento_ma
from smn_automotriz.smn_presupuesto_detalle
inner join smn_base.smn_descuentos_retenciones on smn_base.smn_descuentos_retenciones.smn_descuentos_retenciones_id = smn_automotriz.smn_presupuesto_detalle.smn_codigo_descuento_rf
where
smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id=${fld:id} and smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='SE'
) 
update smn_automotriz.smn_presupuesto_detalle
set
prd_monto_descuento_ml=(case when rows.tipo ='SE' then rows.monto_descuento end),
prd_monto_descuento_ma=(case when rows.tipo ='SE' then rows.monto_descuento_ma end),
prd_monto_neto_ml=(case when rows.tipo ='SE' then rows.monto_descuento-rows.monto_ml end),
prd_monto_neto_ma=(case when rows.tipo ='SE' then rows.monto_descuento_ma-rows.monto_ma end)
from rows
where
smn_automotriz.smn_presupuesto_detalle.smn_presupuesto_id = ${fld:id} and smn_automotriz.smn_presupuesto_detalle.smn_tipo_componentes_rf='SE';
