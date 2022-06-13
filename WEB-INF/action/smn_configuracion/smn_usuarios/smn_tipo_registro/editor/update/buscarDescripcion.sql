select
		smn_base.smn_tipo_registro.trg_descripcion
from
		smn_base.smn_tipo_registro
where
		upper(smn_base.smn_tipo_registro.trg_descripcion) = upper(${fld:trg_descripcion})
