
SELECT smn_base.smn_componentes.cmp_porcentaje*smn_base.smn_baremos_detalle.bad_precio_moneda_local/100 as prec2,
smn_base.smn_componentes.cmp_porcentaje*smn_base.smn_baremos_detalle.bad_precio_moneda_alterna/100 as prec2_alt,
smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id as idbd
FROM smn_base.smn_baremos_detalle_componente
inner join smn_base.smn_baremos_detalle on smn_base.smn_baremos_detalle.smn_baremos_detalle_id = smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id
inner join smn_base.smn_componentes on smn_base.smn_componentes.smn_componentes_id = smn_base.smn_baremos_detalle_componente.smn_componente_rf
where smn_base.smn_baremos_detalle_componente.smn_baremos_detalle_id=${fld:id_badet}and smn_base.smn_baremos_detalle_componente.smn_forma_calculo_rf = 'P'