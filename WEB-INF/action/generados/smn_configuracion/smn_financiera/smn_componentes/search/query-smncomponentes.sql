select	
	case
		when smn_base.smn_componentes.cmp_tipo='SE' then '${lbl:b_services}'
		when smn_base.smn_componentes.cmp_tipo='IN' then '${lbl:b_inventory}'
		when smn_base.smn_componentes.cmp_tipo='PR' then '${lbl:b_providers}'
	end as cmp_tipo_combo,
	case
		when smn_base.smn_componentes.cmp_calculo='IM' then '${lbl:b_amount_money}'
		when smn_base.smn_componentes.cmp_calculo='PO' then '${lbl:b_percentage}'
	end as cmp_calculo_combo,
	case
		when smn_base.smn_componentes.cmp_visible='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_visible='N' then '${lbl:b_not}'
	end as cmp_visible_combo,
	case
		when smn_base.smn_componentes.cmp_req_grupo_prestador='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_req_grupo_prestador='N' then '${lbl:b_not}'
	end as cmp_req_grupo_prestador_combo,
	case
		when smn_base.smn_componentes.cmp_req_honorario='S' then '${lbl:b_yes}'
		when smn_base.smn_componentes.cmp_req_honorario='N' then '${lbl:b_not}'
	end as cmp_req_honorario_combo,
	smn_base.smn_componentes.cmp_clase_auxiliar,
	smn_base.smn_componentes.cmp_tipo,
	smn_base.smn_componentes.cmp_almacen,
	smn_base.smn_componentes.cmp_calculo,
	smn_base.smn_componentes.cmp_cantidad,
	smn_base.smn_componentes.cmp_precio,
	smn_base.smn_componentes.cmp_porcentaje,
	smn_base.smn_componentes.cmp_trans_general,
	smn_base.smn_componentes.cmp_fecha_registro,
	smn_base.smn_componentes.cmp_codigo,
	smn_base.smn_componentes.cmp_descripcion,
	smn_base.smn_componentes.cmp_area_servicio,
	smn_base.smn_componentes.cmp_unidad_servicio,
	smn_base.smn_componentes.cmp_vigencia_desde,
	smn_base.smn_componentes.cmp_vigencia_hasta,
	smn_base.smn_componentes.cmp_visible,
	smn_base.smn_componentes.cmp_req_grupo_prestador,
	smn_base.smn_componentes.cmp_grupo_prestador,
	smn_base.smn_componentes.cmp_req_honorario,
	smn_base.smn_componentes.cmp_tiempo_estimado,
	smn_base.smn_componentes.smn_componentes_id
from 
	smn_base.smn_componentes
order by 
	smn_base.smn_componentes.smn_componentes_id desc