select
		smn_base.smn_direccion.dir_descripcion
from
		smn_base.smn_direccion
where
		upper(trim(smn_base.smn_direccion.dir_descripcion)) = upper(trim(${fld:dir_descripcion}))
