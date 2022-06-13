select
		smn_base.smn_direccion.dir_codigo
from
		smn_base.smn_direccion
where
		upper(smn_base.smn_direccion.dir_codigo) = upper(${fld:dir_codigo})
