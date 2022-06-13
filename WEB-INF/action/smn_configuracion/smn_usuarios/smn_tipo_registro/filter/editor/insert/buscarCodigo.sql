select
		smn_base.smn_tipo_registro.trg_codigo
from
		smn_base.smn_tipo_registro
where
		upper(smn_base.smn_tipo_registro.trg_codigo) = upper(${fld:trg_codigo})
