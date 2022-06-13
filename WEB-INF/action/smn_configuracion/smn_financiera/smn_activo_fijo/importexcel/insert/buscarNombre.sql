select
		smn_base.smn_activo_fijo.acf_nombre
from
		smn_base.smn_activo_fijo
where
		upper(smn_base.smn_activo_fijo.acf_nombre) = upper(${fld:acf_nombre})
