select
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id,
	${field}
from
	smn_base.smn_unidades_impositivas,
	smn_base.smn_codigos_impuestos
where
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id is not null
and
	smn_base.smn_unidades_impositivas.smn_unidades_impositivas_id = smn_base.smn_codigos_impuestos.imp_unidad_impositiva 
and
	smn_base.smn_codigos_impuestos.imp_idioma = '${def:locale}'
and
	smn_base.smn_codigos_impuestos.imp_usuario = '${def:user}'
	${filter}
order by
	smn_base.smn_codigos_impuestos.smn_codigos_impuestos_id desc
	
	
