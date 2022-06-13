select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_centro_costo.smn_terceros_id,
	smn_base.smn_terceros_centro_costo.trc_codigo,
	smn_base.smn_terceros_centro_costo.trc_descripcion_larga,
	smn_base.smn_terceros_centro_costo.trc_responsable,
	smn_base.smn_terceros_centro_costo.trc_clase_auxiliar,
	smn_base.smn_terceros_centro_costo.trc_auxiliar,
	smn_base.smn_terceros_centro_costo.trc_fecha_registro

from
	smn_base.smn_terceros,
	smn_base.smn_terceros_centro_costo 
where
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_centro_costo.smn_terceros_id 

