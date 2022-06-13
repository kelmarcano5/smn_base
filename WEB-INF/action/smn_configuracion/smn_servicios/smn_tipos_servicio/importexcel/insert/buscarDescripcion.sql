select
		smn_base.smn_tipos_servicios.tsr_descripcion
from
		smn_base.smn_tipos_servicios
where
		upper(trim(smn_base.smn_tipos_servicios.tsr_descripcion)) = upper(trim(${fld:tsr_descripcion}))
