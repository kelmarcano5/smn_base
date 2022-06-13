select
		smn_base.smn_paises.pai_nombre_largo
from
		smn_base.smn_paises
where
		upper(trim(smn_base.smn_paises.pai_nombre_largo)) = upper(trim(${fld:pai_nombre_largo}))
