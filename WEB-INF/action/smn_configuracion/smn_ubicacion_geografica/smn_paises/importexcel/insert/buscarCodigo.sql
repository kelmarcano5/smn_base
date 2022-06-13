select
		smn_base.smn_paises.pai_codigo_ddi
from
		smn_base.smn_paises
where
		upper(trim(smn_base.smn_paises.pai_codigo_ddi)) = upper(trim(${fld:pai_codigo_ddi}))
