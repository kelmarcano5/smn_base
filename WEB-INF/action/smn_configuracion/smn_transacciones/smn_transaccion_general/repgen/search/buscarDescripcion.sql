select
		smn_base.smn_transaccion_general.trg_descripcion
from
		smn_base.smn_transaccion_general
where
		upper(smn_base.smn_transaccion_general.trg_descripcion) = upper(${fld:trg_descripcion})
