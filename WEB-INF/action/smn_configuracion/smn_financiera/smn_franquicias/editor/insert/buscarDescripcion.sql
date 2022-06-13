select
		smn_base.smn_franquicias.fra_descripcion
from
		smn_base.smn_franquicias
where
		upper(smn_base.smn_franquicias.fra_descripcion) = upper(${fld:fra_descripcion})
