select
		smn_base.smn_titulo.tlo_descripcion
from
		smn_base.smn_titulo
where
		upper(smn_base.smn_titulo.tlo_descripcion) = upper(${fld:tlo_descripcion})
