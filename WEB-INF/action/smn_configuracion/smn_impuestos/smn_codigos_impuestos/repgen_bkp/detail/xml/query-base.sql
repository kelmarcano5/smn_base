select
	smn_base.smn_unidades_impositivas.uim_descripcion,
	${field}
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_codigos_impuestos
where
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = smn_base.smn_codigos_impuestos.imp_unidad_impositiva and
		smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id = ${fld:id}
	
