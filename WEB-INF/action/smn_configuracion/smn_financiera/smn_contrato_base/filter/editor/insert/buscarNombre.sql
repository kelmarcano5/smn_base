select
		smn_base.smn_contrato_base.ctr_nombre
from
		smn_base.smn_contrato_base
where
		upper(smn_base.smn_contrato_base.ctr_nombre) = upper(${fld:ctr_nombre})
