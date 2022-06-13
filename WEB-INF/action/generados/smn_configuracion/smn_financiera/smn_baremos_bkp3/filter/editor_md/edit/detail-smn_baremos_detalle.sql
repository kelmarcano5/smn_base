select
	case
		when smn_base.smn_baremos_detalle.bad_tipo='GE' then '${lbl:b_general}'
		when smn_base.smn_baremos_detalle.bad_tipo='ES' then '${lbl:b_specific}'
	end as bad_tipo2_name,
	(select smn_base.smn_servicios.svc_codigo || ' - ' || smn_base.smn_servicios.svc_descripcion from  smn_base.smn_servicios  where smn_base.smn_servicios.smn_servicios_id is not null  and smn_base.smn_servicios.smn_servicios_id=smn_base.smn_baremos_detalle.bad_servicio  order by smn_base.smn_servicios.svc_descripcion ) as bad_servicio2_name,
	(select smn_base.smn_v_auxiliar_auxiliares.smn_codigo || ' - ' || smn_base.smn_v_auxiliar_auxiliares.smn_item from  smn_base.smn_v_auxiliar_auxiliares  where smn_base.smn_v_auxiliar_auxiliares.smn_v_auxiliar_id is not null  and smn_base.smn_v_auxiliar_auxiliares.smn_v_auxiliar_id=smn_base.smn_baremos_detalle.bad_auxiliar  order by smn_base.smn_v_auxiliar_auxiliares.smn_item ) as bad_auxiliar2_name,
	case
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='SE' then '${lbl:b_services}'
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='IN' then '${lbl:b_inventory}'
		when smn_base.smn_baremos_detalle.bad_tipo_compuesto='PR' then '${lbl:b_providers}'
	end as bad_tipo_compuesto2_name,
	(select smn_base.smn_almacen.alm_codigo || ' - ' || smn_base.smn_almacen.alm_nombre from  smn_base.smn_almacen  where smn_base.smn_almacen.smn_almacen_id is not null  and smn_base.smn_almacen.smn_almacen_id=smn_base.smn_baremos_detalle.bad_almacen  order by smn_base.smn_almacen.alm_nombre ) as bad_almacen2_name,
	case
		when smn_base.smn_baremos_detalle.bad_calculo='IM' then '${lbl:b_amount_money}'
		when smn_base.smn_baremos_detalle.bad_calculo='PO' then '${lbl:b_b_percentage}'
	end as bad_calculo2_name,
	case
		when smn_base.smn_baremos_detalle.bad_inactivo='S' then '${lbl:b_yes}'
		when smn_base.smn_baremos_detalle.bad_inactivo='N' then '${lbl:b_not}'
	end as bad_inactivo2_name,
	smn_base.smn_baremos_detalle.bad_tipo as bad_tipo2,
	smn_base.smn_baremos_detalle.bad_servicio as bad_servicio2,
	smn_base.smn_baremos_detalle.bad_auxiliar as bad_auxiliar2,
	smn_base.smn_baremos_detalle.bad_tipo_compuesto as bad_tipo_compuesto2,
	smn_base.smn_baremos_detalle.bad_codigo_articulo as bad_codigo_articulo2,
	smn_base.smn_baremos_detalle.bad_almacen as bad_almacen2,
	smn_base.smn_baremos_detalle.bad_calculo as bad_calculo2,
	smn_base.smn_baremos_detalle.bad_cantidad as bad_cantidad2,
	smn_base.smn_baremos_detalle.bad_precio as bad_precio2,
	smn_base.smn_baremos_detalle.bad_porcentaje as bad_porcentaje2,
	smn_base.smn_baremos_detalle.bad_inactivo as bad_inactivo2,
	smn_base.smn_baremos_detalle.smn_baremos_detalle_id as smn_baremos_detalle_id2,
	smn_base.smn_baremos_detalle.smn_baremos_id as smn_baremos_id2
from 
	smn_base.smn_baremos_detalle
where 
	smn_base.smn_baremos_detalle.smn_baremos_id = ${fld:id}