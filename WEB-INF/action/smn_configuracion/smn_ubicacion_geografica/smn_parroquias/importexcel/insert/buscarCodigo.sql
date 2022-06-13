select
		smn_base.smn_parroquias.prr_codigo
from
		smn_base.smn_parroquias
where
		upper(trim(smn_base.smn_parroquias.prr_codigo)) = upper(trim(${fld:prr_codigo}))
