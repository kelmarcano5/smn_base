select
		smn_base.smn_modelo.mod_descripcion
from
		smn_base.smn_modelo
where
		upper(smn_base.smn_modelo.mod_descripcion) = upper(${fld:mod_descripcion})
