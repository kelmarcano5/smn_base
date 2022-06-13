select
	smn_base.smn_transaccion_general.trg_codigo
from
	smn_base.smn_transaccion_general
where
	upper(trim(smn_base.smn_transaccion_general.trg_codigo)) = upper(trim(${fld:trg_codigo}))
