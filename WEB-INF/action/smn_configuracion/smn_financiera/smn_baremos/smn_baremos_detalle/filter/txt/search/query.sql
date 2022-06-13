select
		smn_base.smn_baremos_detalle.smn_baremos_detalle_id,
	case
	when smn_base.smn_baremos_detalle.bad_tipo_componente='SE' then 'Servicios'
	when smn_base.smn_baremos_detalle.bad_tipo_componente='IT' then 'Item'
	when smn_base.smn_baremos_detalle.bad_tipo_componente='HO' then 'Honorarios'
	end as bad_tipo_componente_combo,
	smn_base.smn_baremos.bar_codigo ||' - '|| smn_base.smn_baremos.bar_descripcion as smn_baremos_id_combo,
	smn_base.smn_servicios.svc_codigo ||' - '|| smn_base.smn_servicios.svc_descripcion as smn_servicios_rf_combo,
	smn_base.smn_baremos_detalle.bad_tipo_componente,
	smn_base.smn_item.itm_codigo ||' - '|| smn_base.smn_item.itm_nombre as smn_item_rf_combo,
	smn_base.smn_almacen.alm_codigo ||' - '|| smn_base.smn_almacen.alm_nombre as smn_almacen_rf_combo,
	smn_base.smn_monedas.mon_codigo ||' - '|| smn_base.smn_monedas.mon_nombre as smn_moneda_rf_combo,
	smn_base.smn_clase_auxiliar.cla_codigo ||' - '|| smn_base.smn_clase_auxiliar.cla_nombre as smn_clase_auxiliar_rf_combo,
	smn_base.smn_descuento.dct_codigo ||' - '|| smn_base.smn_descuento.dct_nombre as smn_descuento_rf_combo,
	smn_base.smn_baremos_detalle.bad_cantidad,
	smn_base.smn_baremos_detalle.bad_precio_moneda_local,
	smn_base.smn_baremos_detalle.bad_precio_moneda_alterna,
	smn_base.smn_baremos_detalle.bad_estatus,
	case
	when smn_base.smn_baremos_detalle.bad_estatus='A' then 'Activo'
	when smn_base.smn_baremos_detalle.bad_estatus='I' then 'Inactivo'
	end as bad_estatus,
	smn_base.smn_baremos_detalle.bad_fecha_registro
	
from
	smn_base.smn_baremos_detalle
	inner join smn_base.smn_baremos on smn_base.smn_baremos.smn_baremos_id = smn_base.smn_baremos_detalle.smn_baremos_id
	left outer join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_base.smn_baremos_detalle.smn_item_rf
	left outer join smn_base.smn_servicios on smn_base.smn_servicios.smn_servicios_id = smn_base.smn_baremos_detalle.smn_servicios_rf
	left outer join smn_base.smn_almacen on smn_base.smn_almacen.smn_almacen_id = smn_base.smn_baremos_detalle.smn_almacen_rf
	left outer join smn_base.smn_descuento on smn_base.smn_descuento.smn_descuento_id = smn_base.smn_baremos_detalle.smn_descuento_rf
	left outer join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_baremos_detalle.smn_moneda_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_baremos_detalle.smn_clase_auxiliar_rf

