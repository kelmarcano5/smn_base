select
		smn_base.smn_estructura_organizacional.eor_codigo
from
		smn_base.smn_estructura_organizacional
where
		upper(smn_base.smn_estructura_organizacional.eor_codigo) = upper(${fld:eor_codigo})
