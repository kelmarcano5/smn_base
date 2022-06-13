select
	smn_base.smn_tipo_registro.smn_tipo_registro_id,
	smn_base.smn_tipo_registro.trg_codigo,
	smn_base.smn_tipo_registro.trg_descripcion,
	smn_base.smn_tipo_registro.trg_fecha_registro
from
	smn_base.smn_tipo_registro
where
	smn_base.smn_tipo_registro.trg_idioma = '${def:locale}'
order by
	smn_base.smn_tipo_registro.smn_tipo_registro_id desc