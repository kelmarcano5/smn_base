select
		smn_base.smn_corporaciones.crp_nombre
from
		smn_base.smn_corporaciones
where
		upper(smn_base.smn_corporaciones.crp_nombre) = upper(${fld:crp_nombre})
