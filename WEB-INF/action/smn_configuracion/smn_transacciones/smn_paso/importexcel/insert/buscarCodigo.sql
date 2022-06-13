select
		smn_base.smn_paso.pas_codigo
from
		smn_base.smn_paso
where
		upper(smn_base.smn_paso.pas_codigo) = upper(${fld:pas_codigo})
