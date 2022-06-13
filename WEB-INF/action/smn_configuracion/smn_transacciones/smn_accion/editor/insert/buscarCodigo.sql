select
		smn_base.smn_accion.acc_codigo
from
		smn_base.smn_accion
where
		upper(smn_base.smn_accion.acc_codigo) = upper(${fld:acc_codigo})
