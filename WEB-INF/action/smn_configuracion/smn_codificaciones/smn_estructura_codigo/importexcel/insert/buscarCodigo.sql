select
		smn_base.smn_estructura_codigo.eco_codigo
from
		smn_base.smn_estructura_codigo
where
		upper(smn_base.smn_estructura_codigo.eco_codigo) = upper(${fld:eco_codigo})
