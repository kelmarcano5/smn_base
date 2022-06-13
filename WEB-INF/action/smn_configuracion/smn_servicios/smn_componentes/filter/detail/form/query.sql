select	
	smn_base.smn_componentes.smn_componentes_id,
	smn_base.smn_grupo_componente.smn_grupo_componente_id, 
	smn_base.smn_grupo_componente.gco_codigo as gco_codigo_pl0,
	case
		when smn_base.smn_componentes.cmp_tipo_componente='SE' then '${lbl:b_services}'
		when smn_base.smn_componentes.cmp_tipo_componente='IT' then '${lbl:b_item}'
		when smn_base.smn_componentes.cmp_tipo_componente='HO' then '${lbl:b_honorary}'
	end as cmp_tipo_componente,
	smn_base.smn_grupo_componente.gco_codigo||'-'|| smn_base.smn_grupo_componente.gco_descripcion  as smn_grupo_componente_rf,
	case
		when smn_base.smn_componentes.cmp_forma_calculo='D' then '${lbl:b_diferent}'
		when smn_base.smn_componentes.cmp_forma_calculo='M' then '${lbl:b_mont}'
		when smn_base.smn_componentes.cmp_forma_calculo='P' then '${lbl:b_percentage}'
	end as cmp_forma_calculo,
	case
		when smn_base.smn_componentes.cmp_visible='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_visible='N' then '${lbl:b_not}'
	end as cmp_visible,
	smn_base.smn_clase_auxiliar.cla_codigo|| ' - ' || smn_base.smn_clase_auxiliar.cla_nombre as cla_nombre,
	case
		when smn_base.smn_componentes.cmp_req_grupo_prestador='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_req_grupo_prestador='N' then '${lbl:b_not}'
	end as cmp_req_grupo_prestador,
		smn_base.smn_grupos_prestadores.gpp_codigo||' - '|| smn_base.smn_grupos_prestadores.gpp_descripcion as cmp_grupo_prestador,
	smn_base.smn_unidad_medida.unm_codigo||'-'||smn_base.smn_unidad_medida.unm_descripcion as smn_unidad_medida_rf,
	smn_base.smn_almacen.alm_codigo || ' - ' || smn_base.smn_almacen.alm_nombre  as smn_almacen_rf,
	smn_base.smn_item.itm_codigo||'-'|| smn_base.smn_item.itm_nombre as smn_item_rf,
	smn_base.smn_monedas.mon_codigo || ' - ' || smn_base.smn_monedas.mon_nombre as smn_moneda_rf,
smn_base.smn_tipo_gasto.tig_codigo || ' - ' || smn_base.smn_tipo_gasto.tig_descripcion as smn_tipo_gasto_rf,
smn_base.smn_sub_tipo_gasto.stg_codigo || ' - ' || smn_base.smn_sub_tipo_gasto.stg_descripcion as smn_sub_tipo_gasto_rf,
	smn_base.smn_componentes.cmp_vigencia_desde,
	smn_base.smn_componentes.cmp_vigencia_hasta,
	smn_base.smn_componentes.cmp_tiempo_estimado,
	smn_base.smn_componentes.cmp_codigo,
	smn_base.smn_componentes.cmp_descripcion,
	smn_base.smn_componentes.cmp_fecha_registro,
	smn_base.smn_componentes.cmp_monto_moneda_local,
	smn_base.smn_componentes.cmp_monto_moneda_alterna,
	smn_base.smn_componentes.cmp_precio_moneda_alterna,
	smn_base.smn_componentes.cmp_precio_moneda_local,
	smn_base.smn_componentes.smn_imprime,
	smn_base.smn_grupo_titulo_impresion.gti_codigo ||'-'|| 	smn_base.smn_grupo_titulo_impresion.gti_descripcion as smn_grupo_titulo_impresion_rf,
	smn_base.smn_componentes.cmp_porcentaje,
	smn_base.smn_componentes.cmp_cantidad

from
	smn_base.smn_componentes 
	LEFT OUTER JOIN smn_base.smn_grupo_componente on smn_base.smn_grupo_componente.smn_grupo_componente_id = smn_base.smn_componentes.smn_grupo_componente_rf
	left outer join smn_base.smn_unidad_medida on smn_base.smn_unidad_medida.smn_unidad_medida_id = smn_base.smn_componentes.smn_unidad_medida_rf
	left outer join smn_base.smn_almacen on  smn_base.smn_almacen.smn_almacen_id = smn_base.smn_componentes.smn_almacen_rf
	left outer join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_base.smn_componentes.smn_item_rf
	left outer join smn_base.smn_monedas on smn_base.smn_monedas.smn_monedas_id = smn_base.smn_componentes.smn_moneda_rf
	left outer join smn_base.smn_clase_auxiliar on smn_base.smn_clase_auxiliar.smn_clase_auxiliar_id = smn_base.smn_componentes.cmp_clase_auxiliar_rf
	left outer join smn_base.smn_grupo_titulo_impresion on smn_base.smn_grupo_titulo_impresion.smn_grupo_titulo_impresion_id = smn_base.smn_componentes.smn_grupo_titulo_impresion_rf 
	left outer join smn_base.smn_tipo_gasto on smn_base.smn_tipo_gasto.smn_tipo_gasto_id = smn_base.smn_componentes.smn_tipo_gasto_rf
	left outer join smn_base.smn_sub_tipo_gasto on smn_base.smn_sub_tipo_gasto.smn_sub_tipo_gasto_id = smn_base.smn_componentes.smn_sub_tipo_gasto_rf
		left outer join smn_base.smn_grupos_prestadores on smn_base.smn_grupos_prestadores.smn_grupos_prestadores_id = smn_base.smn_componentes.cmp_grupo_prestador
where
	smn_base.smn_componentes.smn_componentes_id = ${fld:id}
