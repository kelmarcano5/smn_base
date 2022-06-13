select
		smn_base.smn_accion.acc_descripcion
from
		smn_base.smn_accion
where
		upper(smn_base.smn_accion.acc_descripcion) = upper(${fld:acc_descripcion})
