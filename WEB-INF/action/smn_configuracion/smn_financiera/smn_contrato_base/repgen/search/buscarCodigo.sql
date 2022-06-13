select
		smn_base.smn_contrato_base.ctr_codigo
from
		smn_base.smn_contrato_base
where
		upper(smn_base.smn_contrato_base.ctr_codigo) = upper(${fld:ctr_codigo})
