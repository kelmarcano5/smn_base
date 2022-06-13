select
		smn_base.smn_parroquias.prr_codigo
from
		smn_base.smn_parroquias
where
		upper(smn_base.smn_parroquias.prr_codigo) = upper(${fld:prr_codigo})
