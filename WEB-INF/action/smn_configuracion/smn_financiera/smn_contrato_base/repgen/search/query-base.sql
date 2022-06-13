select
	smn_base.smn_areas_servicios.ase_descripcion,
	smn_base.smn_centro_costo.cco_descripcion_corta,
	smn_base.smn_corporaciones.crp_direccion,
	smn_base.smn_entidades.ent_descripcion_corta,
	smn_base.smn_monedas.mon_nombre,
	smn_base.smn_sucursales.suc_nombre,
	smn_base.smn_transaccion_general.trg_descripcion,
	smn_base.smn_unidades_servicios.uns_descripcion,
		smn_base.smn_contrato_base.smn_contrato_base_id,
	${field}
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
		smn_base.smn_contrato_base.smn_contrato_base_id is not null
	${filter}
	
	
