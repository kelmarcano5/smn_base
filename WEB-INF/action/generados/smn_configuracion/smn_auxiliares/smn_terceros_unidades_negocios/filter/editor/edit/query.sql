select	
	smn_base.smn_terceros.smn_terceros_id, 
	smn_base.smn_terceros.ter_descripcion_corta as ter_descripcion_corta_pl0,
	smn_base.smn_terceros_unidades_negocios.*
from
	smn_base.smn_terceros,
	smn_base.smn_terceros_unidades_negocios 
where
	smn_base.smn_terceros.smn_terceros_id=smn_base.smn_terceros_unidades_negocios.smn_terceros_id and
	smn_terceros_unidades_negocios_id = ${fld:id} 
	


