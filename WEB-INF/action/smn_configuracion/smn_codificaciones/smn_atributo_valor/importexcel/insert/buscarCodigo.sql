select
		smn_base.smn_atributo_valor.atv_codigo
from
		smn_base.smn_atributo_valor
where
		upper(smn_base.smn_atributo_valor.atv_codigo) = upper(${fld:atv_codigo})
