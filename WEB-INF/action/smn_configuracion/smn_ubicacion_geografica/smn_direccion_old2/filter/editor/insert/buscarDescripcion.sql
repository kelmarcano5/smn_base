select
		smn_base.smn_direccion.dir_descripcion
from
		smn_base.smn_direccion
where
		upper(smn_base.smn_direccion.dir_descripcion) = upper(${fld:dir_descripcion})
