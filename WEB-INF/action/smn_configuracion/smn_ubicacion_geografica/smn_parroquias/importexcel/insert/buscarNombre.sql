select
		smn_base.smn_parroquias.prr_nombre_largo
from
		smn_base.smn_parroquias
where
		upper(trim(smn_base.smn_parroquias.prr_nombre_largo)) = upper(trim(${fld:prr_nombre_largo}))
