select
	smn_base.smn_tipo_registro.*
from
	smn_base.smn_tipo_registro
where
	smn_base.smn_tipo_registro.smn_tipo_registro_id = ${fld:id}
