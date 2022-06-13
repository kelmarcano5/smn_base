select
	smn_base.smn_corporaciones.crp_codigo||'-'||smn_base.smn_corporaciones.crp_nombre as crp_direccion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_transaccion_general.trg_descripcion,
	smn_base.smn_unidades_servicios.uns_descripcion,
		smn_base.smn_contrato_base.smn_contrato_base_id,
	case
	when smn_base.smn_contrato_base.ctr_tipo='AF' then '${lbl:b_active_fij}'
	when smn_base.smn_contrato_base.ctr_tipo='SE' then '${lbl:b_service}'
	when smn_base.smn_contrato_base.ctr_tipo='BI' then '${lbl:b_good}'
	end as ctr_tipo,
	smn_base.smn_contrato_base.ctr_codigo,
	smn_base.smn_contrato_base.ctr_nombre,
	smn_base.smn_contrato_base.ctr_transaccion_rf,
	smn_base.smn_contrato_base.ctr_tipo,
	smn_base.smn_contrato_base.ctr_fecha_vencimiento,
	smn_base.smn_contrato_base.ctr_corporacion_rf,
	smn_base.smn_contrato_base.ctr_fecha_registro
	
from

	smn_base.smn_areas_servicios,
	smn_base.smn_centro_costo,
	smn_base.smn_corporaciones,
	smn_base.smn_entidades,
	smn_base.smn_monedas,
	smn_base.smn_sucursales,
	smn_base.smn_transaccion_general,
	smn_base.smn_unidades_servicios,
	smn_base.smn_contrato_base
where
	smn_base.smn_areas_servicios.smn_areas_servicios_id = smn_base.smn_contrato_base.ctr_area_servicio_rf and
	smn_base.smn_centro_costo.smn_centro_costo_id = smn_base.smn_contrato_base.ctr_centro_costo_rf and
	smn_base.smn_corporaciones.smn_corporaciones_id = smn_base.smn_contrato_base.ctr_corporacion_rf and
	smn_base.smn_entidades.smn_entidades_id = smn_base.smn_contrato_base.ctr_empresa_rf and
	smn_base.smn_monedas.smn_monedas_id = smn_base.smn_contrato_base.ctr_moneda_rf and
	smn_base.smn_sucursales.smn_sucursales_id = smn_base.smn_contrato_base.ctr_sucursal_rf and
	smn_base.smn_transaccion_general.smn_transaccion_general_id = smn_base.smn_contrato_base.ctr_transaccion_rf and
	smn_base.smn_unidades_servicios.smn_unidades_servicios_id = smn_base.smn_contrato_base.ctr_unidad_servicio_rf and
	smn_base.smn_contrato_base.smn_contrato_base_id = ${fld:id}
