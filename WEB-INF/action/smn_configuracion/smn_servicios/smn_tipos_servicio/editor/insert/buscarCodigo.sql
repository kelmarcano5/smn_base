select
		smn_base.smn_tipos_servicios.tsr_codigo
from
		smn_base.smn_tipos_servicios
where
		upper(smn_base.smn_tipos_servicios.tsr_codigo) = upper(${fld:tsr_codigo})
