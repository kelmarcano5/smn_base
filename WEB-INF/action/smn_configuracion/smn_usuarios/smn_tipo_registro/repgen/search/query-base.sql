select
	smn_base.smn_tipo_registro.smn_tipo_registro_id,
	${field}
from
	smn_base.smn_tipo_registro
where
	smn_base.smn_tipo_registro.smn_tipo_registro_id is not null
and
	smn_base.smn_tipo_registro.trg_idioma = '${def:locale}'
and
	smn_base.smn_tipo_registro.trg_usuario= '${def:user}'
	${filter}
order by
	smn_base.smn_tipo_registro.smn_tipo_registro_id desc
	
