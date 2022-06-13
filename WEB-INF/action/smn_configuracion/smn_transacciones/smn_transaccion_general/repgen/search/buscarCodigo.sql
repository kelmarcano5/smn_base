select
		smn_base.smn_transaccion_general.trg_codigo
from
		smn_base.smn_transaccion_general
where
		upper(smn_base.smn_transaccion_general.trg_codigo) = upper(${fld:trg_codigo})
