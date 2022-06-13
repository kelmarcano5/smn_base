select
		smn_base.smn_parroquias.prr_nombre_largo
from
		smn_base.smn_parroquias
where
		upper(smn_base.smn_parroquias.prr_nombre_largo) = upper(${fld:prr_nombre_largo})
