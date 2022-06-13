select
		smn_base.smn_tipos_servicios.tsr_codigo
from
		smn_base.smn_tipos_servicios
where
		upper(trim(smn_base.smn_tipos_servicios.tsr_codigo)) = upper(trim(${fld:tsr_codigo}))
