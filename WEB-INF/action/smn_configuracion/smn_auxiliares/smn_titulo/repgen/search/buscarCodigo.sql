select
		smn_base.smn_titulo.tlo_codigo
from
		smn_base.smn_titulo
where
		upper(smn_base.smn_titulo.tlo_codigo) = upper(${fld:tlo_codigo})
