select
		smn_base.smn_tipos_servicios.tsr_descripcion
from
		smn_base.smn_tipos_servicios
where
		upper(smn_base.smn_tipos_servicios.tsr_descripcion) = upper(${fld:tsr_descripcion})
