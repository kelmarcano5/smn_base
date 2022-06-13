select
		smn_base.smn_tipo_contribuyente.tco_descripcion
from
		smn_base.smn_tipo_contribuyente
where
		upper(smn_base.smn_tipo_contribuyente.tco_descripcion) = upper(${fld:tco_descripcion})
