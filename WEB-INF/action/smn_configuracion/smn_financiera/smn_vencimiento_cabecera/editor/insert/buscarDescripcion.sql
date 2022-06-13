select
		smn_base.smn_vencimiento_cabecera.tve_descripcion
from
		smn_base.smn_vencimiento_cabecera
where
		upper(smn_base.smn_vencimiento_cabecera.tve_descripcion) = upper(${fld:tve_descripcion})
