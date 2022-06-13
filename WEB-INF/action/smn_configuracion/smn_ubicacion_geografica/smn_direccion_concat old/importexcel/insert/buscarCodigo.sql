select
		smn_base.smn_direccion.dir_codigo
from
		smn_base.smn_direccion
where
		upper(trim(smn_base.smn_direccion.dir_codigo)) = upper(trim(${fld:dir_codigo}))
