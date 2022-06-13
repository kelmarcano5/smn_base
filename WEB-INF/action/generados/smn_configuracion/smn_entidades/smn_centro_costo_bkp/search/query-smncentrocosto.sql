select	
	smn_base.smn_entidades.smn_entidades_id, 
	smn_base.smn_entidades.ent_codigo as ent_codigo_pl0,
	smn_base.smn_centro_costo.smn_entidades_id,
	smn_base.smn_centro_costo.cco_codigo,
	smn_base.smn_centro_costo.cco_descripcion_corta,
	smn_base.smn_centro_costo.cco_responsable,
	smn_base.smn_centro_costo.cco_clase_auxiliar,
	smn_base.smn_centro_costo.cco_auxiliar,
	smn_base.smn_centro_costo.cco_fecha_registro

from
	smn_base.smn_entidades,
	smn_base.smn_centro_costo 
where
	smn_base.smn_entidades.smn_entidades_id=smn_base.smn_centro_costo.smn_entidades_id 

