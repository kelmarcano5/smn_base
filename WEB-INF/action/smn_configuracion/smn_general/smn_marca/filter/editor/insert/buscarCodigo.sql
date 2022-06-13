select
		smn_base.smn_marca.mar_codigo
from
		smn_base.smn_marca
where
		upper(smn_base.smn_marca.mar_codigo) = upper(${fld:mar_codigo})
