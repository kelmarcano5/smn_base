select
		smn_base.smn_paises.pai_nombre_largo
from
		smn_base.smn_paises
where
		upper(smn_base.smn_paises.pai_nombre_largo) = upper(${fld:pai_nombre_largo})
