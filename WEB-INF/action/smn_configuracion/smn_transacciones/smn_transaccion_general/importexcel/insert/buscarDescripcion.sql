select
	smn_base.smn_transaccion_general.trg_descripcion
from
	smn_base.smn_transaccion_general
where
	upper(trim(smn_base.smn_transaccion_general.trg_descripcion)) = upper(trim(${fld:trg_descripcion}))
