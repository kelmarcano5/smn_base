select
		smn_base.smn_marca.mar_descripcion
from
		smn_base.smn_marca
where
		upper(smn_base.smn_marca.mar_descripcion) = upper(${fld:mar_descripcion})
