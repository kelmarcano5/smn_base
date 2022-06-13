select
		smn_base.smn_paises.pai_codigo_ddi
from
		smn_base.smn_paises
where
		upper(smn_base.smn_paises.pai_codigo_ddi) = upper(${fld:pai_codigo_ddi})
