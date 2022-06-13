select
		smn_base.smn_sectores_economicos.sec_codigo
from
		smn_base.smn_sectores_economicos
where
		upper(smn_base.smn_sectores_economicos.sec_codigo) = upper(${fld:sec_codigo})
