select
		smn_base.smn_tipo_variable.tva_descripcion
from
		smn_base.smn_tipo_variable
where
		upper(smn_base.smn_tipo_variable.tva_descripcion) = upper(${fld:tva_descripcion})
