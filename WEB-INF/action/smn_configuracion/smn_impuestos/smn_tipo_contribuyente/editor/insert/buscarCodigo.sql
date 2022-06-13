select
		smn_base.smn_tipo_contribuyente.tco_codigo
from
		smn_base.smn_tipo_contribuyente
where
		upper(smn_base.smn_tipo_contribuyente.tco_codigo) = upper(${fld:tco_codigo})
